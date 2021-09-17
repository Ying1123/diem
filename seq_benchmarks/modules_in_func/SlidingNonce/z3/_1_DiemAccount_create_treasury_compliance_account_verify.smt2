(set-option :print-success false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_92101 0)) ((($Memory_92101 (|domain#$Memory_92101| |T@[Int]Bool|) (|contents#$Memory_92101| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_101293 0)) ((($Memory_101293 (|domain#$Memory_101293| |T@[Int]Bool|) (|contents#$Memory_101293| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_101222 0)) ((($Memory_101222 (|domain#$Memory_101222| |T@[Int]Bool|) (|contents#$Memory_101222| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_100979 0)) ((($Memory_100979 (|domain#$Memory_100979| |T@[Int]Bool|) (|contents#$Memory_100979| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_100908 0)) ((($Memory_100908 (|domain#$Memory_100908| |T@[Int]Bool|) (|contents#$Memory_100908| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_100837 0)) ((($Memory_100837 (|domain#$Memory_100837| |T@[Int]Bool|) (|contents#$Memory_100837| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_131983 0)) ((($Memory_131983 (|domain#$Memory_131983| |T@[Int]Bool|) (|contents#$Memory_131983| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_100669 0)) ((($Memory_100669 (|domain#$Memory_100669| |T@[Int]Bool|) (|contents#$Memory_100669| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_129448 0)) ((($Memory_129448 (|domain#$Memory_129448| |T@[Int]Bool|) (|contents#$Memory_129448| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_128239 0)) ((($Memory_128239 (|domain#$Memory_128239| |T@[Int]Bool|) (|contents#$Memory_128239| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_128175 0)) ((($Memory_128175 (|domain#$Memory_128175| |T@[Int]Bool|) (|contents#$Memory_128175| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_127269 0)) ((($Memory_127269 (|domain#$Memory_127269| |T@[Int]Bool|) (|contents#$Memory_127269| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_127636 0)) ((($Memory_127636 (|domain#$Memory_127636| |T@[Int]Bool|) (|contents#$Memory_127636| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123753 0)) ((($Memory_123753 (|domain#$Memory_123753| |T@[Int]Bool|) (|contents#$Memory_123753| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123466 0)) ((($Memory_123466 (|domain#$Memory_123466| |T@[Int]Bool|) (|contents#$Memory_123466| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100501 0)) ((($Memory_100501 (|domain#$Memory_100501| |T@[Int]Bool|) (|contents#$Memory_100501| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100262 0)) ((($Memory_100262 (|domain#$Memory_100262| |T@[Int]Bool|) (|contents#$Memory_100262| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_101151 0)) ((($Memory_101151 (|domain#$Memory_101151| |T@[Int]Bool|) (|contents#$Memory_101151| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112618 0)) ((($Memory_112618 (|domain#$Memory_112618| |T@[Int]Bool|) (|contents#$Memory_112618| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112554 0)) ((($Memory_112554 (|domain#$Memory_112554| |T@[Int]Bool|) (|contents#$Memory_112554| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_112931 0)) ((($Memory_112931 (|domain#$Memory_112931| |T@[Int]Bool|) (|contents#$Memory_112931| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112844 0)) ((($Memory_112844 (|domain#$Memory_112844| |T@[Int]Bool|) (|contents#$Memory_112844| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_134057 0)) ((($Memory_134057 (|domain#$Memory_134057| |T@[Int]Bool|) (|contents#$Memory_134057| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_116427 0)) ((($Memory_116427 (|domain#$Memory_116427| |T@[Int]Bool|) (|contents#$Memory_116427| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_100333 0)) ((($Memory_100333 (|domain#$Memory_100333| |T@[Int]Bool|) (|contents#$Memory_100333| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_133966 0)) ((($Memory_133966 (|domain#$Memory_133966| |T@[Int]Bool|) (|contents#$Memory_133966| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_116336 0)) ((($Memory_116336 (|domain#$Memory_116336| |T@[Int]Bool|) (|contents#$Memory_116336| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100572 0)) ((($Memory_100572 (|domain#$Memory_100572| |T@[Int]Bool|) (|contents#$Memory_100572| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100417 0)) ((($Memory_100417 (|domain#$Memory_100417| |T@[Int]Bool|) (|contents#$Memory_100417| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100178 0)) ((($Memory_100178 (|domain#$Memory_100178| |T@[Int]Bool|) (|contents#$Memory_100178| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_108434 0)) ((($Memory_108434 (|domain#$Memory_108434| |T@[Int]Bool|) (|contents#$Memory_108434| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_108347 0)) ((($Memory_108347 (|domain#$Memory_108347| |T@[Int]Bool|) (|contents#$Memory_108347| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_108260 0)) ((($Memory_108260 (|domain#$Memory_108260| |T@[Int]Bool|) (|contents#$Memory_108260| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_108173 0)) ((($Memory_108173 (|domain#$Memory_108173| |T@[Int]Bool|) (|contents#$Memory_108173| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_108086 0)) ((($Memory_108086 (|domain#$Memory_108086| |T@[Int]Bool|) (|contents#$Memory_108086| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_107999 0)) ((($Memory_107999 (|domain#$Memory_107999| |T@[Int]Bool|) (|contents#$Memory_107999| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_100023 0)) ((($Memory_100023 (|domain#$Memory_100023| |T@[Int]Bool|) (|contents#$Memory_100023| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_107266 0)) ((($Memory_107266 (|domain#$Memory_107266| |T@[Int]Bool|) (|contents#$Memory_107266| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_99864 0)) ((($Memory_99864 (|domain#$Memory_99864| |T@[Int]Bool|) (|contents#$Memory_99864| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_99458 0)) ((($Memory_99458 (|domain#$Memory_99458| |T@[Int]Bool|) (|contents#$Memory_99458| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101377 0)) ((($Memory_101377 (|domain#$Memory_101377| |T@[Int]Bool|) (|contents#$Memory_101377| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_107133 0)) ((($Memory_107133 (|domain#$Memory_107133| |T@[Int]Bool|) (|contents#$Memory_107133| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_100753 0)) ((($Memory_100753 (|domain#$Memory_100753| |T@[Int]Bool|) (|contents#$Memory_100753| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_100094 0)) ((($Memory_100094 (|domain#$Memory_100094| |T@[Int]Bool|) (|contents#$Memory_100094| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_99771 0)) ((($Memory_99771 (|domain#$Memory_99771| |T@[Int]Bool|) (|contents#$Memory_99771| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_132997 0)) ((($Memory_132997 (|domain#$Memory_132997| |T@[Int]Bool|) (|contents#$Memory_132997| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_99950 0)) ((($Memory_99950 (|domain#$Memory_99950| |T@[Int]Bool|) (|contents#$Memory_99950| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_105265 0)) ((($Memory_105265 (|domain#$Memory_105265| |T@[Int]Bool|) (|contents#$Memory_105265| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_104707 0)) ((($Memory_104707 (|domain#$Memory_104707| |T@[Int]Bool|) (|contents#$Memory_104707| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99584 0)) ((($Memory_99584 (|domain#$Memory_99584| |T@[Int]Bool|) (|contents#$Memory_99584| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_98906 0)) ((($Memory_98906 (|domain#$Memory_98906| |T@[Int]Bool|) (|contents#$Memory_98906| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_72434 0)) (((Multiset_72434 (|v#Multiset_72434| |T@[$EventRep]Int|) (|l#Multiset_72434| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_72434| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_72434|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_148151 0)) ((($Mutation_148151 (|l#$Mutation_148151| T@$Location) (|p#$Mutation_148151| (Seq Int)) (|v#$Mutation_148151| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_148107 0)) ((($Mutation_148107 (|l#$Mutation_148107| T@$Location) (|p#$Mutation_148107| (Seq Int)) (|v#$Mutation_148107| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33390 0)) ((($Mutation_33390 (|l#$Mutation_33390| T@$Location) (|p#$Mutation_33390| (Seq Int)) (|v#$Mutation_33390| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_121740 0)) ((($Mutation_121740 (|l#$Mutation_121740| T@$Location) (|p#$Mutation_121740| (Seq Int)) (|v#$Mutation_121740| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_111115 0)) ((($Mutation_111115 (|l#$Mutation_111115| T@$Location) (|p#$Mutation_111115| (Seq Int)) (|v#$Mutation_111115| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_99401 0)) ((($Mutation_99401 (|l#$Mutation_99401| T@$Location) (|p#$Mutation_99401| (Seq Int)) (|v#$Mutation_99401| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_92732 0)) ((($Mutation_92732 (|l#$Mutation_92732| T@$Location) (|p#$Mutation_92732| (Seq Int)) (|v#$Mutation_92732| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_88108 0)) ((($Mutation_88108 (|l#$Mutation_88108| T@$Location) (|p#$Mutation_88108| (Seq Int)) (|v#$Mutation_88108| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_87362 0)) ((($Mutation_87362 (|l#$Mutation_87362| T@$Location) (|p#$Mutation_87362| (Seq Int)) (|v#$Mutation_87362| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_85958 0)) ((($Mutation_85958 (|l#$Mutation_85958| T@$Location) (|p#$Mutation_85958| (Seq Int)) (|v#$Mutation_85958| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_85212 0)) ((($Mutation_85212 (|l#$Mutation_85212| T@$Location) (|p#$Mutation_85212| (Seq Int)) (|v#$Mutation_85212| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_83808 0)) ((($Mutation_83808 (|l#$Mutation_83808| T@$Location) (|p#$Mutation_83808| (Seq Int)) (|v#$Mutation_83808| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_83062 0)) ((($Mutation_83062 (|l#$Mutation_83062| T@$Location) (|p#$Mutation_83062| (Seq Int)) (|v#$Mutation_83062| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_81658 0)) ((($Mutation_81658 (|l#$Mutation_81658| T@$Location) (|p#$Mutation_81658| (Seq Int)) (|v#$Mutation_81658| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_80912 0)) ((($Mutation_80912 (|l#$Mutation_80912| T@$Location) (|p#$Mutation_80912| (Seq Int)) (|v#$Mutation_80912| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_79508 0)) ((($Mutation_79508 (|l#$Mutation_79508| T@$Location) (|p#$Mutation_79508| (Seq Int)) (|v#$Mutation_79508| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_78762 0)) ((($Mutation_78762 (|l#$Mutation_78762| T@$Location) (|p#$Mutation_78762| (Seq Int)) (|v#$Mutation_78762| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_77358 0)) ((($Mutation_77358 (|l#$Mutation_77358| T@$Location) (|p#$Mutation_77358| (Seq Int)) (|v#$Mutation_77358| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_76612 0)) ((($Mutation_76612 (|l#$Mutation_76612| T@$Location) (|p#$Mutation_76612| (Seq Int)) (|v#$Mutation_76612| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_75170 0)) ((($Mutation_75170 (|l#$Mutation_75170| T@$Location) (|p#$Mutation_75170| (Seq Int)) (|v#$Mutation_75170| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_74424 0)) ((($Mutation_74424 (|l#$Mutation_74424| T@$Location) (|p#$Mutation_74424| (Seq Int)) (|v#$Mutation_74424| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_72434_| (|T@[$1_Event_EventHandle]Multiset_72434| T@$1_Event_EventHandle) T@Multiset_72434)
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
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
(declare-fun |$IsValid'$1_SlidingNonce_SlidingNonce'| (T@$1_SlidingNonce_SlidingNonce) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemSystem_DiemSystem'| (T@$1_DiemSystem_DiemSystem) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (T@$1_RegisteredCurrencies_RegisteredCurrencies) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
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
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
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
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_65692 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_64904 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_65101 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_65298 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_65889 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_65495 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_64707 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_72434| |T@[$1_Event_EventHandle]Multiset_72434|) |T@[$1_Event_EventHandle]Multiset_72434|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |SlidingNoncebpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |SlidingNoncebpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |SlidingNoncebpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |SlidingNoncebpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |SlidingNoncebpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |SlidingNoncebpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |SlidingNoncebpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |SlidingNoncebpl.595:13|
 :skolemid |15|
))))
 :qid |SlidingNoncebpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |SlidingNoncebpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |SlidingNoncebpl.608:17|
 :skolemid |18|
)))))
 :qid |SlidingNoncebpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |SlidingNoncebpl.775:13|
 :skolemid |20|
))))
 :qid |SlidingNoncebpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |SlidingNoncebpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |SlidingNoncebpl.788:17|
 :skolemid |23|
)))))
 :qid |SlidingNoncebpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |SlidingNoncebpl.955:13|
 :skolemid |25|
))))
 :qid |SlidingNoncebpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |SlidingNoncebpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |SlidingNoncebpl.968:17|
 :skolemid |28|
)))))
 :qid |SlidingNoncebpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |SlidingNoncebpl.1135:13|
 :skolemid |30|
))))
 :qid |SlidingNoncebpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |SlidingNoncebpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |SlidingNoncebpl.1148:17|
 :skolemid |33|
)))))
 :qid |SlidingNoncebpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |SlidingNoncebpl.1315:13|
 :skolemid |35|
))))
 :qid |SlidingNoncebpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |SlidingNoncebpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |SlidingNoncebpl.1328:17|
 :skolemid |38|
)))))
 :qid |SlidingNoncebpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |SlidingNoncebpl.1495:13|
 :skolemid |40|
))))
 :qid |SlidingNoncebpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |SlidingNoncebpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |SlidingNoncebpl.1508:17|
 :skolemid |43|
)))))
 :qid |SlidingNoncebpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |SlidingNoncebpl.1675:13|
 :skolemid |45|
))))
 :qid |SlidingNoncebpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |SlidingNoncebpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |SlidingNoncebpl.1688:17|
 :skolemid |48|
)))))
 :qid |SlidingNoncebpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |SlidingNoncebpl.1855:13|
 :skolemid |50|
))))
 :qid |SlidingNoncebpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |SlidingNoncebpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |SlidingNoncebpl.1868:17|
 :skolemid |53|
)))))
 :qid |SlidingNoncebpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u8'| (seq.nth v@@20 i@@24)))
 :qid |SlidingNoncebpl.2035:13|
 :skolemid |55|
))))
 :qid |SlidingNoncebpl.2033:28|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u8''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u8'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |SlidingNoncebpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |SlidingNoncebpl.2048:17|
 :skolemid |58|
)))))
 :qid |SlidingNoncebpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u8'| v@@21 e@@7))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |SlidingNoncebpl.2221:15|
 :skolemid |60|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |SlidingNoncebpl.2237:15|
 :skolemid |61|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |SlidingNoncebpl.2308:15|
 :skolemid |62|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |SlidingNoncebpl.2311:15|
 :skolemid |63|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_72434| stream) 0) (forall ((v@@22 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream) v@@22) 0)
 :qid |SlidingNoncebpl.134:13|
 :skolemid |2|
))))
 :qid |SlidingNoncebpl.2372:13|
 :skolemid |64|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |SlidingNoncebpl.2413:80|
 :skolemid |66|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |SlidingNoncebpl.2419:15|
 :skolemid |67|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |SlidingNoncebpl.2469:82|
 :skolemid |68|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |SlidingNoncebpl.2475:15|
 :skolemid |69|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |SlidingNoncebpl.2525:80|
 :skolemid |70|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |SlidingNoncebpl.2531:15|
 :skolemid |71|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |SlidingNoncebpl.2581:79|
 :skolemid |72|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |SlidingNoncebpl.2587:15|
 :skolemid |73|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |SlidingNoncebpl.2637:76|
 :skolemid |74|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |SlidingNoncebpl.2643:15|
 :skolemid |75|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |SlidingNoncebpl.2693:78|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |SlidingNoncebpl.2699:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |SlidingNoncebpl.2749:74|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |SlidingNoncebpl.2755:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |SlidingNoncebpl.2805:69|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |SlidingNoncebpl.2811:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |SlidingNoncebpl.2861:70|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |SlidingNoncebpl.2867:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |SlidingNoncebpl.2917:60|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |SlidingNoncebpl.2923:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |SlidingNoncebpl.2973:66|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |SlidingNoncebpl.2979:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |SlidingNoncebpl.3029:60|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |SlidingNoncebpl.3035:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |SlidingNoncebpl.3085:63|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |SlidingNoncebpl.3091:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |SlidingNoncebpl.3141:79|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |SlidingNoncebpl.3147:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |SlidingNoncebpl.3197:82|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |SlidingNoncebpl.3203:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |SlidingNoncebpl.3253:88|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |SlidingNoncebpl.3259:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |SlidingNoncebpl.3309:72|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |SlidingNoncebpl.3315:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |SlidingNoncebpl.3394:61|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |SlidingNoncebpl.4209:36|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |SlidingNoncebpl.4571:71|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |SlidingNoncebpl.4635:46|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |SlidingNoncebpl.4648:64|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |SlidingNoncebpl.4661:75|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |SlidingNoncebpl.4674:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |SlidingNoncebpl.4703:55|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |SlidingNoncebpl.4725:46|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |SlidingNoncebpl.4736:15|
 :skolemid |111|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |SlidingNoncebpl.4749:49|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |SlidingNoncebpl.5191:71|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |SlidingNoncebpl.5205:91|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |SlidingNoncebpl.5219:113|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@12)))
 :qid |SlidingNoncebpl.5233:89|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |SlidingNoncebpl.5247:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |SlidingNoncebpl.5261:73|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |SlidingNoncebpl.5281:48|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |SlidingNoncebpl.5297:57|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |SlidingNoncebpl.5311:83|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |SlidingNoncebpl.5325:103|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |SlidingNoncebpl.5339:125|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20) true)
 :qid |SlidingNoncebpl.5353:101|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |SlidingNoncebpl.5367:87|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |SlidingNoncebpl.5381:85|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |SlidingNoncebpl.5395:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |SlidingNoncebpl.5416:45|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |SlidingNoncebpl.5430:51|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |SlidingNoncebpl.5453:48|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |SlidingNoncebpl.5745:49|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |SlidingNoncebpl.5758:65|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |SlidingNoncebpl.6265:45|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |SlidingNoncebpl.6278:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |SlidingNoncebpl.6291:55|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |SlidingNoncebpl.6305:55|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |SlidingNoncebpl.6325:38|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |SlidingNoncebpl.6346:44|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |SlidingNoncebpl.6397:53|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |SlidingNoncebpl.6459:53|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |SlidingNoncebpl.6485:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |SlidingNoncebpl.6499:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |SlidingNoncebpl.6516:38|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |SlidingNoncebpl.6530:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |SlidingNoncebpl.6544:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |SlidingNoncebpl.6564:41|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@43))))
 :qid |SlidingNoncebpl.6582:57|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@43))
)))
(assert (forall ((s@@44 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44) true)
 :qid |SlidingNoncebpl.8688:68|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@45))))
 :qid |SlidingNoncebpl.8710:66|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@46))))
 :qid |SlidingNoncebpl.8736:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@47))))
 :qid |SlidingNoncebpl.8765:56|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@48))))
 :qid |SlidingNoncebpl.8795:56|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |SlidingNoncebpl.9229:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |SlidingNoncebpl.9559:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |SlidingNoncebpl.9578:35|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |SlidingNoncebpl.9987:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |SlidingNoncebpl.10006:50|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |SlidingNoncebpl.10021:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@55)))
 :qid |SlidingNoncebpl.10035:46|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@56) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@56)))
 :qid |SlidingNoncebpl.10229:38|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@57) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@57)))
 :qid |SlidingNoncebpl.10243:39|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58))))
 :qid |SlidingNoncebpl.10270:65|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@59))))
 :qid |SlidingNoncebpl.10638:60|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60))))
 :qid |SlidingNoncebpl.10655:66|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@61)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@61)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@61))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@61))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@61))))
 :qid |SlidingNoncebpl.10684:50|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@62) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@62)))
 :qid |SlidingNoncebpl.10703:45|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@63)) true))
 :qid |SlidingNoncebpl.11010:87|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@64)))
 :qid |SlidingNoncebpl.11211:47|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@65)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@65))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@65))))
 :qid |SlidingNoncebpl.11231:58|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@66) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@66)))
 :qid |SlidingNoncebpl.11246:39|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@67))))
 :qid |SlidingNoncebpl.11268:58|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68))))
 :qid |SlidingNoncebpl.11285:58|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69) true)
 :qid |SlidingNoncebpl.11300:51|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70))))
 :qid |SlidingNoncebpl.11317:60|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@71)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@71))))
 :qid |SlidingNoncebpl.11603:47|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@72))))
 :qid |SlidingNoncebpl.11625:63|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@73)))
 :qid |SlidingNoncebpl.11640:57|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73))
)))
(assert (forall ((s@@74 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@74)))
 :qid |SlidingNoncebpl.11653:55|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@74))
)))
(assert (forall ((s@@75 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@75)))
 :qid |SlidingNoncebpl.11667:55|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@76)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@76))))
 :qid |SlidingNoncebpl.11684:54|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@77)))
 :qid |SlidingNoncebpl.11698:55|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@78)))
 :qid |SlidingNoncebpl.11712:57|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@79)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@79))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@79))))
 :qid |SlidingNoncebpl.11734:56|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@80)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@80))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@80))))
 :qid |SlidingNoncebpl.11759:52|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@81)))
 :qid |SlidingNoncebpl.11775:54|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@82)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@82))))
 :qid |SlidingNoncebpl.14955:47|
 :skolemid |299|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@83)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@83))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@83))))
 :qid |SlidingNoncebpl.14979:47|
 :skolemid |300|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@84)))
 :qid |SlidingNoncebpl.15211:63|
 :skolemid |301|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@85)))
 :qid |SlidingNoncebpl.15547:49|
 :skolemid |302|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@86)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@86))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@86))))
 :qid |SlidingNoncebpl.15590:49|
 :skolemid |303|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@87)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@87))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@87))))
 :qid |SlidingNoncebpl.15619:48|
 :skolemid |304|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@88)))
 :qid |SlidingNoncebpl.15903:47|
 :skolemid |305|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@88))
)))
(assert (forall ((v@@23 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@23)))
 (and (= (seq.len r@@0) (seq.len v@@23)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@0))) (= (seq.nth r@@0 i@@27) (seq.nth v@@23 (- (- (seq.len v@@23) i@@27) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@27))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_65692 v@@24)))
 (and (= (seq.len r@@1) (seq.len v@@24)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@1))) (= (seq.nth r@@1 i@@28) (seq.nth v@@24 (- (- (seq.len v@@24) i@@28) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@28))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65692 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_64904 v@@25)))
 (and (= (seq.len r@@2) (seq.len v@@25)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@2))) (= (seq.nth r@@2 i@@29) (seq.nth v@@25 (- (- (seq.len v@@25) i@@29) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@29))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64904 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_65101 v@@26)))
 (and (= (seq.len r@@3) (seq.len v@@26)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@3))) (= (seq.nth r@@3 i@@30) (seq.nth v@@26 (- (- (seq.len v@@26) i@@30) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@30))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65101 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_65298 v@@27)))
 (and (= (seq.len r@@4) (seq.len v@@27)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@4))) (= (seq.nth r@@4 i@@31) (seq.nth v@@27 (- (- (seq.len v@@27) i@@31) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@31))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65298 v@@27))
)))
(assert (forall ((v@@28 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_65889 v@@28)))
 (and (= (seq.len r@@5) (seq.len v@@28)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@5))) (= (seq.nth r@@5 i@@32) (seq.nth v@@28 (- (- (seq.len v@@28) i@@32) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@32))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65889 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_65495 v@@29)))
 (and (= (seq.len r@@6) (seq.len v@@29)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@6))) (= (seq.nth r@@6 i@@33) (seq.nth v@@29 (- (- (seq.len v@@29) i@@33) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@33))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_65495 v@@29))
)))
(assert (forall ((v@@30 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_64707 v@@30)))
 (and (= (seq.len r@@7) (seq.len v@@30)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@7))) (= (seq.nth r@@7 i@@34) (seq.nth v@@30 (- (- (seq.len v@@30) i@@34) 1))))
 :qid |SlidingNoncebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@34))
))))
 :qid |SlidingNoncebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_64707 v@@30))
)))
(assert (forall ((|l#0| Bool) (i@@35 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35) |l#0|)
 :qid |SlidingNoncebpl.250:54|
 :skolemid |396|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@35))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_72434|) (|l#1| |T@[$1_Event_EventHandle]Multiset_72434|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#1| handle@@0))))
(Multiset_72434 (|lambda#3| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#0@@0| handle@@0)) (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |SlidingNoncebpl.2382:13|
 :skolemid |397|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@31 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@31) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@31)))
 :qid |SlidingNoncebpl.129:29|
 :skolemid |398|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@31))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_11233)
(declare-fun $t14@1 () T@$Mutation_99401)
(declare-fun $t24@1 () T@$Mutation_11233)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_99401)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_98906)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_98906)
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_99584)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_99771)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_99864)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_99950)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_100023)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_100094)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_100178)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_100262)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_100333)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_100417)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_100501)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_100572)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_100669)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_100753)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_100837)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_100908)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_100979)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_101151)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_101222)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_101293)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_101377)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_99458)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|)
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
(declare-fun $t14 () T@$Mutation_99401)
(declare-fun $t14@0 () T@$Mutation_99401)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_99401)
(declare-fun $t24 () T@$Mutation_11233)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_99771)
(declare-fun $t8@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_99771)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun $t11@0@@0 () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies () |T@[Int]Bool|)
(declare-fun $t7@@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun $t3 () Int)
; Valid
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $t9@0 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t7@@1 () Int)
(declare-fun $t5 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2 () T@$Memory_99771)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_99771)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_99771)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0| () T@$1_SlidingNonce_SlidingNonce)
; Valid
(declare-fun $t35 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@4 () T@$Memory_101151)
(declare-fun $t36 () T@$1_Event_EventHandle)
(declare-fun $t37 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_99584)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_132997)
(declare-fun $t30 () Int)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_100979)
(declare-fun $t31 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun $t38 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t39 () T@$1_Event_EventHandle)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_72434_| (|T@[$1_Event_EventHandle]Multiset_72434| T@$1_Event_EventHandle T@Multiset_72434) |T@[$1_Event_EventHandle]Multiset_72434|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_72434|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_72434)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|Store__T@[$1_Event_EventHandle]Multiset_72434_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_72434|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_72434)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|Store__T@[$1_Event_EventHandle]Multiset_72434_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_72434_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_101151)
(declare-fun $t40 () T@$1_Event_EventHandle)
(declare-fun $t41 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun _$t0@@2 () (Seq Int))
(declare-fun $t7@@2 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@1 () T@$Memory_101222)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2@@0 () T@$Memory_99771)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_132997)
(declare-fun |$temp_0'bool'@4| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@3 () T@$Memory_101151)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_101151)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_100979)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_100979)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_92101)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_92101)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_92101)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_132997)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_132997)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t34 () Bool)
(declare-fun $t9@0@@0 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t32 () Int)
(declare-fun $t33 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$modifies () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$modifies () |T@[Int]Bool|)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory@0 () T@$Memory_101222)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int T@$1_DiemAccount_DiemWriteSetManager) |T@[Int]$1_DiemAccount_DiemWriteSetManager|)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|T@[Int]$1_DiemAccount_DiemWriteSetManager| Int) T@$1_DiemAccount_DiemWriteSetManager)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemWriteSetManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| (|Store__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemWriteSetManager_| ?x0 ?y1))) :weight 0)))
(declare-fun $t29@0 () T@$1_DiemAccount_DiemWriteSetManager)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemAccount_AdminTransactionEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun $t27 () Int)
(declare-fun $t24@0@@0 () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_101151)
(declare-fun $t22@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@1 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemAccount_CreateAccountEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t3@0 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$ret0@0 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t5@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t4@0 () Int)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t2@0 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t7@1 () T@$1_AccountLimits_AccountLimitMutationCapability)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$1_AccountLimits_grant_mutation_capability$0$$t1@0 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t19 () Int)
(declare-fun $t18 () Int)
(declare-fun $t15@0@@0 () Bool)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@1 () T@$Memory_99771)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@1 () T@$Memory_99771)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0@@0| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $t13 () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies@@0 () |T@[Int]Bool|)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t6@0 () Bool)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t3@0 () Bool)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t1@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_99584)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Roles_grant_diem_root_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_99584)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_99584)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_grant_diem_root_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_grant_diem_root_role$0$$t5@0 () Int)
(declare-fun $t12@@0 () Bool)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun $t8 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_104707)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_105265)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_129448)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_127269)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_127636)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_133966)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_134057)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_131983)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_128239)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_128175)
(declare-fun $t6@@0 () Int)
; Valid
(declare-fun $t7@@3 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun _$t1@@1 () (Seq Int))
(declare-fun $t10@0 () Int)
(declare-fun $t22 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t10@@1 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t16 () Bool)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1@@0 () T@$signer)
(declare-fun $t12@@1 () Bool)
(declare-fun $t11@@0 () Int)
(declare-fun $t9@@1 () Bool)
(declare-fun $t23@@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2@@0 () T@$Memory_101151)
(declare-fun $t24@@0 () T@$1_Event_EventHandle)
(declare-fun $t25@@0 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@3@@0 () T@$Memory_99584)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@0 () T@$Memory_132997)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2@@0 () T@$Memory_100979)
(declare-fun $t19@@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t26 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t27@@0 () T@$1_Event_EventHandle)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t28 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t29 () T@$1_Event_EventHandle)
(declare-fun $t30@@0 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t8@@0 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@2@@1 () T@$Memory_99771)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory@3 () T@$Memory_127269)
(declare-fun $t5@@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@4@@0| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1@@0 () T@$Memory_101151)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0@@0 () T@$Memory_101151)
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0@@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@3@@0| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1@@0 () T@$Memory_100979)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0@@0 () T@$Memory_100979)
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0@@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@2@@0| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1@@0 () T@$Memory_92101)
(declare-fun $1_Event_EventHandleGenerator_$memory@0@@0 () T@$Memory_92101)
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0@@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@0 () T@$Memory_132997)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@0 () T@$Memory_132997)
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t20@@0 () Int)
(declare-fun $t21 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_Event_EventHandleGenerator_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_AccountFreezing_FreezingBit_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory@1 () T@$Memory_127269)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@1 () Int)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory@2 () T@$Memory_127269)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory@0 () T@$Memory_127269)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int T@$1_VASPDomain_VASPDomainManager) |T@[Int]$1_VASPDomain_VASPDomainManager|)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|T@[Int]$1_VASPDomain_VASPDomainManager| Int) T@$1_VASPDomain_VASPDomainManager)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomainManager|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomainManager)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|Store__T@[Int]$1_VASPDomain_VASPDomainManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomainManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomainManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|Store__T@[Int]$1_VASPDomain_VASPDomainManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t13@1 () T@$1_VASPDomain_VASPDomainManager)
(declare-fun |inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_Event_EventHandles@0@@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t8@1 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t5@0 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t7@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t4@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t3@0 () Int)
(declare-fun $t17 () Int)
(declare-fun $1_VASPDomain_VASPDomainManager_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@2 () T@$Memory_99771)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@2 () T@$Memory_99771)
(declare-fun |$temp_0'$1_SlidingNonce_SlidingNonce'@0@@1| () T@$1_SlidingNonce_SlidingNonce)
(declare-fun $1_SlidingNonce_SlidingNonce_$modifies@@1 () |T@[Int]Bool|)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t10@0 () Bool)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t7@0 () Bool)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t3@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_99584)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun |inline$$1_Roles_grant_treasury_compliance_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_99584)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_99584)
(declare-fun |inline$$1_Roles_grant_treasury_compliance_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t9@0 () Int)
(declare-fun inline$$1_Roles_grant_treasury_compliance_role$0$$t2@0 () Int)
(declare-fun $t15 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t4 () Int)
(declare-fun $t6@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_treasury_compliance_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 239118) (let ((L2_correct  (and (=> (= (ControlFlow 0 180531) (- 0 243169)) (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453) (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816))) (= 186537453 0)) (= 186537453 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t1@@1)) 32))) (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453) (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816))) (= 186537453 0)) (= 186537453 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t1@@1)) 32))) (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (=> (= (ControlFlow 0 180531) (- 0 243285)) (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453) (= 6 $t10@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (= 6 $t10@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453) (= 6 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)) 0)) (= 3 $t10@0))) (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 $t10@0))) (and (= 186537453 0) (= 7 $t10@0))) (and (= 186537453 1) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453) (= 6 $t10@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t10@0))) (and (not (= (+ 16 (seq.len _$t1@@1)) 32)) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453) (= 6 $t10@0))))))))
(let ((anon41_Then_correct  (=> $t22 (=> (and (and (or (or (or (or (and (= $t18@@0 0) (= 7 $t10@@1)) (and (= $t18@@0 1) (= 7 $t10@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t18@@0) (= 6 $t10@@1))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t10@@1))) (and (not (= (+ 16 (seq.len _$t1@@1)) 32)) (= 7 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0 $t10@@1) (= (ControlFlow 0 180163) 180531))) L2_correct))))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t10@0 $abort_code@3@@0) (= (ControlFlow 0 180545) 180531))) L2_correct)))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0 $abort_code@1@@2) (= (ControlFlow 0 180559) 180531))) L2_correct)))
(let ((anon37_Then_correct  (=> $t16 (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= 6 $t10@@1)) (= $t10@@1 $t10@@1)) (and (= $t10@0 $t10@@1) (= (ControlFlow 0 180601) 180531))) L2_correct))))
(let ((anon36_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0 $abort_code@1@@2) (= (ControlFlow 0 180615) 180531))) L2_correct)))
(let ((anon34_Then_correct  (=> $t12@@1 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 $t10@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t10@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t11@@0)) 0)) (= 3 $t10@@1))) (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 $t10@@1))) (= $t10@@1 $t10@@1)) (and (= $t10@0 $t10@@1) (= (ControlFlow 0 180721) 180531))) L2_correct))))
(let ((anon33_Then_correct  (=> $t9@@1 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t10@@1)) (= $t10@@1 $t10@@1)) (and (= $t10@0 $t10@@1) (= (ControlFlow 0 180747) 180531))) L2_correct))))
(let ((anon31_correct  (=> (= $t23@@0 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816)) (=> (and (and (= $t24@@0 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816))) (= $t25@@0 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t18@@0))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2@@0) $t18@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2@@0) $t18@@0)))) (= $t23@@0 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t19@@0) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t19@@0)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t18@@0)))) 0)) (= $t18@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t18@@0))) 0))))) (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t18@@0)))) 0)) (= $t18@@0 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t18@@0))) 0)))) (and (= $t26 $t25@@0) (= $t27@@0 $t24@@0))) (and (and (= $es@0@@0 (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $es) $t27@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_72434| stream@@8)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@8) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t26))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@8) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t26) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $es) $t27@@0 stream_new@@3))))) (= $t28 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816))) (and (= $t29 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816))) (= $t30@@0 ($1_DiemAccount_CreateAccountEvent 186537453 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) 186537453)))))))) (and (=> (= (ControlFlow 0 180009) (- 0 242777)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (and (=> (= (ControlFlow 0 180009) (- 0 242787)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (and (=> (= (ControlFlow 0 180009) (- 0 242795)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 180009) (- 0 242805)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453)) (and (=> (= (ControlFlow 0 180009) (- 0 242815)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3))) (and (=> (= (ControlFlow 0 180009) (- 0 242827)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t7@@3)) 0))) (and (=> (= (ControlFlow 0 180009) (- 0 242845)) (not (not (= (|$addr#$signer| _$t0@@3) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 173345816))) (and (=> (= (ControlFlow 0 180009) (- 0 242859)) (not (= 186537453 0))) (=> (not (= 186537453 0)) (and (=> (= (ControlFlow 0 180009) (- 0 242870)) (not (= 186537453 1))) (=> (not (= 186537453 1)) (and (=> (= (ControlFlow 0 180009) (- 0 242881)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453)) (and (=> (= (ControlFlow 0 180009) (- 0 242891)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 180009) (- 0 242908)) (not (not (= (+ 16 (seq.len _$t1@@1)) 32)))) (=> (not (not (= (+ 16 (seq.len _$t1@@1)) 32))) (and (=> (= (ControlFlow 0 180009) (- 0 242926)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) 186537453)) (and (=> (= (ControlFlow 0 180009) (- 0 242934)) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory@2@@0) 173345816) (and (=> (= (ControlFlow 0 180009) (- 0 242942)) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) 186537453) (and (=> (= (ControlFlow 0 180009) (- 0 242950)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) 186537453)) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) 186537453)) 1) (and (=> (= (ControlFlow 0 180009) (- 0 242964)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) $t8@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) $t8@@0)) 1))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) $t8@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) $t8@@0)) 1)) (and (=> (= (ControlFlow 0 180009) (- 0 242972)) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0) (and (=> (= (ControlFlow 0 180009) (- 0 242980)) (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory@2@@1) $t8@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory@2@@1) $t8@@0) (and (=> (= (ControlFlow 0 180009) (- 0 242988)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2@@0) $t8@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2@@0) $t8@@0))))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2@@0) $t8@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory@2@@0) $t8@@0)))) (and (=> (= (ControlFlow 0 180009) (- 0 242996)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0)))) 0)) (= $t8@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0)))) 0)) (= $t8@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0))) 0)))) (and (=> (= (ControlFlow 0 180009) (- 0 243004)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0)))) 0)) (= $t8@@0 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0))) 0))))) (=> (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0)))) 0)) (= $t8@@0 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) $t8@@0))) 0)))) (and (=> (= (ControlFlow 0 180009) (- 0 243012)) (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory@3) $t8@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory@3) $t8@@0) (and (=> (= (ControlFlow 0 180009) (- 0 243020)) (= $t28 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t5@@0) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t5@@0)))) (=> (= $t28 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t5@@0) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t5@@0))) (and (=> (= (ControlFlow 0 180009) (- 0 243035)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@38) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) addr@@38)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@38)))))
 :qid |SlidingNoncebpl.13945:15|
 :skolemid |283|
))) (=> (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@39) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory@2@@0) addr@@39)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@39)))))
 :qid |SlidingNoncebpl.13945:15|
 :skolemid |283|
)) (and (=> (= (ControlFlow 0 180009) (- 0 243070)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_72434| stream@@9)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@9) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30@@0))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@9) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@8 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@2) handle@@8)) (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@2) handle@@8))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@2) handle@@8)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@2) handle@@8)) v@@39))
 :qid |SlidingNoncebpl.139:13|
 :skolemid |3|
)))
 :qid |SlidingNoncebpl.2388:13|
 :skolemid |65|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_72434| stream@@10)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@10) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30@@0))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@10) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@5))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@9 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@3) handle@@9)) (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@3) handle@@9))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@3) handle@@9)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@3) handle@@9)) v@@40))
 :qid |SlidingNoncebpl.139:13|
 :skolemid |3|
)))
 :qid |SlidingNoncebpl.2388:13|
 :skolemid |65|
))))) (=> (= (ControlFlow 0 180009) (- 0 243095)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t29)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_72434| stream@@11)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@11) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30@@0))))
(Multiset_72434 (|Store__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@11) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t30@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $EmptyEventStore) $t29 stream_new@@6))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@4) handle@@10)) (|l#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@4) handle@@10))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| actual@@4) handle@@10)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| expected@@4) handle@@10)) v@@41))
 :qid |SlidingNoncebpl.139:13|
 :skolemid |3|
)))
 :qid |SlidingNoncebpl.2388:13|
 :skolemid |65|
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon45_Else_correct  (=> (and (and (not |$temp_0'bool'@4@@0|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1@@0 ($Memory_101151 (|Store__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2@@0 $1_DiemAccount_AccountOperationsCapability_$memory@1@@0) (= (ControlFlow 0 179490) 180009))) anon31_correct)))
(let ((anon45_Then_correct  (=> (and (and |$temp_0'bool'@4@@0| (= $1_DiemAccount_AccountOperationsCapability_$memory@0@@0 ($Memory_101151 (|Store__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0@@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2@@0 $1_DiemAccount_AccountOperationsCapability_$memory@0@@0) (= (ControlFlow 0 180021) 180009))) anon31_correct)))
(let ((anon44_Else_correct  (=> (not |$temp_0'bool'@3@@0|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1@@0 ($Memory_100979 (|Store__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t18@@0 false) (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2@@0 $1_AccountFreezing_FreezingBit_$memory@1@@0)) (and (=> (= (ControlFlow 0 179476) 180021) anon45_Then_correct) (=> (= (ControlFlow 0 179476) 179490) anon45_Else_correct))))))
(let ((anon44_Then_correct  (=> |$temp_0'bool'@3@@0| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0@@0 ($Memory_100979 (|Store__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t18@@0 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t18@@0 |$temp_0'$1_AccountFreezing_FreezingBit'@0@@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2@@0 $1_AccountFreezing_FreezingBit_$memory@0@@0)) (and (=> (= (ControlFlow 0 180033) 180021) anon45_Then_correct) (=> (= (ControlFlow 0 180033) 179490) anon45_Else_correct))))))
(let ((anon43_Else_correct  (=> (and (not |$temp_0'bool'@2@@0|) (= $1_Event_EventHandleGenerator_$memory@1@@0 ($Memory_92101 (|Store__T@[Int]Bool_| (|domain#$Memory_92101| $1_Event_EventHandleGenerator_$memory) $t18@@0 false) (|contents#$Memory_92101| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 179462) 180033) anon44_Then_correct) (=> (= (ControlFlow 0 179462) 179476) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (and |$temp_0'bool'@2@@0| (= $1_Event_EventHandleGenerator_$memory@0@@0 ($Memory_92101 (|Store__T@[Int]Bool_| (|domain#$Memory_92101| $1_Event_EventHandleGenerator_$memory) $t18@@0 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_92101| $1_Event_EventHandleGenerator_$memory) $t18@@0 |$temp_0'$1_Event_EventHandleGenerator'@0@@0|)))) (and (=> (= (ControlFlow 0 180045) 180033) anon44_Then_correct) (=> (= (ControlFlow 0 180045) 179476) anon44_Else_correct)))))
(let ((anon42_Else_correct  (=> (not |$temp_0'bool'@1@@0|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1@@0 ($Memory_132997 (|Store__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t18@@0 false) (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2@@0 $1_DiemAccount_DiemAccount_$memory@1@@0)) (and (=> (= (ControlFlow 0 179448) 180045) anon43_Then_correct) (=> (= (ControlFlow 0 179448) 179462) anon43_Else_correct))))))
(let ((anon42_Then_correct  (=> |$temp_0'bool'@1@@0| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0@@0 ($Memory_132997 (|Store__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t18@@0 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t18@@0 |$temp_0'$1_DiemAccount_DiemAccount'@0@@0|))) (= $1_DiemAccount_DiemAccount_$memory@2@@0 $1_DiemAccount_DiemAccount_$memory@0@@0)) (and (=> (= (ControlFlow 0 180057) 180045) anon43_Then_correct) (=> (= (ControlFlow 0 180057) 179462) anon43_Else_correct))))))
(let ((anon41_Else_correct  (=> (not $t22) (and (=> (= (ControlFlow 0 179436) 180057) anon42_Then_correct) (=> (= (ControlFlow 0 179436) 179448) anon42_Else_correct)))))
(let ((anon40_Else_correct  (=> (not $abort_flag@2@@0) (=> (and (and (= $t18@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= $t19@@0 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t20@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= $t21 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)))) (and (=> (= (ControlFlow 0 179430) (- 0 242231)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t18@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $t18@@0)) (and (=> (= (ControlFlow 0 179430) (- 0 242242)) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816) (and (=> (= (ControlFlow 0 179430) (- 0 242251)) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) $t18@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) $t18@@0) (and (=> (= (ControlFlow 0 179430) (- 0 242259)) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies@@0 $t18@@0)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies@@0 $t18@@0) (and (=> (= (ControlFlow 0 179430) (- 0 242265)) (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t18@@0)) (=> (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 $t18@@0) (and (=> (= (ControlFlow 0 179430) (- 0 242271)) (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t18@@0)) (=> (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t18@@0) (and (=> (= (ControlFlow 0 179430) (- 0 242277)) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies@@0 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies@@0 173345816) (=> (= $t22  (or (or (or (or (= $t18@@0 0) (= $t18@@0 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $t18@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t1@@1)) 32)))) (and (=> (= (ControlFlow 0 179430) 180163) anon41_Then_correct) (=> (= (ControlFlow 0 179430) 179436) anon41_Else_correct)))))))))))))))))))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon17_Else_correct  (=> (and (and (not $abort_flag@1@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $1_VASPDomain_VASPDomainManager_$memory@3 $1_VASPDomain_VASPDomainManager_$memory@1) (= $abort_flag@2@@0 $abort_flag@1@@0))) (and (=> (= (ControlFlow 0 179114) 180545) anon40_Then_correct) (=> (= (ControlFlow 0 179114) 179430) anon40_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$L3_correct  (=> (= $abort_code@3@@0 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@1) (=> (and (= $1_VASPDomain_VASPDomainManager_$memory@3 $1_VASPDomain_VASPDomainManager_$memory@2) (= $abort_flag@2@@0 true)) (and (=> (= (ControlFlow 0 178988) 180545) anon40_Then_correct) (=> (= (ControlFlow 0 178988) 179430) anon40_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon17_Then_correct  (=> $abort_flag@1@@0 (=> (and (and (= $abort_code@2@@0 $abort_code@2@@0) (= $1_VASPDomain_VASPDomainManager_$memory@2 $1_VASPDomain_VASPDomainManager_$memory@1)) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@1 $abort_code@2@@0) (= (ControlFlow 0 179128) 178988))) inline$$1_VASPDomain_publish_vasp_domain_manager$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon16_Then$1_correct  (=> (= $1_VASPDomain_VASPDomainManager_$memory@1 $1_VASPDomain_VASPDomainManager_$memory) (=> (and (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (= $abort_flag@1@@0 true)) (and (=> (= (ControlFlow 0 179180) 179128) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon17_Then_correct) (=> (= (ControlFlow 0 179180) 179114) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon16_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= (ControlFlow 0 179178) 179180)) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon16_Then$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon16_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (=> (and (and (= $1_VASPDomain_VASPDomainManager_$memory@0 ($Memory_127269 (|Store__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) true) (|Store__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t13@1))) (= $1_VASPDomain_VASPDomainManager_$memory@1 $1_VASPDomain_VASPDomainManager_$memory@0)) (and (= $abort_code@2@@0 $abort_code@1@@2) (= $abort_flag@1@@0 $abort_flag@0@@2))) (and (=> (= (ControlFlow 0 179104) 179128) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon17_Then_correct) (=> (= (ControlFlow 0 179104) 179114) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon15_Else_correct  (=> (and (not $abort_flag@0@@2) (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t13@1 ($1_VASPDomain_VASPDomainManager |inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 179082) 179178) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon16_Then_correct) (=> (= (ControlFlow 0 179082) 179104) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon16_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon15_Then_correct  (=> $abort_flag@0@@2 (=> (and (and (= $abort_code@1@@2 $abort_code@1@@2) (= $1_VASPDomain_VASPDomainManager_$memory@2 $1_VASPDomain_VASPDomainManager_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@1 $abort_code@1@@2) (= (ControlFlow 0 179194) 178988))) inline$$1_VASPDomain_publish_vasp_domain_manager$0$L3_correct))))
(let ((|inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$res@0|) false) (= $1_Event_EventHandles@0@@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 179060) 179194) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon15_Then_correct) (=> (= (ControlFlow 0 179060) 179082) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon15_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon14_Then_correct  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 179066) 179060)) |inline$$1_Event_new_event_handle'$1_VASPDomain_VASPDomainEvent'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon14_Else_correct  (=> (not inline$$Not$0$dst@1@@1) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0) (= $1_VASPDomain_VASPDomainManager_$memory@2 $1_VASPDomain_VASPDomainManager_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@1 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0) (= (ControlFlow 0 178982) 178988))) inline$$1_VASPDomain_publish_vasp_domain_manager$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon13_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0) (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0 6)) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t11@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 178966) 179066) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon14_Then_correct) (=> (= (ControlFlow 0 178966) 178982) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon14_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t8@1)) (= (ControlFlow 0 178926) 178966)) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon13_Else$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon13_Else_correct  (=> (not inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t5@0) (=> (and (and (|$IsValid'address'| inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t7@0) (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t7@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t8@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t7@0)) (= (ControlFlow 0 178932) 178926))) inline$$Not$0$anon0_correct@@1))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon13_Then_correct  (=> (and inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t5@0 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t4@0)) (= 5 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t4@0)) 1)) (= 3 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0))) (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) 186537453)) (= 2 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0)))) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0) (= $1_VASPDomain_VASPDomainManager_$memory@2 $1_VASPDomain_VASPDomainManager_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@1 inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t6@0) (= (ControlFlow 0 179266) 178988))) inline$$1_VASPDomain_publish_vasp_domain_manager$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon0_correct  (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t3@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= inline$$1_DiemAccount_create_signer$0$signer@1@@0 inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (and (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t5@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@3@@0) inline$$1_VASPDomain_publish_vasp_domain_manager$0$$t4@0)) 1))) (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) 186537453)))))) (and (=> (= (ControlFlow 0 178870) 179266) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon13_Then_correct) (=> (= (ControlFlow 0 178870) 178932) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon13_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (not $abort_flag@0@@2) (= $t17 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (and (=> (= (ControlFlow 0 179270) (- 0 241690)) (|Select__T@[Int]Bool_| $1_VASPDomain_VASPDomainManager_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (=> (|Select__T@[Int]Bool_| $1_VASPDomain_VASPDomainManager_$modifies (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (=> (= (ControlFlow 0 179270) 178870) inline$$1_VASPDomain_publish_vasp_domain_manager$0$anon0_correct))))))
(let ((anon13_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory@2@@1) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (and (=> (= (ControlFlow 0 178290) 180559) anon39_Then_correct) (=> (= (ControlFlow 0 178290) 179270) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_SlidingNonce_SlidingNonce_$memory@1@@2 ($Memory_99771 (|Store__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) false) (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2@@1 $1_SlidingNonce_SlidingNonce_$memory@1@@2) (= (ControlFlow 0 178259) 178290))) anon13_correct@@0)))
(let ((anon38_Then_correct  (=> (and (and |$temp_0'bool'@0@@1| (= $1_SlidingNonce_SlidingNonce_$memory@0@@2 ($Memory_99771 (|Store__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) |$temp_0'$1_SlidingNonce_SlidingNonce'@0@@1|)))) (and (= $1_SlidingNonce_SlidingNonce_$memory@2@@1 $1_SlidingNonce_SlidingNonce_$memory@0@@2) (= (ControlFlow 0 180573) 178290))) anon13_correct@@0)))
(let ((anon37_Else_correct  (=> (not $t16) (and (=> (= (ControlFlow 0 178245) 180573) anon38_Then_correct) (=> (= (ControlFlow 0 178245) 178259) anon38_Else_correct)))))
(let ((anon36_Else_correct  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 178239) (- 0 241557)) (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies@@1 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (=> (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies@@1 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (=> (= $t16 (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (and (=> (= (ControlFlow 0 178239) 180601) anon37_Then_correct) (=> (= (ControlFlow 0 178239) 178245) anon37_Else_correct))))))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0)) (and (=> (= (ControlFlow 0 178057) 180615) anon36_Then_correct) (=> (= (ControlFlow 0 178057) 178239) anon36_Else_correct))))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon15_Then_correct  (=> inline$$1_Roles_grant_treasury_compliance_role$0$$t10@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (= 6 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0)) (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0) (= (ControlFlow 0 178051) 178057))) inline$$1_Roles_grant_treasury_compliance_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon14_Then_correct  (=> (and (and inline$$1_Roles_grant_treasury_compliance_role$0$$t7@0 (or (or (or (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) inline$$1_Roles_grant_treasury_compliance_role$0$$t6@0)) (= 5 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) inline$$1_Roles_grant_treasury_compliance_role$0$$t6@0)) 0)) (= 3 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0))) (and (not (= (|$addr#$signer| _$t0@@3) 173345816)) (= 2 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0)))) (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0) (= (ControlFlow 0 178149) 178057))) inline$$1_Roles_grant_treasury_compliance_role$0$L2_correct)))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon13_Then_correct  (=> inline$$1_Roles_grant_treasury_compliance_role$0$$t5@0 (=> (and (and (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) 186537453)) (= 2 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0)) (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0) (= (ControlFlow 0 178179) 178057))) inline$$1_Roles_grant_treasury_compliance_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon12_Then_correct  (=> inline$$1_Roles_grant_treasury_compliance_role$0$$t3@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0)) (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0 inline$$1_Roles_grant_treasury_compliance_role$0$$t4@0) (= (ControlFlow 0 178205) 178057))) inline$$1_Roles_grant_treasury_compliance_role$0$L2_correct))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon11_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) 1) (= $1_Roles_RoleId_$memory@3@@0 $1_Roles_RoleId_$memory@2@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 178009) 180615) anon36_Then_correct) (=> (= (ControlFlow 0 178009) 178239) anon36_Else_correct))))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon16_Else_correct  (=> (and (and (not |inline$$1_Roles_grant_treasury_compliance_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1@@0 ($Memory_99584 (|Store__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) false) (|contents#$Memory_99584| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@0) (= (ControlFlow 0 177983) 178009))) inline$$1_Roles_grant_treasury_compliance_role$0$anon11_correct)))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon16_Then_correct  (=> (and (and |inline$$1_Roles_grant_treasury_compliance_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0@@0 ($Memory_99584 (|Store__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) |inline$$1_Roles_grant_treasury_compliance_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@0) (= (ControlFlow 0 178023) 178009))) inline$$1_Roles_grant_treasury_compliance_role$0$anon11_correct)))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon15_Else_correct  (=> (not inline$$1_Roles_grant_treasury_compliance_role$0$$t10@0) (and (=> (= (ControlFlow 0 177969) 178023) inline$$1_Roles_grant_treasury_compliance_role$0$anon16_Then_correct) (=> (= (ControlFlow 0 177969) 177983) inline$$1_Roles_grant_treasury_compliance_role$0$anon16_Else_correct)))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_grant_treasury_compliance_role$0$$t7@0) (|$IsValid'u64'| 1)) (=> (and (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t9@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (=> (= 1 0) (= inline$$1_Roles_grant_treasury_compliance_role$0$$t9@0 173345816))) (and (=> (= 1 1) (= inline$$1_Roles_grant_treasury_compliance_role$0$$t9@0 186537453)) (= inline$$1_Roles_grant_treasury_compliance_role$0$$t10@0 (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))))) (and (=> (= (ControlFlow 0 177963) 178051) inline$$1_Roles_grant_treasury_compliance_role$0$anon15_Then_correct) (=> (= (ControlFlow 0 177963) 177969) inline$$1_Roles_grant_treasury_compliance_role$0$anon15_Else_correct))))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon13_Else_correct  (=> (not inline$$1_Roles_grant_treasury_compliance_role$0$$t5@0) (=> (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t6@0 (|$addr#$signer| _$t0@@3)) (= inline$$1_Roles_grant_treasury_compliance_role$0$$t7@0  (or (or (or (not (= (|$addr#$signer| _$t0@@3) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) inline$$1_Roles_grant_treasury_compliance_role$0$$t6@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) inline$$1_Roles_grant_treasury_compliance_role$0$$t6@0)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816))))) (and (=> (= (ControlFlow 0 177897) 178149) inline$$1_Roles_grant_treasury_compliance_role$0$anon14_Then_correct) (=> (= (ControlFlow 0 177897) 177963) inline$$1_Roles_grant_treasury_compliance_role$0$anon14_Else_correct))))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon12_Else_correct  (=> (and (not inline$$1_Roles_grant_treasury_compliance_role$0$$t3@0) (= inline$$1_Roles_grant_treasury_compliance_role$0$$t5@0  (not (= (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0) 186537453)))) (and (=> (= (ControlFlow 0 177827) 178179) inline$$1_Roles_grant_treasury_compliance_role$0$anon13_Then_correct) (=> (= (ControlFlow 0 177827) 177897) inline$$1_Roles_grant_treasury_compliance_role$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_grant_treasury_compliance_role$0$anon0_correct  (=> (and (and (= inline$$1_Roles_grant_treasury_compliance_role$0$$t2@0 (|$addr#$signer| _$t0@@3)) (= inline$$1_DiemAccount_create_signer$0$signer@1@@0 inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (and (= _$t0@@3 _$t0@@3) (= inline$$1_Roles_grant_treasury_compliance_role$0$$t3@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 177805) 178205) inline$$1_Roles_grant_treasury_compliance_role$0$anon12_Then_correct) (=> (= (ControlFlow 0 177805) 177827) inline$$1_Roles_grant_treasury_compliance_role$0$anon12_Else_correct)))))
(let ((anon35_Else_correct  (=> (not false) (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1@@0 inline$$1_DiemAccount_create_signer$0$signer@1@@0) (= $t15 (|$addr#$signer| _$t0@@3))) (and (=> (= (ControlFlow 0 178209) (- 0 241054)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1@@0)) (=> (= (ControlFlow 0 178209) 177805) inline$$1_Roles_grant_treasury_compliance_role$0$anon0_correct)))))))
(let ((anon35_Then_correct true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1@@0 ($signer 186537453)) (and (=> (= (ControlFlow 0 177141) 180629) anon35_Then_correct) (=> (= (ControlFlow 0 177141) 178209) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not $t12@@1) (=> (and (|$IsValid'address'| 186537453) (= (ControlFlow 0 177147) 177141)) inline$$1_DiemAccount_create_signer$0$anon0_correct@@0))))
(let ((anon33_Else_correct  (=> (not $t9@@1) (=> (and (= $t11@@0 (|$addr#$signer| _$t0@@3)) (= $t12@@1  (or (or (or (not (= (|$addr#$signer| _$t0@@3) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $t11@@0)) 0))) (not (= (|$addr#$signer| _$t0@@3) 173345816))))) (and (=> (= (ControlFlow 0 177095) 180721) anon34_Then_correct) (=> (= (ControlFlow 0 177095) 177147) anon34_Else_correct))))))
(let ((anon0$1_correct@@3  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@40)) 0)) (= addr@@40 173345816)))
 :qid |SlidingNoncebpl.13136:20|
 :skolemid |244|
))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@41)) 1)) (= addr@@41 186537453)))
 :qid |SlidingNoncebpl.13144:20|
 :skolemid |245|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@42)) 2))))))
 :qid |SlidingNoncebpl.13152:20|
 :skolemid |246|
)))) (=> (and (and (and (and (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@43)) 2))))))
 :qid |SlidingNoncebpl.13156:20|
 :skolemid |247|
)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@44)) 2))))))
 :qid |SlidingNoncebpl.13160:20|
 :skolemid |248|
))) (and (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@45)) 2))))))
 :qid |SlidingNoncebpl.13164:20|
 :skolemid |249|
)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@46)) 2)))))
 :qid |SlidingNoncebpl.13168:20|
 :skolemid |250|
)))) (and (and (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@47)) 2)))))
 :qid |SlidingNoncebpl.13172:20|
 :skolemid |251|
)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@48)) 2)))))
 :qid |SlidingNoncebpl.13176:20|
 :skolemid |252|
))) (and (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_104707| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@49) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@49)) 4))))
 :qid |SlidingNoncebpl.13180:20|
 :skolemid |253|
)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@50) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@50)) 3))))
 :qid |SlidingNoncebpl.13184:20|
 :skolemid |254|
))))) (and (and (and (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@51) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@51)) 3))))
 :qid |SlidingNoncebpl.13188:20|
 :skolemid |255|
)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@52) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@52)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@52)) 3))))
 :qid |SlidingNoncebpl.13192:20|
 :skolemid |256|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) 186537453)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99864| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100023| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@53 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@53))))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i1@@0 $i_1@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@54 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@54)))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@54 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_99950| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@54)))) i1@@0)))) 3))))
 :qid |SlidingNoncebpl.13212:151|
 :skolemid |257|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100094| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))))) (=> (and (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100178| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100262| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100333| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100417| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100501| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100572| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100669| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129448| $1_DualAttestation_Credential_$memory) addr1@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr1@@0)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr1@@0)) 2)))))
 :qid |SlidingNoncebpl.13249:20|
 :skolemid |258|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100753| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100837| $1_ChainId_ChainId_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100908| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 173345816))))))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_100908| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816))) (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@55) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@55)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@55)))) 0)) (= addr@@55 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@55))) 0)))))))
 :qid |SlidingNoncebpl.13277:20|
 :skolemid |259|
)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@56) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@56) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@56)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@56)))) 0)) (= addr@@56 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@56))) 0)))))))
 :qid |SlidingNoncebpl.13281:20|
 :skolemid |260|
)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (= (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@57)))
 :qid |SlidingNoncebpl.13293:20|
 :skolemid |261|
)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@58)  (and (= addr@@58 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@58))))
 :qid |SlidingNoncebpl.13297:20|
 :skolemid |262|
)))) (and (and (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (= (|Select__T@[Int]Bool_| (|domain#$Memory_101222| $1_DiemAccount_DiemWriteSetManager_$memory) addr@@59)  (and (= addr@@59 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@59))))
 :qid |SlidingNoncebpl.13301:20|
 :skolemid |263|
)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (= (|Select__T@[Int]Bool_| (|domain#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) addr@@60)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@60)) 1))))
 :qid |SlidingNoncebpl.13305:20|
 :skolemid |264|
))) (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (= (|Select__T@[Int]Bool_| (|domain#$Memory_127636| $1_VASPDomain_VASPDomains_$memory) addr@@61)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@61)) 5))))
 :qid |SlidingNoncebpl.13309:20|
 :skolemid |265|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_133966| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@62) (|Select__T@[Int]Bool_| (|domain#$Memory_134057| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@62)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@62)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@62)) 2)))))
 :qid |SlidingNoncebpl.13313:20|
 :skolemid |266|
))))) (and (and (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (= (|Select__T@[Int]Bool_| (|domain#$Memory_131983| $1_DesignatedDealer_Dealer_$memory) addr@@63)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@63)) 2))))
 :qid |SlidingNoncebpl.13317:20|
 :skolemid |267|
)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (= (|Select__T@[Int]Bool_| (|domain#$Memory_129448| $1_DualAttestation_Credential_$memory) addr@@64)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@64)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@64)) 5)))))
 :qid |SlidingNoncebpl.13321:20|
 :skolemid |268|
))) (and (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (= (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@65) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) addr@@65)))
 :qid |SlidingNoncebpl.13325:20|
 :skolemid |269|
)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) addr@@66) (|Select__T@[Int]Bool_| (|domain#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) addr@@66)))
 :qid |SlidingNoncebpl.13329:20|
 :skolemid |270|
)))) (and (and (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (= (|Select__T@[Int]Bool_| (|domain#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) addr@@67)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@67)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@67)) 1)))))
 :qid |SlidingNoncebpl.13333:20|
 :skolemid |271|
)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (= (|Select__T@[Int]Bool_| (|domain#$Memory_105265| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@68)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@68)) 3))))
 :qid |SlidingNoncebpl.13337:20|
 :skolemid |272|
))) (and (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (= (|Select__T@[Int]Bool_| (|domain#$Memory_104707| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@69)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@69)) 4))))
 :qid |SlidingNoncebpl.13341:20|
 :skolemid |273|
)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (= (|Select__T@[Int]Bool_| (|domain#$Memory_128239| $1_VASP_ParentVASP_$memory) addr@@70)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@70)) 5))))
 :qid |SlidingNoncebpl.13345:20|
 :skolemid |274|
))))))) (and (and (and (and (and (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (= (|Select__T@[Int]Bool_| (|domain#$Memory_128175| $1_VASP_ChildVASP_$memory) addr@@71)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_99584| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) addr@@71)) 6))))
 :qid |SlidingNoncebpl.13349:20|
 :skolemid |275|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101293| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_101377| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_99458| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816)))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) ($1_Signer_is_txn_signer _$t0@@3)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@3)))) (and (and (and (|$IsValid'vec'u8''| _$t1@@1) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@9)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@9))
 :qid |SlidingNoncebpl.13383:20|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $a_0@@10)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@10))
 :qid |SlidingNoncebpl.13387:20|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99584| $1_Roles_RoleId_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@11)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@11))
 :qid |SlidingNoncebpl.13391:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_99771| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@11))
)))) (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@12)))
(|$IsValid'$1_VASPDomain_VASPDomainManager'| $rsc@@12))
 :qid |SlidingNoncebpl.13395:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomainManager_| (|contents#$Memory_127269| $1_VASPDomain_VASPDomainManager_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $a_0@@13)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@13))
 :qid |SlidingNoncebpl.13399:20|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_100979| $1_AccountFreezing_FreezingBit_$memory) $a_0@@13))
))) (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $a_0@@14)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@14) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1))))
 :qid |SlidingNoncebpl.13403:20|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_132997| $1_DiemAccount_DiemAccount_$memory) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@15)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@15))
 :qid |SlidingNoncebpl.13407:20|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@15))
)))))) (and (and (and (and (= $t4 186537453) (= $t5@@0 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_101151| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t6@@1 186537453) (= $t7@@3 (|$addr#$signer| _$t0@@3)))) (and (and (= $t8@@0 186537453) (|Select__T@[Int]Bool_| $1_DiemAccount_DiemAccount_$modifies@@0 $t6@@1)) (and (|Select__T@[Int]Bool_| $1_SlidingNonce_SlidingNonce_$modifies@@1 $t6@@1) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 $t6@@1)))) (and (and (and (|Select__T@[Int]Bool_| $1_AccountFreezing_FreezingBit_$modifies@@0 $t6@@1) (|Select__T@[Int]Bool_| $1_DiemAccount_AccountOperationsCapability_$modifies@@0 173345816)) (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies@@0 186537453) (|Select__T@[Int]Bool_| $1_VASPDomain_VASPDomainManager_$modifies $t6@@1))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 186537453) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@1 _$t1@@1) (= $t9@@1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_98906| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))))) (and (=> (= (ControlFlow 0 177025) 180747) anon33_Then_correct) (=> (= (ControlFlow 0 177025) 177095) anon33_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_72434_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_72434| stream@@12) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_72434| stream@@12) v@@42) 0)
 :qid |SlidingNoncebpl.134:13|
 :skolemid |2|
))))
 :qid |SlidingNoncebpl.2372:13|
 :skolemid |64|
))) (= (ControlFlow 0 175527) 177025)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 239118) 175527) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
