(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_87568 0)) ((($Memory_87568 (|domain#$Memory_87568| |T@[Int]Bool|) (|contents#$Memory_87568| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_135313 0)) ((($Memory_135313 (|domain#$Memory_135313| |T@[Int]Bool|) (|contents#$Memory_135313| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_126830 0)) ((($Memory_126830 (|domain#$Memory_126830| |T@[Int]Bool|) (|contents#$Memory_126830| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_124805 0)) ((($Memory_124805 (|domain#$Memory_124805| |T@[Int]Bool|) (|contents#$Memory_124805| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_125085 0)) ((($Memory_125085 (|domain#$Memory_125085| |T@[Int]Bool|) (|contents#$Memory_125085| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_124772 0)) ((($Memory_124772 (|domain#$Memory_124772| |T@[Int]Bool|) (|contents#$Memory_124772| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_124557 0)) ((($Memory_124557 (|domain#$Memory_124557| |T@[Int]Bool|) (|contents#$Memory_124557| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_122067 0)) ((($Memory_122067 (|domain#$Memory_122067| |T@[Int]Bool|) (|contents#$Memory_122067| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_122003 0)) ((($Memory_122003 (|domain#$Memory_122003| |T@[Int]Bool|) (|contents#$Memory_122003| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_116493 0)) ((($Memory_116493 (|domain#$Memory_116493| |T@[Int]Bool|) (|contents#$Memory_116493| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_116429 0)) ((($Memory_116429 (|domain#$Memory_116429| |T@[Int]Bool|) (|contents#$Memory_116429| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_116117 0)) ((($Memory_116117 (|domain#$Memory_116117| |T@[Int]Bool|) (|contents#$Memory_116117| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112996 0)) ((($Memory_112996 (|domain#$Memory_112996| |T@[Int]Bool|) (|contents#$Memory_112996| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112777 0)) ((($Memory_112777 (|domain#$Memory_112777| |T@[Int]Bool|) (|contents#$Memory_112777| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126619 0)) ((($Memory_126619 (|domain#$Memory_126619| |T@[Int]Bool|) (|contents#$Memory_126619| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105732 0)) ((($Memory_105732 (|domain#$Memory_105732| |T@[Int]Bool|) (|contents#$Memory_105732| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105645 0)) ((($Memory_105645 (|domain#$Memory_105645| |T@[Int]Bool|) (|contents#$Memory_105645| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102442 0)) ((($Memory_102442 (|domain#$Memory_102442| |T@[Int]Bool|) (|contents#$Memory_102442| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102355 0)) ((($Memory_102355 (|domain#$Memory_102355| |T@[Int]Bool|) (|contents#$Memory_102355| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105996 0)) ((($Memory_105996 (|domain#$Memory_105996| |T@[Int]Bool|) (|contents#$Memory_105996| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_114829 0)) ((($Memory_114829 (|domain#$Memory_114829| |T@[Int]Bool|) (|contents#$Memory_114829| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106322 0)) ((($Memory_106322 (|domain#$Memory_106322| |T@[Int]Bool|) (|contents#$Memory_106322| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105905 0)) ((($Memory_105905 (|domain#$Memory_105905| |T@[Int]Bool|) (|contents#$Memory_105905| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_120937 0)) ((($Memory_120937 (|domain#$Memory_120937| |T@[Int]Bool|) (|contents#$Memory_120937| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106223 0)) ((($Memory_106223 (|domain#$Memory_106223| |T@[Int]Bool|) (|contents#$Memory_106223| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102057 0)) ((($Memory_102057 (|domain#$Memory_102057| |T@[Int]Bool|) (|contents#$Memory_102057| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101993 0)) ((($Memory_101993 (|domain#$Memory_101993| |T@[Int]Bool|) (|contents#$Memory_101993| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_98066 0)) ((($Memory_98066 (|domain#$Memory_98066| |T@[Int]Bool|) (|contents#$Memory_98066| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_97979 0)) ((($Memory_97979 (|domain#$Memory_97979| |T@[Int]Bool|) (|contents#$Memory_97979| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_97892 0)) ((($Memory_97892 (|domain#$Memory_97892| |T@[Int]Bool|) (|contents#$Memory_97892| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_97805 0)) ((($Memory_97805 (|domain#$Memory_97805| |T@[Int]Bool|) (|contents#$Memory_97805| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_97718 0)) ((($Memory_97718 (|domain#$Memory_97718| |T@[Int]Bool|) (|contents#$Memory_97718| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_98331 0)) ((($Memory_98331 (|domain#$Memory_98331| |T@[Int]Bool|) (|contents#$Memory_98331| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_96844 0)) ((($Memory_96844 (|domain#$Memory_96844| |T@[Int]Bool|) (|contents#$Memory_96844| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_96910 0)) ((($Memory_96910 (|domain#$Memory_96910| |T@[Int]Bool|) (|contents#$Memory_96910| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96763 0)) ((($Memory_96763 (|domain#$Memory_96763| |T@[Int]Bool|) (|contents#$Memory_96763| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96682 0)) ((($Memory_96682 (|domain#$Memory_96682| |T@[Int]Bool|) (|contents#$Memory_96682| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96601 0)) ((($Memory_96601 (|domain#$Memory_96601| |T@[Int]Bool|) (|contents#$Memory_96601| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96520 0)) ((($Memory_96520 (|domain#$Memory_96520| |T@[Int]Bool|) (|contents#$Memory_96520| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_96406 0)) ((($Memory_96406 (|domain#$Memory_96406| |T@[Int]Bool|) (|contents#$Memory_96406| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_118262 0)) ((($Memory_118262 (|domain#$Memory_118262| |T@[Int]Bool|) (|contents#$Memory_118262| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_125726 0)) ((($Memory_125726 (|domain#$Memory_125726| |T@[Int]Bool|) (|contents#$Memory_125726| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96439 0)) ((($Memory_96439 (|domain#$Memory_96439| |T@[Int]Bool|) (|contents#$Memory_96439| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_95895 0)) ((($Memory_95895 (|domain#$Memory_95895| |T@[Int]Bool|) (|contents#$Memory_95895| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_95058 0)) ((($Memory_95058 (|domain#$Memory_95058| |T@[Int]Bool|) (|contents#$Memory_95058| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_94789 0)) ((($Memory_94789 (|domain#$Memory_94789| |T@[Int]Bool|) (|contents#$Memory_94789| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_94320 0)) ((($Memory_94320 (|domain#$Memory_94320| |T@[Int]Bool|) (|contents#$Memory_94320| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_65491 0)) (((Multiset_65491 (|v#Multiset_65491| |T@[$EventRep]Int|) (|l#Multiset_65491| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_65491| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_65491|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_133414 0)) ((($Mutation_133414 (|l#$Mutation_133414| T@$Location) (|p#$Mutation_133414| (Seq Int)) (|v#$Mutation_133414| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_127657 0)) ((($Mutation_127657 (|l#$Mutation_127657| T@$Location) (|p#$Mutation_127657| (Seq Int)) (|v#$Mutation_127657| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_127613 0)) ((($Mutation_127613 (|l#$Mutation_127613| T@$Location) (|p#$Mutation_127613| (Seq Int)) (|v#$Mutation_127613| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_116893 0)) ((($Mutation_116893 (|l#$Mutation_116893| T@$Location) (|p#$Mutation_116893| (Seq Int)) (|v#$Mutation_116893| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_31525 0)) ((($Mutation_31525 (|l#$Mutation_31525| T@$Location) (|p#$Mutation_31525| (Seq Int)) (|v#$Mutation_31525| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_111511 0)) ((($Mutation_111511 (|l#$Mutation_111511| T@$Location) (|p#$Mutation_111511| (Seq Int)) (|v#$Mutation_111511| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_100746 0)) ((($Mutation_100746 (|l#$Mutation_100746| T@$Location) (|p#$Mutation_100746| (Seq Int)) (|v#$Mutation_100746| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_88196 0)) ((($Mutation_88196 (|l#$Mutation_88196| T@$Location) (|p#$Mutation_88196| (Seq Int)) (|v#$Mutation_88196| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_83564 0)) ((($Mutation_83564 (|l#$Mutation_83564| T@$Location) (|p#$Mutation_83564| (Seq Int)) (|v#$Mutation_83564| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_82818 0)) ((($Mutation_82818 (|l#$Mutation_82818| T@$Location) (|p#$Mutation_82818| (Seq Int)) (|v#$Mutation_82818| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_81378 0)) ((($Mutation_81378 (|l#$Mutation_81378| T@$Location) (|p#$Mutation_81378| (Seq Int)) (|v#$Mutation_81378| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_80632 0)) ((($Mutation_80632 (|l#$Mutation_80632| T@$Location) (|p#$Mutation_80632| (Seq Int)) (|v#$Mutation_80632| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_79192 0)) ((($Mutation_79192 (|l#$Mutation_79192| T@$Location) (|p#$Mutation_79192| (Seq Int)) (|v#$Mutation_79192| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_78446 0)) ((($Mutation_78446 (|l#$Mutation_78446| T@$Location) (|p#$Mutation_78446| (Seq Int)) (|v#$Mutation_78446| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_77006 0)) ((($Mutation_77006 (|l#$Mutation_77006| T@$Location) (|p#$Mutation_77006| (Seq Int)) (|v#$Mutation_77006| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_76260 0)) ((($Mutation_76260 (|l#$Mutation_76260| T@$Location) (|p#$Mutation_76260| (Seq Int)) (|v#$Mutation_76260| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_74820 0)) ((($Mutation_74820 (|l#$Mutation_74820| T@$Location) (|p#$Mutation_74820| (Seq Int)) (|v#$Mutation_74820| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_74074 0)) ((($Mutation_74074 (|l#$Mutation_74074| T@$Location) (|p#$Mutation_74074| (Seq Int)) (|v#$Mutation_74074| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_72634 0)) ((($Mutation_72634 (|l#$Mutation_72634| T@$Location) (|p#$Mutation_72634| (Seq Int)) (|v#$Mutation_72634| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_71888 0)) ((($Mutation_71888 (|l#$Mutation_71888| T@$Location) (|p#$Mutation_71888| (Seq Int)) (|v#$Mutation_71888| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_70448 0)) ((($Mutation_70448 (|l#$Mutation_70448| T@$Location) (|p#$Mutation_70448| (Seq Int)) (|v#$Mutation_70448| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_69702 0)) ((($Mutation_69702 (|l#$Mutation_69702| T@$Location) (|p#$Mutation_69702| (Seq Int)) (|v#$Mutation_69702| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_68224 0)) ((($Mutation_68224 (|l#$Mutation_68224| T@$Location) (|p#$Mutation_68224| (Seq Int)) (|v#$Mutation_68224| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_67478 0)) ((($Mutation_67478 (|l#$Mutation_67478| T@$Location) (|p#$Mutation_67478| (Seq Int)) (|v#$Mutation_67478| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_65491_| (|T@[$1_Event_EventHandle]Multiset_65491| T@$1_Event_EventHandle) T@Multiset_65491)
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
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_59443 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_58458 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_58655 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_58852 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_59640 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_59246 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_59049 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_58261 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_65491| |T@[$1_Event_EventHandle]Multiset_65491|) |T@[$1_Event_EventHandle]Multiset_65491|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RecoveryAddressandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RecoveryAddressandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RecoveryAddressandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RecoveryAddressandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RecoveryAddressandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RecoveryAddressandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddressandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddressandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |RecoveryAddressandybpl.590:13|
 :skolemid |15|
))))
 :qid |RecoveryAddressandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |RecoveryAddressandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |RecoveryAddressandybpl.603:17|
 :skolemid |18|
)))))
 :qid |RecoveryAddressandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |RecoveryAddressandybpl.770:13|
 :skolemid |20|
))))
 :qid |RecoveryAddressandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |RecoveryAddressandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |RecoveryAddressandybpl.783:17|
 :skolemid |23|
)))))
 :qid |RecoveryAddressandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |RecoveryAddressandybpl.950:13|
 :skolemid |25|
))))
 :qid |RecoveryAddressandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |RecoveryAddressandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |RecoveryAddressandybpl.963:17|
 :skolemid |28|
)))))
 :qid |RecoveryAddressandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |RecoveryAddressandybpl.1130:13|
 :skolemid |30|
))))
 :qid |RecoveryAddressandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |RecoveryAddressandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |RecoveryAddressandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |RecoveryAddressandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |RecoveryAddressandybpl.1310:13|
 :skolemid |35|
))))
 :qid |RecoveryAddressandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |RecoveryAddressandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |RecoveryAddressandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |RecoveryAddressandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |RecoveryAddressandybpl.1490:13|
 :skolemid |40|
))))
 :qid |RecoveryAddressandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |RecoveryAddressandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |RecoveryAddressandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |RecoveryAddressandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |RecoveryAddressandybpl.1670:13|
 :skolemid |45|
))))
 :qid |RecoveryAddressandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |RecoveryAddressandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |RecoveryAddressandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |RecoveryAddressandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |RecoveryAddressandybpl.1850:13|
 :skolemid |50|
))))
 :qid |RecoveryAddressandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |RecoveryAddressandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |RecoveryAddressandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |RecoveryAddressandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |RecoveryAddressandybpl.2030:13|
 :skolemid |55|
))))
 :qid |RecoveryAddressandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |RecoveryAddressandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |RecoveryAddressandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |RecoveryAddressandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |RecoveryAddressandybpl.2210:13|
 :skolemid |60|
))))
 :qid |RecoveryAddressandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |RecoveryAddressandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |RecoveryAddressandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |RecoveryAddressandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |RecoveryAddressandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |RecoveryAddressandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RecoveryAddressandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RecoveryAddressandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_65491| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_65491| stream) v@@24) 0)
 :qid |RecoveryAddressandybpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RecoveryAddressandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |RecoveryAddressandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RecoveryAddressandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |RecoveryAddressandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RecoveryAddressandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |RecoveryAddressandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RecoveryAddressandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |RecoveryAddressandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RecoveryAddressandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |RecoveryAddressandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RecoveryAddressandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |RecoveryAddressandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RecoveryAddressandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |RecoveryAddressandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RecoveryAddressandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |RecoveryAddressandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RecoveryAddressandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |RecoveryAddressandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |RecoveryAddressandybpl.3083:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |RecoveryAddressandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |RecoveryAddressandybpl.3139:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |RecoveryAddressandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |RecoveryAddressandybpl.3195:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |RecoveryAddressandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |RecoveryAddressandybpl.3251:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |RecoveryAddressandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |RecoveryAddressandybpl.3307:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |RecoveryAddressandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |RecoveryAddressandybpl.3363:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |RecoveryAddressandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |RecoveryAddressandybpl.3419:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |RecoveryAddressandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |RecoveryAddressandybpl.3475:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |RecoveryAddressandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |RecoveryAddressandybpl.3560:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |RecoveryAddressandybpl.3727:36|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |RecoveryAddressandybpl.3746:71|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |RecoveryAddressandybpl.3883:46|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |RecoveryAddressandybpl.3896:64|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |RecoveryAddressandybpl.3909:75|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |RecoveryAddressandybpl.3922:72|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |RecoveryAddressandybpl.3951:55|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |RecoveryAddressandybpl.3973:46|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |RecoveryAddressandybpl.3991:49|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |RecoveryAddressandybpl.4066:71|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |RecoveryAddressandybpl.4080:91|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |RecoveryAddressandybpl.4094:113|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |RecoveryAddressandybpl.4108:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |RecoveryAddressandybpl.4122:73|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |RecoveryAddressandybpl.4142:48|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |RecoveryAddressandybpl.4158:57|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |RecoveryAddressandybpl.4172:83|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |RecoveryAddressandybpl.4186:103|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |RecoveryAddressandybpl.4200:125|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |RecoveryAddressandybpl.4214:87|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |RecoveryAddressandybpl.4228:85|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |RecoveryAddressandybpl.4242:48|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |RecoveryAddressandybpl.4263:45|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |RecoveryAddressandybpl.4277:51|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |RecoveryAddressandybpl.4300:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |RecoveryAddressandybpl.4606:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |RecoveryAddressandybpl.4619:65|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |RecoveryAddressandybpl.5123:45|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |RecoveryAddressandybpl.5136:45|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |RecoveryAddressandybpl.5149:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |RecoveryAddressandybpl.5163:55|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |RecoveryAddressandybpl.5183:38|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |RecoveryAddressandybpl.5204:44|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |RecoveryAddressandybpl.5255:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |RecoveryAddressandybpl.5317:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |RecoveryAddressandybpl.5343:55|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |RecoveryAddressandybpl.5357:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |RecoveryAddressandybpl.5374:38|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |RecoveryAddressandybpl.5388:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |RecoveryAddressandybpl.5402:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |RecoveryAddressandybpl.5422:41|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |RecoveryAddressandybpl.5437:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |RecoveryAddressandybpl.5451:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |RecoveryAddressandybpl.5468:60|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |RecoveryAddressandybpl.5485:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |RecoveryAddressandybpl.5502:57|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |RecoveryAddressandybpl.7703:68|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |RecoveryAddressandybpl.7725:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |RecoveryAddressandybpl.7751:66|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |RecoveryAddressandybpl.8084:31|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |RecoveryAddressandybpl.8428:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |RecoveryAddressandybpl.8447:35|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |RecoveryAddressandybpl.8868:45|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |RecoveryAddressandybpl.8887:50|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |RecoveryAddressandybpl.8902:52|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@55) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@55)))
 :qid |RecoveryAddressandybpl.8946:38|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@56) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@56)))
 :qid |RecoveryAddressandybpl.8960:39|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@56))
)))
(assert (forall ((s@@57 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@57)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@57)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@57))))
 :qid |RecoveryAddressandybpl.9950:65|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@58)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@58)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@58))))
 :qid |RecoveryAddressandybpl.10335:60|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@59))))
 :qid |RecoveryAddressandybpl.10352:66|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@60)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@60)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@60))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@60))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@60))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@60))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@60))))
 :qid |RecoveryAddressandybpl.10381:50|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@61) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@61)))
 :qid |RecoveryAddressandybpl.10400:45|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@62)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@62)) true))
 :qid |RecoveryAddressandybpl.10719:87|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@63) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@63)))
 :qid |RecoveryAddressandybpl.10931:47|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@64)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@64)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@64))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@64))))
 :qid |RecoveryAddressandybpl.10951:58|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@65) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@65)))
 :qid |RecoveryAddressandybpl.10966:39|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@66)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@66)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@66))))
 :qid |RecoveryAddressandybpl.10988:58|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@67)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@67)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@67))))
 :qid |RecoveryAddressandybpl.11005:58|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@68) true)
 :qid |RecoveryAddressandybpl.11020:51|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@69))))
 :qid |RecoveryAddressandybpl.11037:60|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@70)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@70)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@70))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@70))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@70))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@70))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@70))))
 :qid |RecoveryAddressandybpl.11345:47|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@71)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@71))))
 :qid |RecoveryAddressandybpl.11367:63|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@72) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@72)))
 :qid |RecoveryAddressandybpl.11382:57|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@73)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@73))))
 :qid |RecoveryAddressandybpl.11398:54|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@74) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@74)))
 :qid |RecoveryAddressandybpl.11412:55|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@75) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@75)))
 :qid |RecoveryAddressandybpl.11426:57|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@76)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@76))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@76))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@76))))
 :qid |RecoveryAddressandybpl.11448:56|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@77)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@77)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@77))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@77))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@77))))
 :qid |RecoveryAddressandybpl.11473:52|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@78)))
 :qid |RecoveryAddressandybpl.11489:54|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@78))
)))
(assert (forall ((s@@79 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@79) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@79)))
 :qid |RecoveryAddressandybpl.12399:55|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@80))))
 :qid |RecoveryAddressandybpl.13829:47|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@81)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@81))))
 :qid |RecoveryAddressandybpl.13853:47|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@82)))
 :qid |RecoveryAddressandybpl.14094:49|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@83)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@83))))
 :qid |RecoveryAddressandybpl.14137:49|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@84)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@84))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@84))))
 :qid |RecoveryAddressandybpl.14166:48|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@85)))
 :qid |RecoveryAddressandybpl.14461:47|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_59443 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59443 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_58458 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58458 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_58655 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58655 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_58852 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58852 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_59640 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59640 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_59246 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59246 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_59049 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59049 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_58261 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |RecoveryAddressandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |RecoveryAddressandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58261 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |RecoveryAddressandybpl.245:54|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_65491|) (|l#1| |T@[$1_Event_EventHandle]Multiset_65491|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_65491| (|Select__T@[$1_Event_EventHandle]Multiset_65491_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_65491| (|Select__T@[$1_Event_EventHandle]Multiset_65491_| |l#1| handle@@0))))
(Multiset_65491 (|lambda#3| (|v#Multiset_65491| (|Select__T@[$1_Event_EventHandle]Multiset_65491_| |l#0@@0| handle@@0)) (|v#Multiset_65491| (|Select__T@[$1_Event_EventHandle]Multiset_65491_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RecoveryAddressandybpl.2548:13|
 :skolemid |297|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |RecoveryAddressandybpl.124:29|
 :skolemid |298|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_118262)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_116493)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_116429)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_116493)
(declare-fun $t11 () Int)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_116429)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_94789)
(declare-fun $t13 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_116429)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t28@1 () T@$Mutation_12329)
(declare-fun $t28@0 () T@$Mutation_12329)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t27@2 () T@$Mutation_116893)
(declare-fun $t27@1 () T@$Mutation_116893)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t23 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t33 () Int)
(declare-fun $t29@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_116893)
(declare-fun $t27@0 () T@$Mutation_116893)
(declare-fun $abort_code@0 () Int)
(declare-fun $t24 () Bool)
(declare-fun $t26 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t17 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t16 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_12329)
(declare-fun $t28 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_child_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 204793) (let ((anon37_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 150644) (- 0 206249)) (forall ((recovery_addr Int) ) (!  (=> (|$IsValid'address'| recovery_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@0) recovery_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory@1) recovery_addr))))
 :qid |RecoveryAddressandybpl.9445:15|
 :skolemid |170|
))) (=> (forall ((recovery_addr@@0 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@0) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@0) recovery_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory@1) recovery_addr@@0))))
 :qid |RecoveryAddressandybpl.9445:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 150644) (- 0 206278)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t11)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t11))) (and (=> (= (ControlFlow 0 150644) (- 0 206289)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12))) (and (=> (= (ControlFlow 0 150644) (- 0 206301)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (and (=> (= (ControlFlow 0 150644) (- 0 206319)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t13))) (and (=> (= (ControlFlow 0 150644) (- 0 206331)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t13)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t13)) 5))) (and (=> (= (ControlFlow 0 150644) (- 0 206349)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t11))) (and (=> (= (ControlFlow 0 150644) (- 0 206361)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t11)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t11)) 6))) (and (=> (= (ControlFlow 0 150644) (- 0 206379)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory@0) _$t0)) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) _$t0)) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory@0) _$t0)) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) _$t0)) 1)) (and (=> (= (ControlFlow 0 150644) (- 0 206400)) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory@1) $t11)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory@1) $t11) (=> (= (ControlFlow 0 150644) (- 0 206408)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@0) $t11) $t11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory@1) $t11))) _$t0)))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 149899) (- 0 206033)) (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t11)) 6)))) (=> (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t11)) 6))) (=> (= (ControlFlow 0 149899) (- 0 206111)) (or (or (or (or (or (or (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t11)) (= 6 $t16@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)) (= 7 $t16@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536) (= 8 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t13)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t13)) 5)) (= 3 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t11)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t11)) 6)) (= 3 $t16@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t16@0 $abort_code@3) (= (ControlFlow 0 150658) 149899))) L7_correct)))
(let ((anon36_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 150708) 150658) anon37_Then_correct) (=> (= (ControlFlow 0 150708) 150644) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) _$t1) (= (ControlFlow 0 150706) 150708)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) _$t1)) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_116429 (|Store__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) _$t1 true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) _$t1 $t37@0))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 150457) 150658) anon37_Then_correct) (=> (= (ControlFlow 0 150457) 150644) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t28@1 ($Mutation_12329 (|l#$Mutation_12329| $t28@0) (|p#$Mutation_12329| $t28@0) inline$$AddU64$0$dst@2)) (= $t27@2 ($Mutation_116893 (|l#$Mutation_116893| $t27@1) (|p#$Mutation_116893| $t27@1) ($1_VASP_ParentVASP (|v#$Mutation_12329| $t28@1))))) (and (forall ((recovery_addr@@1 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) recovery_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@1))))
 :qid |RecoveryAddressandybpl.9405:20|
 :skolemid |167|
)) (= $1_VASP_ParentVASP_$memory@0 ($Memory_116493 (|Store__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_116893| $t27@2)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_116893| $t27@2)) (|v#$Mutation_116893| $t27@2)))))) (and (=> (= (ControlFlow 0 150439) (- 0 205861)) (forall ((recovery_addr@@2 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@2) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@0) recovery_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@2))))
 :qid |RecoveryAddressandybpl.9416:15|
 :skolemid |168|
))) (=> (forall ((recovery_addr@@3 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@3) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@0) recovery_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@3))))
 :qid |RecoveryAddressandybpl.9416:15|
 :skolemid |168|
)) (=> (and (= $t37@0 ($1_VASP_ChildVASP $t23)) (forall ((recovery_addr@@4 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@4) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@0) recovery_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@4))))
 :qid |RecoveryAddressandybpl.9425:20|
 :skolemid |169|
))) (and (=> (= (ControlFlow 0 150439) 150706) anon36_Then_correct) (=> (= (ControlFlow 0 150439) 150457) anon36_Else_correct)))))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t16@0 $abort_code@2) (= (ControlFlow 0 150722) 149899))) L7_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 150302) 150722) anon35_Then_correct) (=> (= (ControlFlow 0 150302) 150439) anon35_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t34@0 1) $MAX_U64) (= (ControlFlow 0 150300) 150302)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t34@0 1)) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 150248) 150722) anon35_Then_correct) (=> (= (ControlFlow 0 150248) 150439) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (= $t34@0 (|v#$Mutation_12329| $t28@0)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 150308) 150300) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 150308) 150248) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t33 $t33)) (and (= $t16@0 $t33) (= (ControlFlow 0 150141) 149899))) L7_correct)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 8)) (and (= $t33 $t33) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 150125) 150308) anon34_Then_correct) (=> (= (ControlFlow 0 150125) 150141) anon34_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t29@0 65536)) (= (ControlFlow 0 150089) 150125)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t28@0 ($Mutation_12329 (|l#$Mutation_116893| $t27@1) (seq.++ (|p#$Mutation_116893| $t27@1) (seq.unit 0)) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_116893| $t27@1)))) (= |$temp_0'u64'@0| (|v#$Mutation_12329| $t28@0))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= $t29@0 (|v#$Mutation_12329| $t28@0))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 150095) 150089))) inline$$Lt$0$anon0_correct)))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t16@0 $abort_code@1) (= (ControlFlow 0 150736) 149899))) L7_correct)))
(let ((anon32_Then$1_correct  (=> (= $t27@1 $t27) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150788) 150736) anon33_Then_correct) (=> (= (ControlFlow 0 150788) 150095) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t23)) (= (ControlFlow 0 150786) 150788)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t23) (=> (and (and (= $t27@0 ($Mutation_116893 ($Global $t23) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $t23))) (= $t27@1 $t27@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 150007) 150736) anon33_Then_correct) (=> (= (ControlFlow 0 150007) 150095) anon33_Else_correct))))))
(let ((anon31_Then_correct  (=> $t24 (and (=> (= (ControlFlow 0 149985) 150786) anon32_Then_correct) (=> (= (ControlFlow 0 149985) 150007) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (and (not $t24) (= $t26 $t26)) (and (= $t16@0 $t26) (= (ControlFlow 0 149981) 149899))) L7_correct)))
(let ((anon30_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'address'| $t23)) (=> (and (and (and (= $t23 _$t0) (= $t23 $t23)) (and (= $t24 (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t23)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t26) (= $t26 7)) (and (= $t26 $t26) (= $t24 $t24)))) (and (=> (= (ControlFlow 0 149965) 149985) anon31_Then_correct) (=> (= (ControlFlow 0 149965) 149981) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t22 $t22)) (and (= $t16@0 $t22) (= (ControlFlow 0 149663) 149899))) L7_correct)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t22) (= $t22 6)) (and (= $t22 $t22) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 149647) 149965) anon30_Then_correct) (=> (= (ControlFlow 0 149647) 149663) anon30_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t19)) (= (ControlFlow 0 149611) 149647)) anon29_Else$1_correct)))
(let ((anon29_Else_correct  (=> (and (not $t17) (|$IsValid'address'| $t18)) (=> (and (and (= $t18 _$t1) (= $t18 $t18)) (and (= $t19  (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t18) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t18))) (= (ControlFlow 0 149617) 149611))) inline$$Not$0$anon0_correct))))
(let ((anon29_Then_correct  (=> $t17 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) _$t1)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) _$t1)) 6)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 150844) 149899))) L7_correct))))
(let ((anon28_Else_correct  (=> (and (not $t15) (= $t17  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) _$t1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) _$t1)) 6))))) (and (=> (= (ControlFlow 0 149537) 150844) anon29_Then_correct) (=> (= (ControlFlow 0 149537) 149617) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t14)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t14)) 5)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 150896) 149899))) L7_correct))))
(let ((anon0$1_correct  (=> (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |RecoveryAddressandybpl.9033:20|
 :skolemid |163|
)) (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |RecoveryAddressandybpl.9042:20|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) $a_0@@0)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@0))
 :qid |RecoveryAddressandybpl.9046:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) $a_0@@0))
)))) (=> (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $a_0@@1)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@1))
 :qid |RecoveryAddressandybpl.9050:20|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $a_0@@1))
)) (= $t11 _$t1)) (and (= $t12 _$t0) (= $t13 _$t0))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t14 _$t0) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t14)) 5))))))) (and (=> (= (ControlFlow 0 149497) 150896) anon28_Then_correct) (=> (= (ControlFlow 0 149497) 149537) anon28_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_65491| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_65491| stream@@0) v@@35) 0)
 :qid |RecoveryAddressandybpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149286) 149497)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_12329| $t3)) 0) (= (seq.len (|p#$Mutation_116893| $t27)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t28)) 0) (= (ControlFlow 0 149296) 149286))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 204793) 149296) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_116493)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_94320)
(declare-fun $t6 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun _$t0@@0 () Int)
(declare-fun $1_VASP_ParentVASP_$memory@0@@0 () T@$Memory_116493)
(declare-fun $t20@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t13@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t8 () Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_parent_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 206600) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 152008) (- 0 207588)) (forall ((recovery_addr@@5 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@5) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@1) recovery_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@5))))
 :qid |RecoveryAddressandybpl.9847:15|
 :skolemid |177|
))) (=> (forall ((recovery_addr@@6 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@6) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@1) recovery_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@6))))
 :qid |RecoveryAddressandybpl.9847:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 152008) (- 0 207618)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 152008) (- 0 207628)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 152008) (- 0 207640)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 152008) (- 0 207658)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 152008) (- 0 207672)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 152008) (- 0 207684)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t7)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t7)) 5))) (and (=> (= (ControlFlow 0 152008) (- 0 207702)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t5)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t5))) (and (=> (= (ControlFlow 0 152008) (- 0 207713)) (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@1) $t5)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory@1) $t5) (and (=> (= (ControlFlow 0 152008) (- 0 207721)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory@1) $t5)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory@1) $t5)) 0) (and (=> (= (ControlFlow 0 152008) (- 0 207733)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (= (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) a)))
 :qid |RecoveryAddressandybpl.9901:15|
 :skolemid |178|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) a@@0)))
 :qid |RecoveryAddressandybpl.9901:15|
 :skolemid |178|
)) (=> (= (ControlFlow 0 152008) (- 0 207758)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory@1) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |RecoveryAddressandybpl.9906:15|
 :skolemid |179|
))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 151736) (- 0 207384)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t5)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t5))) (=> (= (ControlFlow 0 151736) (- 0 207456)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t9@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t7)) 5)) (= 3 $t9@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t5)) (= 6 $t9@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t9@0 $abort_code@1@@0) (= (ControlFlow 0 152022) 151736))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 152072) 152022) anon21_Then_correct) (=> (= (ControlFlow 0 152072) 152008) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) _$t0@@0) (= (ControlFlow 0 152070) 152072)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) _$t0@@0)) (=> (and (and (= $1_VASP_ParentVASP_$memory@0@@0 ($Memory_116493 (|Store__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) _$t0@@0 true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) _$t0@@0 $t20@0))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 151797) 152022) anon21_Then_correct) (=> (= (ControlFlow 0 151797) 152008) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> (and (and inline$$Not$0$dst@1@@0 (|$IsValid'u64'| 0)) (and (= $t20@0 ($1_VASP_ParentVASP 0)) (forall ((recovery_addr@@7 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@7) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) recovery_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@7))))
 :qid |RecoveryAddressandybpl.9827:20|
 :skolemid |176|
)))) (and (=> (= (ControlFlow 0 151779) 152070) anon20_Then_correct) (=> (= (ControlFlow 0 151779) 151797) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t18@@0 $t18@@0)) (and (= $t9@0 $t18@@0) (= (ControlFlow 0 151512) 151736))) L3_correct)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 6)) (and (= $t18@@0 $t18@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 151496) 151779) anon19_Then_correct) (=> (= (ControlFlow 0 151496) 151512) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t15@@0)) (= (ControlFlow 0 151460) 151496)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not $t13@@0) (|$IsValid'address'| $t14@@0)) (=> (and (and (= $t14@@0 _$t0@@0) (= $t14@@0 $t14@@0)) (and (= $t15@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t14@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t14@@0))) (= (ControlFlow 0 151466) 151460))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct  (=> $t13@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t12@@0)) 5)) (= 3 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 152124) 151736))) L3_correct))))
(let ((anon17_Else_correct  (=> (not $t11@@0) (=> (and (= $t12@@0 _$t0@@0) (= $t13@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t12@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t12@@0)) 5))))) (and (=> (= (ControlFlow 0 151386) 152124) anon18_Then_correct) (=> (= (ControlFlow 0 151386) 151466) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> $t11@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t10)) (= 5 $t9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t10)) 1)) (= 3 $t9))) (and (not (= _$t1@@0 186537453)) (= 2 $t9))) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 152196) 151736))) L3_correct))))
(let ((anon16_Else_correct  (=> (not $t8) (=> (and (= $t10 _$t1@@0) (= $t11@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) $t10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $t10)) 1))) (not (= _$t1@@0 186537453))))) (and (=> (= (ControlFlow 0 151338) 152196) anon17_Then_correct) (=> (= (ControlFlow 0 151338) 151386) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9)) (= $t9 $t9)) (and (= $t9@0 $t9) (= (ControlFlow 0 152222) 151736))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |RecoveryAddressandybpl.9583:20|
 :skolemid |171|
))) (=> (and (and (|$IsValid'address'| _$t0@@0) (|$IsValid'address'| _$t1@@0)) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |RecoveryAddressandybpl.9592:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |RecoveryAddressandybpl.9596:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94789| $1_Roles_RoleId_$memory) $a_0@@3))
)))) (=> (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |RecoveryAddressandybpl.9600:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |RecoveryAddressandybpl.9604:20|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $a_0@@5))
))) (and (= $t5 _$t0@@0) (= $t6 _$t1@@0))) (and (and (= $t7 _$t0@@0) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_94320| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 151278) 152222) anon16_Then_correct) (=> (= (ControlFlow 0 151278) 151338) anon16_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_65491| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_65491| stream@@1) v@@36) 0)
 :qid |RecoveryAddressandybpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 151061) 151278)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 206600) 151061) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1 () T@$Memory_118262)
(declare-fun |Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int) T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $t9@@0 () Int)
(declare-fun _$t1@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $t10@@0 () Int)
(declare-fun $t15@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0 () T@$Memory_118262)
(declare-fun |Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int T@$1_RecoveryAddress_RecoveryAddress) |T@[Int]$1_RecoveryAddress_RecoveryAddress|)
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?y1))) :weight 0)))
(declare-fun $t25@0 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| () T@$Mutation_69702)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| () T@$Mutation_69702)
(declare-fun |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0| () T@$Mutation_69702)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun $t20@0@@0 () Bool)
(declare-fun $t17@0 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t19@@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 () Int)
(declare-fun $t12@@1 () Bool)
(declare-fun $t14@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_RecoveryAddress_publish$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 207795) (let ((anon26_Else_correct  (=> (not $abort_flag@1@@0) (and (=> (= (ControlFlow 0 153720) (- 0 208824)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr1) (and (> (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr1))) 0) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr1)) 0)) addr1))))
 :qid |RecoveryAddressandybpl.12729:15|
 :skolemid |210|
))) (=> (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr1@@0) (and (> (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr1@@0))) 0) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr1@@0)) 0)) addr1@@0))))
 :qid |RecoveryAddressandybpl.12729:15|
 :skolemid |210|
)) (and (=> (= (ControlFlow 0 153720) (- 0 208871)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr)))
 :qid |RecoveryAddressandybpl.12735:15|
 :skolemid |211|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@0)))
 :qid |RecoveryAddressandybpl.12735:15|
 :skolemid |211|
)) (and (=> (= (ControlFlow 0 153720) (- 0 208895)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@1)))
 :qid |RecoveryAddressandybpl.12741:15|
 :skolemid |212|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) addr@@2)))
 :qid |RecoveryAddressandybpl.12741:15|
 :skolemid |212|
)) (and (=> (= (ControlFlow 0 153720) (- 0 208919)) (forall ((recovery_addr@@8 Int) (to_recovery_addr Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@8) (=> (|$IsValid'address'| to_recovery_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@8) (=> (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'u64'| i@@40) (and (<= 0 i@@40) (< i@@40 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@8)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@8)) i@@40)) to_recovery_addr))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
)) (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (<= 0 i@@41) (< i@@41 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@8)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@8)) i@@41)) to_recovery_addr))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
))))))
 :qid |RecoveryAddressandybpl.12747:15|
 :skolemid |213|
))) (=> (forall ((recovery_addr@@9 Int) (to_recovery_addr@@0 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@9) (=> (|$IsValid'address'| to_recovery_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@9) (=> (exists ((i@@42 Int) ) (!  (and (and (|$IsValid'u64'| i@@42) (and (<= 0 i@@42) (< i@@42 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@9)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@9)) i@@42)) to_recovery_addr@@0))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
)) (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (and (<= 0 i@@43) (< i@@43 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@9)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@9)) i@@43)) to_recovery_addr@@0))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
))))))
 :qid |RecoveryAddressandybpl.12747:15|
 :skolemid |213|
)) (and (=> (= (ControlFlow 0 153720) (- 0 208960)) (forall ((recovery_addr@@10 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@10) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) recovery_addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@10))))
 :qid |RecoveryAddressandybpl.12753:15|
 :skolemid |214|
))) (=> (forall ((recovery_addr@@11 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) recovery_addr@@11) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) recovery_addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@11))))
 :qid |RecoveryAddressandybpl.12753:15|
 :skolemid |214|
)) (and (=> (= (ControlFlow 0 153720) (- 0 208990)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t9@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t9@@0))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t9@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t9@@0)))) (and (=> (= (ControlFlow 0 153720) (- 0 209003)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@0)) (and (=> (= (ControlFlow 0 153720) (- 0 209013)) (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@0)))) (=> (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@0))) (and (=> (= (ControlFlow 0 153720) (- 0 209027)) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0) (and (=> (= (ControlFlow 0 153720) (- 0 209035)) (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0))) 1)) (=> (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0))) 1) (=> (= (ControlFlow 0 153720) (- 0 209049)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory@1) $t10@@0)) 0) _$t1@@1)))))))))))))))))))))))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct| true))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct| true))
(let ((anon21_Then_correct@@0 true))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 152695) (- 0 208740)) (or (or (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t9@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t9@@0))) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@0)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@0)))) (=> (or (or (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t9@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t9@@0))) (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@0)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@0))) (=> (= (ControlFlow 0 152695) (- 0 208766)) (or (or (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t9@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t9@@0))) (= 7 $t15@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $t9@@0) (= 6 $t15@0))) (and (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1) $t9@@0)) (= 7 $t15@0))))))))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t15@0 $abort_code@1@@1) (= (ControlFlow 0 153734) 152695))) L7_correct@@0)))
(let ((anon25_Then$1_correct  (=> (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= $abort_flag@1@@0 true)) (and (=> (= (ControlFlow 0 153784) 153734) anon26_Then_correct) (=> (= (ControlFlow 0 153784) 153720) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@1) (= (ControlFlow 0 153782) 153784)) anon25_Then$1_correct)))
(let ((anon25_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@1)) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0 ($Memory_118262 (|Store__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@1 true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@1 $t25@0))) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory@0)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= $abort_flag@1@@0 $abort_flag@0@@1))) (and (=> (= (ControlFlow 0 153465) 153734) anon26_Then_correct) (=> (= (ControlFlow 0 153465) 153720) anon26_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (and (not $abort_flag@0@@1) (= $t25@0 ($1_RecoveryAddress_RecoveryAddress |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1|))) (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr1@@1) (and (> (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr1@@1))) 0) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) addr1@@1)) 0)) addr1@@1))))
 :qid |RecoveryAddressandybpl.12701:20|
 :skolemid |208|
)) (forall ((recovery_addr@@12 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@12) (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) recovery_addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) recovery_addr@@12))))
 :qid |RecoveryAddressandybpl.12705:20|
 :skolemid |209|
)))) (and (=> (= (ControlFlow 0 153447) 153782) anon25_Then_correct) (=> (= (ControlFlow 0 153447) 153465) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@0@@1 $abort_code@0@@1)) (and (= $t15@0 $abort_code@0@@1) (= (ControlFlow 0 153798) 152695))) L7_correct@@0)))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|  (=> (not false) (=> (and (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| (|v#$Mutation_69702| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1|)) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|)) (and (= $abort_flag@0@@1 false) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|))) (and (=> (= (ControlFlow 0 153317) 153798) anon24_Then_correct) (=> (= (ControlFlow 0 153317) 153447) anon24_Else_correct))))))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| ($Mutation_69702 (|l#$Mutation_69702| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (|p#$Mutation_69702| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.++ (|v#$Mutation_69702| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.unit _$t1@@1)))) (and (=> (= (ControlFlow 0 153285) 153331) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 153285) 153317) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|  (=> (and (and (not false) (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| ($Mutation_69702 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (= (ControlFlow 0 153291) 153285))) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((|inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| (as seq.empty (Seq T@$1_DiemAccount_KeyRotationCapability))) (and (=> (= (ControlFlow 0 153202) 153351) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 153202) 153291) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_69702| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0|)) 0) (=> (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 153208) 153202)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((anon23_Then_correct  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 153357) 153208)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((anon23_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t23@@0 $t23@@0)) (and (= $t15@0 $t23@@0) (= (ControlFlow 0 152952) 152695))) L7_correct@@0)))
(let ((anon22_Then$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 6)) (and (= $t23@@0 $t23@@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 152936) 153357) anon23_Then_correct) (=> (= (ControlFlow 0 152936) 152952) anon23_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t20@0@@0)) (= (ControlFlow 0 152900) 152936)) anon22_Then$1_correct)))
(let ((anon22_Then_correct  (=> $t17@0 (=> (and (= $t20@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $t11@@1)) (= (ControlFlow 0 152906) 152900)) inline$$Not$0$anon0_correct@@1))))
(let ((anon22_Else_correct  (=> (and (and (not $t17@0) (= $t19@@0 $t19@@0)) (and (= $t15@0 $t19@@0) (= (ControlFlow 0 152860) 152695))) L7_correct@@0)))
(let ((anon21_Else_correct@@0  (=> (not false) (=> (and (= $t17@0 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 $t11@@1)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t19@@0) (= $t19@@0 7)) (and (= $t19@@0 $t19@@0) (= $t17@0 $t17@0))) (and (=> (= (ControlFlow 0 152844) 152906) anon22_Then_correct) (=> (= (ControlFlow 0 152844) 152860) anon22_Else_correct)))))))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct  (=> (= _$t1@@1 _$t1@@1) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| _$t1@@1)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (=> (= (ControlFlow 0 152792) 153812) anon21_Then_correct@@0) (=> (= (ControlFlow 0 152792) 152844) anon21_Else_correct@@0))))))
(let ((anon20_Then_correct@@0  (=> (and $t12@@1 (= (ControlFlow 0 152798) 152792)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct)))
(let ((anon20_Else_correct@@0  (=> (and (and (not $t12@@1) (= $t14@@1 $t14@@1)) (and (= $t15@0 $t14@@1) (= (ControlFlow 0 152603) 152695))) L7_correct@@0)))
(let ((anon0$1_correct@@1  (=> (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |RecoveryAddressandybpl.12455:20|
 :skolemid |204|
)) (=> (and (|$IsValid'address'| _$t0@@1) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| _$t1@@1)) (=> (and (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@6))
 :qid |RecoveryAddressandybpl.12464:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_116429| $1_VASP_ChildVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $a_0@@7)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@7))
 :qid |RecoveryAddressandybpl.12468:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_116493| $1_VASP_ParentVASP_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@8)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@8))
 :qid |RecoveryAddressandybpl.12472:20|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@8))
)) (= $t9@@0 _$t0@@1))) (and (and (= $t10@@0 _$t0@@1) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@1 _$t1@@1) (|$IsValid'address'| $t11@@1)))) (and (and (and (= $t11@@1 _$t0@@1) (= $t11@@1 $t11@@1)) (and (= $t12@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_116493| $1_VASP_ParentVASP_$memory) $t11@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_116429| $1_VASP_ChildVASP_$memory) $t11@@1))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14@@1) (= $t14@@1 7)) (and (= $t14@@1 $t14@@1) (= $t12@@1 $t12@@1))))) (and (=> (= (ControlFlow 0 152587) 152798) anon20_Then_correct@@0) (=> (= (ControlFlow 0 152587) 152603) anon20_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_65491| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_65491| stream@@2) v@@37) 0)
 :qid |RecoveryAddressandybpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 152364) 152587)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 207795) 152364) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
(declare-fun $abort_flag@4 () Bool)
(declare-fun _$t1@@2 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_125726)
(declare-fun _$t2 () Int)
(declare-fun _$t3 () (Seq Int))
(declare-fun _$t0@@2 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_125726)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| () Int)
(declare-fun $t25@0@@0 () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_83564)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_127613)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_83564)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_127613)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_125726)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_127613)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_127613)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0 () T@$Mutation_127613)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_83564)
(declare-fun $t31@1 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@0| () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@1| () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $t35 () Int)
(declare-fun $t29@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $t30@0 () Int)
(declare-fun $t32@0 () Int)
(declare-fun $t33@0 () Int)
(declare-fun $t24@1 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $t24@@0 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $t24@0 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t13@0 () Bool)
(declare-fun $t23@@1 () Int)
(declare-fun $t19@0 () Bool)
(declare-fun $t21@0 () Bool)
(declare-fun $t18@@1 () Int)
(declare-fun $t14@0 () Bool)
(declare-fun $t16@@0 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_124805)
(push 1)
(set-info :boogie-vc-id $1_RecoveryAddress_rotate_authentication_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 209076) (let ((anon46_Else_correct  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 156619) (- 0 211142)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2))) (and (=> (= (ControlFlow 0 156619) (- 0 211153)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) _$t2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) _$t2))) (and (=> (= (ControlFlow 0 156619) (- 0 211164)) (not (not (= (seq.len _$t3) 32)))) (=> (not (not (= (seq.len _$t3) 32))) (and (=> (= (ControlFlow 0 156619) (- 0 211178)) (not (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (<= 0 i@@44) (< i@@44 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) i@@44)) _$t2))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
))))) (=> (not (not (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (<= 0 i@@45) (< i@@45 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) i@@45)) _$t2))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
)))) (and (=> (= (ControlFlow 0 156619) (- 0 211190)) (not (not (or (= _$t0@@2 _$t1@@2) (= _$t0@@2 _$t2))))) (=> (not (not (or (= _$t0@@2 _$t1@@2) (= _$t0@@2 _$t2)))) (=> (= (ControlFlow 0 156619) (- 0 211211)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory@1) _$t2)) _$t3)))))))))))))))
(let ((anon47_Else_correct  (=> (and (not $abort_flag@2@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@2@@0)) (and (=> (= (ControlFlow 0 155483) (- 0 210387)) (<= inline$$AddU64$0$dst@2@@0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)) (=> (<= inline$$AddU64$0$dst@2@@0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|) (=> (= (ControlFlow 0 155483) (- 0 210394)) (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2@@0)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((j@@9 $i_1))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth $t25@0@@0 j@@9)) _$t2))))
 :qid |RecoveryAddressandybpl.13332:49|
 :skolemid |224|
)))))))))
(let ((L17_correct  (and (=> (= (ControlFlow 0 154514) (- 0 210989)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) _$t2))) (not (= (seq.len _$t3) 32))) (not (exists ((i@@46 Int) ) (!  (and (and (|$IsValid'u64'| i@@46) (and (<= 0 i@@46) (< i@@46 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) i@@46)) _$t2))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
)))) (not (or (= _$t0@@2 _$t1@@2) (= _$t0@@2 _$t2))))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) _$t2))) (not (= (seq.len _$t3) 32))) (not (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (and (<= 0 i@@47) (< i@@47 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) i@@47)) _$t2))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
)))) (not (or (= _$t0@@2 _$t1@@2) (= _$t0@@2 _$t2)))) (=> (= (ControlFlow 0 154514) (- 0 211041)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) (= 5 $t17@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) _$t2)) (= 5 $t17@0@@0))) (and (not (= (seq.len _$t3) 32)) (= 7 $t17@0@@0))) (and (not (exists ((i@@48 Int) ) (!  (and (and (|$IsValid'u64'| i@@48) (and (<= 0 i@@48) (< i@@48 (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)))))) (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) i@@48)) _$t2))
 :qid |RecoveryAddressandybpl.12390:13|
 :skolemid |202|
))) (= 7 $t17@0@@0))) (and (not (or (= _$t0@@2 _$t1@@2) (= _$t0@@2 _$t2))) (= 7 $t17@0@@0))))))))
(let ((anon46_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t17@0@@0 $abort_code@5) (= (ControlFlow 0 156633) 154514))) L17_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 ($Mutation_83564 (|l#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.++ (|p#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 ($Mutation_83564 (|l#$Mutation_83564| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) (|p#$Mutation_83564| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) _$t3)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 ($Mutation_127613 (|l#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (|p#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_83564| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_125726 (|Store__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)))) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0)))) (and (=> (= (ControlFlow 0 156423) 156633) anon46_Then_correct) (=> (= (ControlFlow 0 156423) 156619) anon46_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory)) (and (=> (= (ControlFlow 0 156219) 156633) anon46_Then_correct) (=> (= (ControlFlow 0 156219) 156619) anon46_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= (ControlFlow 0 156373) 156219))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct  (=> (and (and (and (not $abort_flag@3) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= |inline$$1_Vector_length'u8'$0$l@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1)))) (and (=> (= (ControlFlow 0 156357) 156423) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct) (=> (= (ControlFlow 0 156357) 156373) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 156437) 156219))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t3)) (and (=> (= (ControlFlow 0 156299) 156437) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct) (=> (= (ControlFlow 0 156299) 156357) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct  (=> (and (and (not $abort_flag@3) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= (ControlFlow 0 156305) 156299))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 156451) 156219))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) (and (=> (= (ControlFlow 0 156503) 156451) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 156503) 156305) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1)) (= (ControlFlow 0 156501) 156503)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 ($Mutation_127613 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1))) (= $abort_code@4 $abort_code@2@@0)) (and (= $abort_flag@3 $abort_flag@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1))) (and (=> (= (ControlFlow 0 156249) 156451) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 156249) 156305) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|))) (and (=> (= (ControlFlow 0 156227) 156501) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct) (=> (= (ControlFlow 0 156227) 156249) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= (ControlFlow 0 156213) 156219))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct  (=> (and (not $abort_flag@1@@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 156197) 156227) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct) (=> (= (ControlFlow 0 156197) 156213) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@2@@0) (= (ControlFlow 0 156517) 156219))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 156155) 156517) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct) (=> (= (ControlFlow 0 156155) 156197) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0)) 0) (=> (and (= (seq.len (|p#$Mutation_127613| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) 0) (= (seq.len (|p#$Mutation_83564| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0)) 0)) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|) (= _$t3 _$t3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|)) (= (ControlFlow 0 156161) 156155))) inline$$1_DiemAccount_exists_at$0$anon0_correct)))))
(let ((anon45_Then_correct  (=> (and $t31@1 (= (ControlFlow 0 156521) 156161)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct)))
(let ((anon47_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 155497) 154514))) L17_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@0 true) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 155414) 155497) anon47_Then_correct) (=> (= (ControlFlow 0 155414) 155483) anon47_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ $t26@0 1) $MAX_U64) (= (ControlFlow 0 155412) 155414)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ $t26@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ $t26@0 1)) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@1) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 155360) 155497) anon47_Then_correct) (=> (= (ControlFlow 0 155360) 155483) anon47_Else_correct))))))
(let ((anon45_Else_correct  (=> (and (not $t31@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 155420) 155412) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 155420) 155360) inline$$AddU64$0$anon3_Else_correct@@0)))))
(let ((anon44_Else_correct  (=> (and (not $abort_flag@1@@1) (= $t31@1 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 _$t2))) (and (=> (= (ControlFlow 0 155253) 156521) anon45_Then_correct) (=> (= (ControlFlow 0 155253) 155420) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t17@0@@0 $abort_code@2@@0) (= (ControlFlow 0 156647) 154514))) L17_correct)))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0  (=> (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 155233) 156647) anon44_Then_correct) (=> (= (ControlFlow 0 155233) 155253) anon44_Else_correct))))))
(let ((anon43_Else_correct  (=> (not $abort_flag@1@@1) (=> (and (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2|) (= (ControlFlow 0 155239) 155233)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0))))
(let ((anon43_Then_correct  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t17@0@@0 $abort_code@2@@0) (= (ControlFlow 0 156661) 154514))) L17_correct)))
(let ((|inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1@@1 true) (=> (and (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@0|)) (and (=> (= (ControlFlow 0 155118) 156661) anon43_Then_correct) (=> (= (ControlFlow 0 155118) 155239) anon43_Else_correct))))))
(let ((|inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then_correct|  (=> (and (not (and (>= $t26@0 0) (< $t26@0 (seq.len $t25@0@@0)))) (= (ControlFlow 0 155116) 155118)) |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Else_correct|  (=> (and (>= $t26@0 0) (< $t26@0 (seq.len $t25@0@@0))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@1| (seq.nth $t25@0@@0 $t26@0)) (= $abort_flag@1@@1 $abort_flag@0@@2)) (and (= $abort_code@2@@0 $abort_code@1@@2) (= |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$dst@1|))) (and (=> (= (ControlFlow 0 155066) 156661) anon43_Then_correct) (=> (= (ControlFlow 0 155066) 155239) anon43_Else_correct))))))
(let ((anon42_Then_correct  (=> inline$$Lt$0$dst@1@@0 (and (=> (= (ControlFlow 0 155124) 155116) |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 155124) 155066) |inline$$1_Vector_borrow'$1_DiemAccount_KeyRotationCapability'$0$anon3_Else_correct|)))))
(let ((anon42_Else_correct  (=> (not inline$$Lt$0$dst@1@@0) (and (=> (= (ControlFlow 0 154979) (- 0 210042)) (= $t26@0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)) (=> (= $t26@0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|) (and (=> (= (ControlFlow 0 154979) (- 0 210049)) (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((j@@10 $i_1@@0))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth $t25@0@@0 j@@10)) _$t2))))
 :qid |RecoveryAddressandybpl.13288:49|
 :skolemid |223|
)))) (=> (let (($range_0@@1 ($Range 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((j@@11 $i_1@@1))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth $t25@0@@0 j@@11)) _$t2))))
 :qid |RecoveryAddressandybpl.13288:49|
 :skolemid |223|
))) (=> (and (|$IsValid'u64'| 4) (|$IsValid'u64'| $t35)) (=> (and (and (= $t35 7) (= $t35 $t35)) (and (= $t17@0@@0 $t35) (= (ControlFlow 0 154979) 154514))) L17_correct)))))))))
(let ((anon41_Else$1_correct  (and (=> (= (ControlFlow 0 154898) 155124) anon42_Then_correct) (=> (= (ControlFlow 0 154898) 154979) anon42_Else_correct))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< $t26@0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)) (= (ControlFlow 0 154888) 154898)) anon41_Else$1_correct)))
(let ((anon41_Else_correct  (=> (and (not $abort_flag@0@@2) (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)) (and (=> (= (ControlFlow 0 154894) (- 0 209880)) (<= 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|) (and (=> (= (ControlFlow 0 154894) (- 0 209887)) (let (($range_0@@2 ($Range 0 0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((j@@12 $i_1@@2))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth $t25@0@@0 j@@12)) _$t2))))
 :qid |RecoveryAddressandybpl.13136:49|
 :skolemid |221|
)))) (=> (let (($range_0@@3 ($Range 0 0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@3) (let ((j@@13 $i_1@@3))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth $t25@0@@0 j@@13)) _$t2))))
 :qid |RecoveryAddressandybpl.13136:49|
 :skolemid |221|
))) (=> (|$IsValid'u64'| $t26@0) (=> (and (and (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| $t29@0@@0) (|$IsValid'address'| $t30@0)) (and (|$IsValid'u64'| $t32@0) (|$IsValid'u64'| $t33@0))) (and (and (not $abort_flag@0@@2) (<= $t26@0 |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1|)) (and (let (($range_0@@4 ($Range 0 $t26@0)))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@4) (let ((j@@14 $i_1@@4))
 (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth $t25@0@@0 j@@14)) _$t2))))
 :qid |RecoveryAddressandybpl.13176:54|
 :skolemid |222|
))) (= (ControlFlow 0 154894) 154888)))) inline$$Lt$0$anon0_correct@@0)))))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0@@0 $abort_code@1@@2) (= (ControlFlow 0 156675) 154514))) L17_correct)))
(let ((|inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| (seq.len $t25@0@@0)) (and (=> (= (ControlFlow 0 154698) 156675) anon41_Then_correct) (=> (= (ControlFlow 0 154698) 154894) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@0@@2) (= $t25@0@@0 (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| $t24@1))) (=> (and (and (= $t25@0@@0 $t25@0@@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 154704) 154698))) |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t17@0@@0 $abort_code@1@@2) (= (ControlFlow 0 156689) 154514))) L17_correct)))
(let ((anon39_Then$1_correct  (=> (= $t24@1 $t24@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 156741) 156689) anon40_Then_correct) (=> (= (ControlFlow 0 156741) 154704) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) (= (ControlFlow 0 156739) 156741)) anon39_Then$1_correct)))
(let ((anon39_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2) (=> (and (and (= $t24@0 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) (= $t24@1 $t24@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 154634) 156689) anon40_Then_correct) (=> (= (ControlFlow 0 154634) 154704) anon40_Else_correct))))))
(let ((anon38_Then_correct  (=> $t13@0 (and (=> (= (ControlFlow 0 154620) 156739) anon39_Then_correct) (=> (= (ControlFlow 0 154620) 154634) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (not $t13@0) (= $t23@@1 $t23@@1)) (and (= $t17@0@@0 $t23@@1) (= (ControlFlow 0 154616) 154514))) L17_correct)))
(let ((L5_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23@@1) (= $t23@@1 7)) (and (= $t23@@1 $t23@@1) (= $t13@0 $t13@0))) (and (=> (= (ControlFlow 0 154600) 154620) anon38_Then_correct) (=> (= (ControlFlow 0 154600) 154616) anon38_Else_correct))))))
(let ((anon37_Else_correct@@0  (=> (not $t19@0) (=> (and (and (= $t21@0 (= $t18@@1 _$t1@@2)) (= $t21@0 $t21@0)) (and (= $t13@0 $t21@0) (= (ControlFlow 0 154566) 154600))) L5_correct))))
(let ((anon37_Then_correct@@0  (=> (and (and $t19@0 (= true true)) (and (= $t13@0 true) (= (ControlFlow 0 156759) 154600))) L5_correct)))
(let ((anon36_Then_correct@@0  (=> $t14@0 (=> (and (and (|$IsValid'address'| $t18@@1) (= $t18@@1 _$t0@@2)) (and (= $t18@@1 $t18@@1) (= $t19@0 (= $t18@@1 _$t2)))) (and (=> (= (ControlFlow 0 154544) 156759) anon37_Then_correct@@0) (=> (= (ControlFlow 0 154544) 154566) anon37_Else_correct@@0))))))
(let ((anon36_Else_correct@@0  (=> (and (and (not $t14@0) (= $t16@@0 $t16@@0)) (and (= $t17@0@@0 $t16@@0) (= (ControlFlow 0 154338) 154514))) L17_correct)))
(let ((anon0$1_correct@@2  (=> (and (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@3) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@3)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@3)))) 0)) (= addr@@3 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@3))) 0)))))))
 :qid |RecoveryAddressandybpl.12872:20|
 :skolemid |215|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@4) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@4) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@4)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@4)))) 0)) (= addr@@4 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@4))) 0)))))))
 :qid |RecoveryAddressandybpl.12876:20|
 :skolemid |216|
))) (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_94789| $1_Roles_RoleId_$memory) addr@@5)))
 :qid |RecoveryAddressandybpl.12880:20|
 :skolemid |217|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_124805| $1_AccountFreezing_FreezingBit_$memory) addr@@6)))
 :qid |RecoveryAddressandybpl.12884:20|
 :skolemid |218|
)))) (=> (and (and (and (and (|$IsValid'address'| _$t0@@2) (|$IsValid'address'| _$t1@@2)) (and (|$IsValid'address'| _$t2) (|$IsValid'vec'u8''| _$t3))) (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) $a_0@@9)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@9) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@9))) 1))))
 :qid |RecoveryAddressandybpl.12903:20|
 :skolemid |219|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_125726| $1_DiemAccount_DiemAccount_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@10)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@10))
 :qid |RecoveryAddressandybpl.12907:20|
 :skolemid |220|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@10))
))) (and (= _$t0@@2 _$t0@@2) (= _$t1@@2 _$t1@@2)))) (and (and (and (= _$t2 _$t2) (= _$t3 _$t3)) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_118262| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@2)) (|$IsValid'u64'| 5))) (and (and (|$IsValid'u64'| $t16@@0) (= $t16@@0 5)) (and (= $t16@@0 $t16@@0) (= $t14@0 $t14@0))))) (and (=> (= (ControlFlow 0 154322) 154544) anon36_Then_correct@@0) (=> (= (ControlFlow 0 154322) 154338) anon36_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_65491_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_65491| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_65491| stream@@3) v@@38) 0)
 :qid |RecoveryAddressandybpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddressandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 154046) 154322)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 209076) 154046) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
