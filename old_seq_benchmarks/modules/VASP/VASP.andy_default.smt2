(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_86550 0)) ((($Memory_86550 (|domain#$Memory_86550| |T@[Int]Bool|) (|contents#$Memory_86550| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_132763 0)) ((($Memory_132763 (|domain#$Memory_132763| |T@[Int]Bool|) (|contents#$Memory_132763| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_129665 0)) ((($Memory_129665 (|domain#$Memory_129665| |T@[Int]Bool|) (|contents#$Memory_129665| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_127670 0)) ((($Memory_127670 (|domain#$Memory_127670| |T@[Int]Bool|) (|contents#$Memory_127670| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_127950 0)) ((($Memory_127950 (|domain#$Memory_127950| |T@[Int]Bool|) (|contents#$Memory_127950| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_127637 0)) ((($Memory_127637 (|domain#$Memory_127637| |T@[Int]Bool|) (|contents#$Memory_127637| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_127422 0)) ((($Memory_127422 (|domain#$Memory_127422| |T@[Int]Bool|) (|contents#$Memory_127422| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_124932 0)) ((($Memory_124932 (|domain#$Memory_124932| |T@[Int]Bool|) (|contents#$Memory_124932| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_124868 0)) ((($Memory_124868 (|domain#$Memory_124868| |T@[Int]Bool|) (|contents#$Memory_124868| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_115550 0)) ((($Memory_115550 (|domain#$Memory_115550| |T@[Int]Bool|) (|contents#$Memory_115550| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_115486 0)) ((($Memory_115486 (|domain#$Memory_115486| |T@[Int]Bool|) (|contents#$Memory_115486| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_115174 0)) ((($Memory_115174 (|domain#$Memory_115174| |T@[Int]Bool|) (|contents#$Memory_115174| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_111986 0)) ((($Memory_111986 (|domain#$Memory_111986| |T@[Int]Bool|) (|contents#$Memory_111986| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111699 0)) ((($Memory_111699 (|domain#$Memory_111699| |T@[Int]Bool|) (|contents#$Memory_111699| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_111480 0)) ((($Memory_111480 (|domain#$Memory_111480| |T@[Int]Bool|) (|contents#$Memory_111480| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_129454 0)) ((($Memory_129454 (|domain#$Memory_129454| |T@[Int]Bool|) (|contents#$Memory_129454| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104435 0)) ((($Memory_104435 (|domain#$Memory_104435| |T@[Int]Bool|) (|contents#$Memory_104435| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104348 0)) ((($Memory_104348 (|domain#$Memory_104348| |T@[Int]Bool|) (|contents#$Memory_104348| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101145 0)) ((($Memory_101145 (|domain#$Memory_101145| |T@[Int]Bool|) (|contents#$Memory_101145| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101058 0)) ((($Memory_101058 (|domain#$Memory_101058| |T@[Int]Bool|) (|contents#$Memory_101058| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_104699 0)) ((($Memory_104699 (|domain#$Memory_104699| |T@[Int]Bool|) (|contents#$Memory_104699| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_113886 0)) ((($Memory_113886 (|domain#$Memory_113886| |T@[Int]Bool|) (|contents#$Memory_113886| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105025 0)) ((($Memory_105025 (|domain#$Memory_105025| |T@[Int]Bool|) (|contents#$Memory_105025| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104608 0)) ((($Memory_104608 (|domain#$Memory_104608| |T@[Int]Bool|) (|contents#$Memory_104608| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123802 0)) ((($Memory_123802 (|domain#$Memory_123802| |T@[Int]Bool|) (|contents#$Memory_123802| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_104926 0)) ((($Memory_104926 (|domain#$Memory_104926| |T@[Int]Bool|) (|contents#$Memory_104926| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_100760 0)) ((($Memory_100760 (|domain#$Memory_100760| |T@[Int]Bool|) (|contents#$Memory_100760| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100696 0)) ((($Memory_100696 (|domain#$Memory_100696| |T@[Int]Bool|) (|contents#$Memory_100696| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96769 0)) ((($Memory_96769 (|domain#$Memory_96769| |T@[Int]Bool|) (|contents#$Memory_96769| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96682 0)) ((($Memory_96682 (|domain#$Memory_96682| |T@[Int]Bool|) (|contents#$Memory_96682| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96595 0)) ((($Memory_96595 (|domain#$Memory_96595| |T@[Int]Bool|) (|contents#$Memory_96595| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96508 0)) ((($Memory_96508 (|domain#$Memory_96508| |T@[Int]Bool|) (|contents#$Memory_96508| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96421 0)) ((($Memory_96421 (|domain#$Memory_96421| |T@[Int]Bool|) (|contents#$Memory_96421| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_97034 0)) ((($Memory_97034 (|domain#$Memory_97034| |T@[Int]Bool|) (|contents#$Memory_97034| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95547 0)) ((($Memory_95547 (|domain#$Memory_95547| |T@[Int]Bool|) (|contents#$Memory_95547| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95613 0)) ((($Memory_95613 (|domain#$Memory_95613| |T@[Int]Bool|) (|contents#$Memory_95613| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95466 0)) ((($Memory_95466 (|domain#$Memory_95466| |T@[Int]Bool|) (|contents#$Memory_95466| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_95385 0)) ((($Memory_95385 (|domain#$Memory_95385| |T@[Int]Bool|) (|contents#$Memory_95385| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_95304 0)) ((($Memory_95304 (|domain#$Memory_95304| |T@[Int]Bool|) (|contents#$Memory_95304| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_95223 0)) ((($Memory_95223 (|domain#$Memory_95223| |T@[Int]Bool|) (|contents#$Memory_95223| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_95109 0)) ((($Memory_95109 (|domain#$Memory_95109| |T@[Int]Bool|) (|contents#$Memory_95109| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_128591 0)) ((($Memory_128591 (|domain#$Memory_128591| |T@[Int]Bool|) (|contents#$Memory_128591| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95142 0)) ((($Memory_95142 (|domain#$Memory_95142| |T@[Int]Bool|) (|contents#$Memory_95142| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_94598 0)) ((($Memory_94598 (|domain#$Memory_94598| |T@[Int]Bool|) (|contents#$Memory_94598| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_94040 0)) ((($Memory_94040 (|domain#$Memory_94040| |T@[Int]Bool|) (|contents#$Memory_94040| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_93771 0)) ((($Memory_93771 (|domain#$Memory_93771| |T@[Int]Bool|) (|contents#$Memory_93771| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_93302 0)) ((($Memory_93302 (|domain#$Memory_93302| |T@[Int]Bool|) (|contents#$Memory_93302| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_64475 0)) (((Multiset_64475 (|v#Multiset_64475| |T@[$EventRep]Int|) (|l#Multiset_64475| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_64475| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_64475|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_130492 0)) ((($Mutation_130492 (|l#$Mutation_130492| T@$Location) (|p#$Mutation_130492| (Seq Int)) (|v#$Mutation_130492| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_130448 0)) ((($Mutation_130448 (|l#$Mutation_130448| T@$Location) (|p#$Mutation_130448| (Seq Int)) (|v#$Mutation_130448| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_119362 0)) ((($Mutation_119362 (|l#$Mutation_119362| T@$Location) (|p#$Mutation_119362| (Seq Int)) (|v#$Mutation_119362| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_31342 0)) ((($Mutation_31342 (|l#$Mutation_31342| T@$Location) (|p#$Mutation_31342| (Seq Int)) (|v#$Mutation_31342| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_110214 0)) ((($Mutation_110214 (|l#$Mutation_110214| T@$Location) (|p#$Mutation_110214| (Seq Int)) (|v#$Mutation_110214| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_99449 0)) ((($Mutation_99449 (|l#$Mutation_99449| T@$Location) (|p#$Mutation_99449| (Seq Int)) (|v#$Mutation_99449| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_87178 0)) ((($Mutation_87178 (|l#$Mutation_87178| T@$Location) (|p#$Mutation_87178| (Seq Int)) (|v#$Mutation_87178| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_82546 0)) ((($Mutation_82546 (|l#$Mutation_82546| T@$Location) (|p#$Mutation_82546| (Seq Int)) (|v#$Mutation_82546| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_81800 0)) ((($Mutation_81800 (|l#$Mutation_81800| T@$Location) (|p#$Mutation_81800| (Seq Int)) (|v#$Mutation_81800| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_80360 0)) ((($Mutation_80360 (|l#$Mutation_80360| T@$Location) (|p#$Mutation_80360| (Seq Int)) (|v#$Mutation_80360| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_79614 0)) ((($Mutation_79614 (|l#$Mutation_79614| T@$Location) (|p#$Mutation_79614| (Seq Int)) (|v#$Mutation_79614| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_78174 0)) ((($Mutation_78174 (|l#$Mutation_78174| T@$Location) (|p#$Mutation_78174| (Seq Int)) (|v#$Mutation_78174| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_77428 0)) ((($Mutation_77428 (|l#$Mutation_77428| T@$Location) (|p#$Mutation_77428| (Seq Int)) (|v#$Mutation_77428| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75988 0)) ((($Mutation_75988 (|l#$Mutation_75988| T@$Location) (|p#$Mutation_75988| (Seq Int)) (|v#$Mutation_75988| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_75242 0)) ((($Mutation_75242 (|l#$Mutation_75242| T@$Location) (|p#$Mutation_75242| (Seq Int)) (|v#$Mutation_75242| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_73802 0)) ((($Mutation_73802 (|l#$Mutation_73802| T@$Location) (|p#$Mutation_73802| (Seq Int)) (|v#$Mutation_73802| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_73056 0)) ((($Mutation_73056 (|l#$Mutation_73056| T@$Location) (|p#$Mutation_73056| (Seq Int)) (|v#$Mutation_73056| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_71616 0)) ((($Mutation_71616 (|l#$Mutation_71616| T@$Location) (|p#$Mutation_71616| (Seq Int)) (|v#$Mutation_71616| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70870 0)) ((($Mutation_70870 (|l#$Mutation_70870| T@$Location) (|p#$Mutation_70870| (Seq Int)) (|v#$Mutation_70870| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_69430 0)) ((($Mutation_69430 (|l#$Mutation_69430| T@$Location) (|p#$Mutation_69430| (Seq Int)) (|v#$Mutation_69430| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68684 0)) ((($Mutation_68684 (|l#$Mutation_68684| T@$Location) (|p#$Mutation_68684| (Seq Int)) (|v#$Mutation_68684| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_67206 0)) ((($Mutation_67206 (|l#$Mutation_67206| T@$Location) (|p#$Mutation_67206| (Seq Int)) (|v#$Mutation_67206| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_66460 0)) ((($Mutation_66460 (|l#$Mutation_66460| T@$Location) (|p#$Mutation_66460| (Seq Int)) (|v#$Mutation_66460| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_64475_| (|T@[$1_Event_EventHandle]Multiset_64475| T@$1_Event_EventHandle) T@Multiset_64475)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
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
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_58522 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_57537 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_57734 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_57931 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_58719 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_58325 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_58128 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_57340 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_64475| |T@[$1_Event_EventHandle]Multiset_64475|) |T@[$1_Event_EventHandle]Multiset_64475|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |VASPandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |VASPandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |VASPandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |VASPandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |VASPandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |VASPandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |VASPandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |VASPandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |VASPandybpl.590:13|
 :skolemid |15|
))))
 :qid |VASPandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |VASPandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |VASPandybpl.603:17|
 :skolemid |18|
)))))
 :qid |VASPandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |VASPandybpl.770:13|
 :skolemid |20|
))))
 :qid |VASPandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |VASPandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |VASPandybpl.783:17|
 :skolemid |23|
)))))
 :qid |VASPandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |VASPandybpl.950:13|
 :skolemid |25|
))))
 :qid |VASPandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |VASPandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |VASPandybpl.963:17|
 :skolemid |28|
)))))
 :qid |VASPandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |VASPandybpl.1130:13|
 :skolemid |30|
))))
 :qid |VASPandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |VASPandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |VASPandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |VASPandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |VASPandybpl.1310:13|
 :skolemid |35|
))))
 :qid |VASPandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |VASPandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |VASPandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |VASPandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |VASPandybpl.1490:13|
 :skolemid |40|
))))
 :qid |VASPandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |VASPandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |VASPandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |VASPandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |VASPandybpl.1670:13|
 :skolemid |45|
))))
 :qid |VASPandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |VASPandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |VASPandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |VASPandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |VASPandybpl.1850:13|
 :skolemid |50|
))))
 :qid |VASPandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |VASPandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |VASPandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |VASPandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |VASPandybpl.2030:13|
 :skolemid |55|
))))
 :qid |VASPandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |VASPandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |VASPandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |VASPandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |VASPandybpl.2210:13|
 :skolemid |60|
))))
 :qid |VASPandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |VASPandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |VASPandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |VASPandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |VASPandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |VASPandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |VASPandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |VASPandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_64475| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream) v@@24) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |VASPandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |VASPandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |VASPandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |VASPandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |VASPandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |VASPandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |VASPandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |VASPandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |VASPandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |VASPandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |VASPandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |VASPandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |VASPandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |VASPandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |VASPandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |VASPandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |VASPandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |VASPandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |VASPandybpl.3083:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |VASPandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |VASPandybpl.3139:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |VASPandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |VASPandybpl.3195:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |VASPandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |VASPandybpl.3251:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |VASPandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |VASPandybpl.3307:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |VASPandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |VASPandybpl.3363:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |VASPandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |VASPandybpl.3419:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |VASPandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |VASPandybpl.3475:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |VASPandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |VASPandybpl.3560:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |VASPandybpl.3727:36|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |VASPandybpl.3746:71|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |VASPandybpl.3810:46|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |VASPandybpl.3823:64|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |VASPandybpl.3836:75|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |VASPandybpl.3849:72|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |VASPandybpl.3878:55|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |VASPandybpl.3900:46|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |VASPandybpl.3918:49|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |VASPandybpl.3993:71|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |VASPandybpl.4007:91|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |VASPandybpl.4021:113|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |VASPandybpl.4035:75|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |VASPandybpl.4049:73|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |VASPandybpl.4069:48|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |VASPandybpl.4085:57|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |VASPandybpl.4099:83|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |VASPandybpl.4113:103|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |VASPandybpl.4127:125|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |VASPandybpl.4141:87|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |VASPandybpl.4155:85|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |VASPandybpl.4169:48|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |VASPandybpl.4190:45|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |VASPandybpl.4204:51|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |VASPandybpl.4227:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |VASPandybpl.4533:49|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |VASPandybpl.4546:65|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |VASPandybpl.5050:45|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |VASPandybpl.5063:45|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |VASPandybpl.5076:55|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |VASPandybpl.5090:55|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |VASPandybpl.5110:38|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |VASPandybpl.5131:44|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |VASPandybpl.5182:53|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |VASPandybpl.5244:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |VASPandybpl.5270:55|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |VASPandybpl.5284:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |VASPandybpl.5301:38|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |VASPandybpl.5315:48|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |VASPandybpl.5329:48|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |VASPandybpl.5349:41|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |VASPandybpl.5364:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |VASPandybpl.5378:53|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |VASPandybpl.5395:60|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |VASPandybpl.5412:60|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |VASPandybpl.5429:57|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |VASPandybpl.7630:68|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |VASPandybpl.7652:66|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |VASPandybpl.7678:66|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@49)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@49)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@49))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@49))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@49))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@49))))
 :qid |VASPandybpl.7707:48|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@49))
)))
(assert (forall ((s@@50 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@50) true)
 :qid |VASPandybpl.8073:31|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@51) true)
 :qid |VASPandybpl.8417:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@51))
)))
(assert (forall ((s@@52 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@52)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@52)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@52))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@52))))
 :qid |VASPandybpl.8436:35|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@53)))
 :qid |VASPandybpl.8857:45|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@54))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@54))))
 :qid |VASPandybpl.8876:50|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@55)))
 :qid |VASPandybpl.8891:52|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@56) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@56)))
 :qid |VASPandybpl.8935:38|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@57) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@57)))
 :qid |VASPandybpl.8949:39|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@57))
)))
(assert (forall ((s@@58 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@58))))
 :qid |VASPandybpl.11050:65|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@59)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@59))))
 :qid |VASPandybpl.11435:60|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@60))))
 :qid |VASPandybpl.11452:66|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@61)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@61)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@61))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@61))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@61))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@61))))
 :qid |VASPandybpl.11481:50|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@62) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@62)))
 :qid |VASPandybpl.11500:45|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@63)) true))
 :qid |VASPandybpl.11819:87|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@64)))
 :qid |VASPandybpl.12031:47|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@65)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@65))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@65))))
 :qid |VASPandybpl.12051:58|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@66) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@66)))
 :qid |VASPandybpl.12066:39|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@67))))
 :qid |VASPandybpl.12088:58|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@68))))
 :qid |VASPandybpl.12105:58|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69) true)
 :qid |VASPandybpl.12120:51|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@70))))
 :qid |VASPandybpl.12137:60|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@71)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@71))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@71))))
 :qid |VASPandybpl.12435:47|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@72))))
 :qid |VASPandybpl.12457:63|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@73)))
 :qid |VASPandybpl.12472:57|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@74)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@74))))
 :qid |VASPandybpl.12488:54|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@75) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@75)))
 :qid |VASPandybpl.12502:55|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@76)))
 :qid |VASPandybpl.12516:57|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@77)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@77)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@77))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@77))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@77))))
 :qid |VASPandybpl.12538:56|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@78)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@78))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@78))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@78))))
 :qid |VASPandybpl.12563:52|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@79) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@79)))
 :qid |VASPandybpl.12579:54|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@80))))
 :qid |VASPandybpl.13450:47|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@81)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@81))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@81))))
 :qid |VASPandybpl.13474:47|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@82)))
 :qid |VASPandybpl.13715:49|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@83)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@83))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@83))))
 :qid |VASPandybpl.13758:49|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@84)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@84))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@84))))
 :qid |VASPandybpl.13787:48|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@85)))
 :qid |VASPandybpl.14082:47|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@85))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_58522 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58522 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_57537 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57537 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_57734 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57734 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_57931 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57931 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_58719 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58719 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_58325 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58325 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_58128 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58128 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_57340 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |VASPandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |VASPandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57340 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |VASPandybpl.245:54|
 :skolemid |302|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_64475|) (|l#1| |T@[$1_Event_EventHandle]Multiset_64475|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_64475| (|Select__T@[$1_Event_EventHandle]Multiset_64475_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_64475| (|Select__T@[$1_Event_EventHandle]Multiset_64475_| |l#1| handle@@0))))
(Multiset_64475 (|lambda#3| (|v#Multiset_64475| (|Select__T@[$1_Event_EventHandle]Multiset_64475_| |l#0@@0| handle@@0)) (|v#Multiset_64475| (|Select__T@[$1_Event_EventHandle]Multiset_64475_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |VASPandybpl.2548:13|
 :skolemid |303|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |VASPandybpl.124:29|
 :skolemid |304|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| () Bool)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_115486)
(declare-fun $t1 () Int)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_111986)
(declare-fun $t2 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_115550)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_VASP_has_account_limits$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 199477) (let ((anon7_Else_correct  (=> (not false) (=> (and (= |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1|) (= (ControlFlow 0 147112) (- 0 199785))) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a)))
 :qid |VASPandybpl.9056:15|
 :skolemid |168|
))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_AccountLimits_has_window_published'#0'$0$anon0_correct|  (=> (= $t1 $t1) (=> (and (= |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_111986| |$1_AccountLimits_Window'#0'_$memory|) $t1)) (= |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1| |inline$$1_AccountLimits_has_window_published'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 147063) 147126) anon7_Then_correct) (=> (= (ControlFlow 0 147063) 147112) anon7_Else_correct))))))
(let ((anon6_Else_correct  (=> (and (and (not $t2) (|$IsValid'address'| $t1)) (and (= $t1 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0) _$t0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0)))) (= (ControlFlow 0 147069) 147063))) |inline$$1_AccountLimits_has_window_published'#0'$0$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |VASPandybpl.8978:20|
 :skolemid |164|
)) (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_111986| |$1_AccountLimits_Window'#0'_$memory|) $a_0)))
(|$IsValid'$1_AccountLimits_Window'#0''| $rsc))
 :qid |VASPandybpl.8984:20|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_Window'#0'_| (|contents#$Memory_111986| |$1_AccountLimits_Window'#0'_$memory|) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@0)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@0))
 :qid |VASPandybpl.8988:20|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@1)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@1))
 :qid |VASPandybpl.8992:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@1))
))) (and (= _$t0 _$t0) (= $t2  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0)))))) (and (=> (= (ControlFlow 0 146944) 147170) anon6_Then_correct) (=> (= (ControlFlow 0 146944) 147069) anon6_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_64475| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@0) v@@35) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 146799) 146944)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 199477) 146799) inline$$InitEventStore$0$anon0_correct)))
anon0_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_child$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 199992) (let ((anon0$1_correct@@0  (=> (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |VASPandybpl.9092:20|
 :skolemid |169|
)) (|$IsValid'address'| _$t0@@0)) (=> (and (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@2)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@2))
 :qid |VASPandybpl.9099:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@2))
)) (= _$t0@@0 _$t0@@0)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@0)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 147428) (- 0 200127)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 147428) (- 0 200134)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@0))) (=> (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@0)) (and (=> (= (ControlFlow 0 147428) (- 0 200145)) (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@0)))
 :qid |VASPandybpl.9136:15|
 :skolemid |171|
))) (=> (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@1)))
 :qid |VASPandybpl.9136:15|
 :skolemid |171|
)) (=> (= (ControlFlow 0 147428) (- 0 200170)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |VASPandybpl.9141:15|
 :skolemid |172|
)))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_64475| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@1) v@@36) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 147251) 147428)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 199992) 147251) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@1 () Int)
(declare-fun $t1@0@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_parent$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 200206) (let ((anon0$1_correct@@1  (=> (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |VASPandybpl.9168:20|
 :skolemid |173|
)) (|$IsValid'address'| _$t0@@1)) (=> (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@3)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@3))
 :qid |VASPandybpl.9175:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@3))
)) (= _$t0@@1 _$t0@@1)) (and (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@1)) (= $t1@0@@0 $t1@0@@0))) (and (=> (= (ControlFlow 0 147679) (- 0 200341)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 147679) (- 0 200348)) (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@1))) (=> (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@1)) (and (=> (= (ControlFlow 0 147679) (- 0 200359)) (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@2)))
 :qid |VASPandybpl.9212:15|
 :skolemid |175|
))) (=> (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@3)))
 :qid |VASPandybpl.9212:15|
 :skolemid |175|
)) (=> (= (ControlFlow 0 147679) (- 0 200384)) (forall ((parent@@0 Int) ) (!  (=> (|$IsValid'address'| parent@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@0) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@0)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@0)))))
 :qid |VASPandybpl.9217:15|
 :skolemid |176|
)))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_64475| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@2) v@@37) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 147502) 147679)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 200206) 147502) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t11 () Bool)
(declare-fun _$t1 () Int)
(declare-fun $t9 () Int)
(declare-fun $t8 () Bool)
(declare-fun _$t0@@2 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t12@0 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t2@0 () Bool)
(declare-fun $t4 () Bool)
(declare-fun $t5 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_same_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 200425) (let ((L9_correct  (=> (= (ControlFlow 0 148176) (- 0 200943)) false)))
(let ((anon13_Then_correct  (=> $t11 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1))) (= 7 $t9)) (and (= $t9 $t9) (= (ControlFlow 0 148166) 148176))) L9_correct))))
(let ((anon12_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2))) (= 7 $t9)) (and (= $t9 $t9) (= (ControlFlow 0 148214) 148176))) L9_correct))))
(let ((L7_correct  (=> (= $t3@0 $t3@0) (and (=> (= (ControlFlow 0 148022) (- 0 200863)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 148022) (- 0 200870)) (= $t3@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2) _$t0@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1))))))) (=> (= $t3@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2) _$t0@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 148022) (- 0 200884)) (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@4)))
 :qid |VASPandybpl.9481:15|
 :skolemid |180|
))) (=> (forall ((a@@5 Int) ) (!  (=> (|$IsValid'address'| a@@5) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@5)))
 :qid |VASPandybpl.9481:15|
 :skolemid |180|
)) (=> (= (ControlFlow 0 148022) (- 0 200909)) (forall ((parent@@1 Int) ) (!  (=> (|$IsValid'address'| parent@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@1) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@1)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@1)))))
 :qid |VASPandybpl.9486:15|
 :skolemid |181|
))))))))))))
(let ((anon13_Else_correct  (=> (not $t11) (=> (and (|$IsValid'address'| $t10) (= $t10 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1) _$t1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1))))) (=> (and (and (= $t12@0 (= $t7 $t10)) (= $t12@0 $t12@0)) (and (= $t3@0 $t12@0) (= (ControlFlow 0 148128) 148022))) L7_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not $t8) (|$IsValid'address'| $t7)) (and (= $t7 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2) _$t0@@2 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2)))) (= $t11  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 148092) 148166) anon13_Then_correct) (=> (= (ControlFlow 0 148092) 148128) anon13_Else_correct)))))
(let ((anon11_Then_correct  (=> (and $t2@0 (= $t8  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2))))) (and (=> (= (ControlFlow 0 148048) 148214) anon12_Then_correct) (=> (= (ControlFlow 0 148048) 148092) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (and (not $t2@0) (= false false)) (and (= $t3@0 false) (= (ControlFlow 0 147930) 148022))) L7_correct)))
(let ((anon10_Else_correct  (=> (not $t4) (=> (and (= false false) (= $t2@0 false)) (and (=> (= (ControlFlow 0 147908) 148048) anon11_Then_correct) (=> (= (ControlFlow 0 147908) 147930) anon11_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (and $t4 (= $t5  (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t1) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1)))) (and (= $t5 $t5) (= $t2@0 $t5))) (and (=> (= (ControlFlow 0 148242) 148048) anon11_Then_correct) (=> (= (ControlFlow 0 148242) 147930) anon11_Else_correct)))))
(let ((anon0$1_correct@@2  (=> (and (and (and (forall ((child_addr@@2 Int) ) (!  (=> (|$IsValid'address'| child_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@2)))))
 :qid |VASPandybpl.9257:20|
 :skolemid |177|
)) (|$IsValid'address'| _$t0@@2)) (and (|$IsValid'address'| _$t1) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |VASPandybpl.9267:20|
 :skolemid |178|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |VASPandybpl.9271:20|
 :skolemid |179|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@5))
)) (= _$t0@@2 _$t0@@2)) (and (= _$t1 _$t1) (= $t4  (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@2)))))) (and (=> (= (ControlFlow 0 147888) 148242) anon10_Then_correct) (=> (= (ControlFlow 0 147888) 147908) anon10_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_64475| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@3) v@@38) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 147755) 147888)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 200425) 147755) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0@@1 () Bool)
(declare-fun _$t0@@3 () Int)
(declare-fun $t2@@0 () Bool)
(declare-fun $t4@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_VASP_is_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 200957) (let ((L3_correct  (=> (= $t1@0@@1 $t1@0@@1) (and (=> (= (ControlFlow 0 148575) (- 0 201171)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 148575) (- 0 201178)) (= $t1@0@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@3)))) (=> (= $t1@0@@1  (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@3))) (and (=> (= (ControlFlow 0 148575) (- 0 201191)) (forall ((a@@6 Int) ) (!  (=> (|$IsValid'address'| a@@6) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@6)))
 :qid |VASPandybpl.9638:15|
 :skolemid |185|
))) (=> (forall ((a@@7 Int) ) (!  (=> (|$IsValid'address'| a@@7) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@7)))
 :qid |VASPandybpl.9638:15|
 :skolemid |185|
)) (=> (= (ControlFlow 0 148575) (- 0 201216)) (forall ((parent@@2 Int) ) (!  (=> (|$IsValid'address'| parent@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@2) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@2)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@2)))))
 :qid |VASPandybpl.9643:15|
 :skolemid |186|
))))))))))))
(let ((anon3_Else_correct  (=> (not $t2@@0) (=> (and (and (= $t4@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@3)) (= $t4@@0 $t4@@0)) (and (= $t1@0@@1 $t4@@0) (= (ControlFlow 0 148485) 148575))) L3_correct))))
(let ((anon3_Then_correct  (=> (and (and $t2@@0 (= true true)) (and (= $t1@0@@1 true) (= (ControlFlow 0 148593) 148575))) L3_correct)))
(let ((anon0$1_correct@@3  (=> (and (forall ((child_addr@@3 Int) ) (!  (=> (|$IsValid'address'| child_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@3)))))
 :qid |VASPandybpl.9530:20|
 :skolemid |182|
)) (|$IsValid'address'| _$t0@@3)) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@6)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@6))
 :qid |VASPandybpl.9537:20|
 :skolemid |183|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@6))
)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@7)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@7))
 :qid |VASPandybpl.9541:20|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@7))
))) (and (= _$t0@@3 _$t0@@3) (= $t2@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@3)))) (and (=> (= (ControlFlow 0 148457) 148593) anon3_Then_correct) (=> (= (ControlFlow 0 148457) 148485) anon3_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_64475| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@4) v@@39) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 148336) 148457)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 200957) 148336) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@4 () Int)
(declare-fun $t3@0@@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@@1 () Bool)
(declare-fun $t3 () Int)
(declare-fun $t5@0 () Int)
(declare-fun $t4@1 () T@$1_VASP_ParentVASP)
(declare-fun $t4@@1 () T@$1_VASP_ParentVASP)
(declare-fun $t1@@0 () Int)
(declare-fun $t4@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_VASP_num_children$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201256) (let ((L2_correct  (and (=> (= (ControlFlow 0 148978) (- 0 201655)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4))) (=> (= (ControlFlow 0 148978) (- 0 201662)) (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4))) (= 7 $t3@0@@0)))))))
(let ((anon11_Then_correct@@0  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t3@0@@0 $abort_code@1) (= (ControlFlow 0 148942) 148978))) L2_correct)))
(let ((anon9_Then_correct  (=> $t2@@1 (=> (and (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4))) (= 7 $t3)) (= $t3 $t3)) (and (= $t3@0@@0 $t3) (= (ControlFlow 0 149068) 148978))) L2_correct))))
(let ((anon11_Else_correct@@0  (=> (not $abort_flag@0) (=> (and (= $t5@0 (|$num_children#$1_VASP_ParentVASP| $t4@1)) (= $t5@0 $t5@0)) (and (=> (= (ControlFlow 0 148928) (- 0 201574)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4)))) (and (=> (= (ControlFlow 0 148928) (- 0 201586)) (forall ((a@@8 Int) ) (!  (=> (|$IsValid'address'| a@@8) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@8)))
 :qid |VASPandybpl.9763:15|
 :skolemid |190|
))) (=> (forall ((a@@9 Int) ) (!  (=> (|$IsValid'address'| a@@9) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@9)))
 :qid |VASPandybpl.9763:15|
 :skolemid |190|
)) (=> (= (ControlFlow 0 148928) (- 0 201611)) (forall ((parent@@3 Int) ) (!  (=> (|$IsValid'address'| parent@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@3) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@3)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@3)))))
 :qid |VASPandybpl.9768:15|
 :skolemid |191|
)))))))))))
(let ((anon10_Then$1_correct  (=> (= $t4@1 $t4@@1) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 149030) 148942) anon11_Then_correct@@0) (=> (= (ControlFlow 0 149030) 148928) anon11_Else_correct@@0))))))
(let ((anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t1@@0)) (= (ControlFlow 0 149028) 149030)) anon10_Then$1_correct)))
(let ((anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t1@@0) (=> (and (and (= $t4@0 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t1@@0)) (= $t4@1 $t4@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 148834) 148942) anon11_Then_correct@@0) (=> (= (ControlFlow 0 148834) 148928) anon11_Else_correct@@0))))))
(let ((anon9_Else_correct  (=> (not $t2@@1) (=> (and (|$IsValid'address'| $t1@@0) (= $t1@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4) _$t0@@4 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4))))) (and (=> (= (ControlFlow 0 148820) 149028) anon10_Then_correct@@0) (=> (= (ControlFlow 0 148820) 148834) anon10_Else_correct@@0))))))
(let ((anon0$1_correct@@4  (=> (and (forall ((child_addr@@4 Int) ) (!  (=> (|$IsValid'address'| child_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@4)))))
 :qid |VASPandybpl.9674:20|
 :skolemid |187|
)) (|$IsValid'address'| _$t0@@4)) (=> (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@8)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@8))
 :qid |VASPandybpl.9680:20|
 :skolemid |188|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@9)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@9))
 :qid |VASPandybpl.9684:20|
 :skolemid |189|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@9))
))) (and (= _$t0@@4 _$t0@@4) (= $t2@@1  (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@4)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@4)))))) (and (=> (= (ControlFlow 0 148798) 149068) anon9_Then_correct) (=> (= (ControlFlow 0 148798) 148820) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_64475| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@5) v@@40) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 148673) 148798)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 201256) 148673) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0@@0 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t8@1 () T@$1_VASP_ChildVASP)
(declare-fun $t3@@0 () Bool)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t8@@0 () T@$1_VASP_ChildVASP)
(declare-fun $t8@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t4@@2 () Bool)
(declare-fun $t6 () Int)
(push 1)
(set-info :boogie-vc-id $1_VASP_parent_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201690) (let ((L3_correct@@0  (=> (= $t2@0@@0 $t2@0@@0) (and (=> (= (ControlFlow 0 149541) (- 0 202100)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 149541) (- 0 202119)) (= $t2@0@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5) _$t0@@5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5))))) (=> (= $t2@0@@0 (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5) _$t0@@5 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 149541) (- 0 202132)) (forall ((a@@10 Int) ) (!  (=> (|$IsValid'address'| a@@10) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@10)))
 :qid |VASPandybpl.9986:15|
 :skolemid |195|
))) (=> (forall ((a@@11 Int) ) (!  (=> (|$IsValid'address'| a@@11) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@11)))
 :qid |VASPandybpl.9986:15|
 :skolemid |195|
)) (=> (= (ControlFlow 0 149541) (- 0 202157)) (forall ((parent@@4 Int) ) (!  (=> (|$IsValid'address'| parent@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@4) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@4)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@4)))))
 :qid |VASPandybpl.9991:15|
 :skolemid |196|
))))))))))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@0@@0) (= $t9@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| $t8@1))) (=> (and (and (= $t9@0 $t9@0) (= $t9@0 $t9@0)) (and (= $t2@0@@0 $t9@0) (= (ControlFlow 0 149435) 149541))) L3_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t3@@0 (= _$t0@@5 _$t0@@5)) (and (= $t2@0@@0 _$t0@@5) (= (ControlFlow 0 149621) 149541))) L3_correct@@0)))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 149387) (- 0 202010)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5)))) (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5))) (=> (= (ControlFlow 0 149387) (- 0 202024)) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5))) (= 7 $t7@0)))))))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t7@0 $abort_code@1@@0) (= (ControlFlow 0 149555) 149387))) L7_correct@@0)))
(let ((anon17_Then$1_correct  (=> (= $t8@1 $t8@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 149607) 149555) anon18_Then_correct) (=> (= (ControlFlow 0 149607) 149435) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5)) (= (ControlFlow 0 149605) 149607)) anon17_Then$1_correct)))
(let ((anon17_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5) (=> (and (and (= $t8@0 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5)) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 149405) 149555) anon18_Then_correct) (=> (= (ControlFlow 0 149405) 149435) anon18_Else_correct))))))
(let ((anon16_Then_correct  (=> $t4@@2 (and (=> (= (ControlFlow 0 149391) 149605) anon17_Then_correct) (=> (= (ControlFlow 0 149391) 149405) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not $t4@@2) (=> (and (|$IsValid'u64'| 2) (|$IsValid'u64'| $t6)) (=> (and (and (= $t6 7) (= $t6 $t6)) (and (= $t7@0 $t6) (= (ControlFlow 0 149335) 149387))) L7_correct@@0)))))
(let ((anon15_Else_correct  (=> (and (not $t3@@0) (= $t4@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t0@@5))) (and (=> (= (ControlFlow 0 149303) 149391) anon16_Then_correct) (=> (= (ControlFlow 0 149303) 149335) anon16_Else_correct)))))
(let ((anon0$1_correct@@5  (=> (and (forall ((child_addr@@5 Int) ) (!  (=> (|$IsValid'address'| child_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@5)))))
 :qid |VASPandybpl.9820:20|
 :skolemid |192|
)) (|$IsValid'address'| _$t0@@5)) (=> (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@10)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@10))
 :qid |VASPandybpl.9827:20|
 :skolemid |193|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@11)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@11))
 :qid |VASPandybpl.9831:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@11))
))) (and (= _$t0@@5 _$t0@@5) (= $t3@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 149283) 149621) anon15_Then_correct) (=> (= (ControlFlow 0 149283) 149303) anon15_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_64475| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@6) v@@41) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149162) 149283)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 201690) 149162) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_115486)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_115550)
(declare-fun $t11@@0 () Int)
(declare-fun $t12 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_93771)
(declare-fun $t13 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0@@6 () Int)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_115486)
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
(declare-fun $t27@2 () T@$Mutation_119362)
(declare-fun $t27@1 () T@$Mutation_119362)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t23 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t33 () Int)
(declare-fun $t29@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_119362)
(declare-fun $t27@0 () T@$Mutation_119362)
(declare-fun $abort_code@0@@1 () Int)
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
(declare-fun $t3@@1 () T@$Mutation_12329)
(declare-fun $t28 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_child_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202197) (let ((anon37_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 151230) (- 0 203734)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) addr) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory@1) addr)))
 :qid |VASPandybpl.10516:15|
 :skolemid |205|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory@1) addr@@0)))
 :qid |VASPandybpl.10516:15|
 :skolemid |205|
)) (and (=> (= (ControlFlow 0 151230) (- 0 203758)) (forall ((child_addr@@6 Int) ) (!  (=> (|$IsValid'address'| child_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory@1) child_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory@1) child_addr@@6)))))
 :qid |VASPandybpl.10522:15|
 :skolemid |206|
))) (=> (forall ((child_addr@@7 Int) ) (!  (=> (|$IsValid'address'| child_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory@1) child_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory@1) child_addr@@7)))))
 :qid |VASPandybpl.10522:15|
 :skolemid |206|
)) (and (=> (= (ControlFlow 0 151230) (- 0 203787)) (forall ((a@@12 Int) ) (!  (=> (|$IsValid'address'| a@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@12) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) a@@12) a@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory@1) a@@12))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) a@@12) a@@12 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@12))))))
 :qid |VASPandybpl.10528:15|
 :skolemid |207|
))) (=> (forall ((a@@13 Int) ) (!  (=> (|$IsValid'address'| a@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@13) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) a@@13) a@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory@1) a@@13))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) a@@13) a@@13 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@13))))))
 :qid |VASPandybpl.10528:15|
 :skolemid |207|
)) (and (=> (= (ControlFlow 0 151230) (- 0 203823)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t11@@0)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 151230) (- 0 203834)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12))) (and (=> (= (ControlFlow 0 151230) (- 0 203846)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (and (=> (= (ControlFlow 0 151230) (- 0 203864)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t13))) (and (=> (= (ControlFlow 0 151230) (- 0 203876)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t13)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t13)) 5))) (and (=> (= (ControlFlow 0 151230) (- 0 203894)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 151230) (- 0 203906)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)) 6))) (and (=> (= (ControlFlow 0 151230) (- 0 203924)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory@0) _$t0@@6)) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@6)) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory@0) _$t0@@6)) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@6)) 1)) (and (=> (= (ControlFlow 0 151230) (- 0 203945)) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory@1) $t11@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory@1) $t11@@0) (=> (= (ControlFlow 0 151230) (- 0 203953)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) $t11@@0) $t11@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory@1) $t11@@0))) _$t0@@6)))))))))))))))))))))))))))))
(let ((L7_correct@@1  (and (=> (= (ControlFlow 0 150395) (- 0 203518)) (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t11@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)) 6)))) (=> (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t11@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)) 6))) (=> (= (ControlFlow 0 150395) (- 0 203596)) (or (or (or (or (or (or (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t11@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t11@@0)) (= 6 $t16@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)) (= 7 $t16@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536) (= 8 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t13)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t13)) 5)) (= 3 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t11@@0)) 6)) (= 3 $t16@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t16@0 $abort_code@3) (= (ControlFlow 0 151244) 150395))) L7_correct@@1)))
(let ((anon36_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 151294) 151244) anon37_Then_correct) (=> (= (ControlFlow 0 151294) 151230) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1@@0) (= (ControlFlow 0 151292) 151294)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1@@0)) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_115486 (|Store__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1@@0 true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) _$t1@@0 $t37@0))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 150977) 151244) anon37_Then_correct) (=> (= (ControlFlow 0 150977) 151230) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (and (not $abort_flag@1) (= $t28@1 ($Mutation_12329 (|l#$Mutation_12329| $t28@0) (|p#$Mutation_12329| $t28@0) inline$$AddU64$0$dst@2))) (and (= $t27@2 ($Mutation_119362 (|l#$Mutation_119362| $t27@1) (|p#$Mutation_119362| $t27@1) ($1_VASP_ParentVASP (|v#$Mutation_12329| $t28@1)))) (= $1_VASP_ParentVASP_$memory@0 ($Memory_115550 (|Store__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_119362| $t27@2)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_119362| $t27@2)) (|v#$Mutation_119362| $t27@2)))))) (and (=> (= (ControlFlow 0 150959) (- 0 203303)) (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) addr@@1)))
 :qid |VASPandybpl.10472:15|
 :skolemid |202|
))) (=> (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) addr@@2)))
 :qid |VASPandybpl.10472:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 150959) (- 0 203327)) (forall ((child_addr@@8 Int) ) (!  (=> (|$IsValid'address'| child_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@8)))))
 :qid |VASPandybpl.10478:15|
 :skolemid |203|
))) (=> (forall ((child_addr@@9 Int) ) (!  (=> (|$IsValid'address'| child_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@9)))))
 :qid |VASPandybpl.10478:15|
 :skolemid |203|
)) (and (=> (= (ControlFlow 0 150959) (- 0 203358)) (forall ((a@@14 Int) ) (!  (=> (|$IsValid'address'| a@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@14) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) a@@14) a@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@14))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) a@@14) a@@14 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@14))))))
 :qid |VASPandybpl.10484:15|
 :skolemid |204|
))) (=> (forall ((a@@15 Int) ) (!  (=> (|$IsValid'address'| a@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@15) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@0) a@@15) a@@15 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@15))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) a@@15) a@@15 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@15))))))
 :qid |VASPandybpl.10484:15|
 :skolemid |204|
)) (=> (= $t37@0 ($1_VASP_ChildVASP $t23)) (and (=> (= (ControlFlow 0 150959) 151292) anon36_Then_correct) (=> (= (ControlFlow 0 150959) 150977) anon36_Else_correct))))))))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t16@0 $abort_code@2) (= (ControlFlow 0 151308) 150395))) L7_correct@@1)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 150798) 151308) anon35_Then_correct) (=> (= (ControlFlow 0 150798) 150959) anon35_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t34@0 1) $MAX_U64) (= (ControlFlow 0 150796) 150798)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t34@0 1)) (= $abort_flag@1 $abort_flag@0@@1)) (and (= $abort_code@2 $abort_code@1@@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 150744) 151308) anon35_Then_correct) (=> (= (ControlFlow 0 150744) 150959) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (= $t34@0 (|v#$Mutation_12329| $t28@0)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 150804) 150796) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 150804) 150744) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t33 $t33)) (and (= $t16@0 $t33) (= (ControlFlow 0 150637) 150395))) L7_correct@@1)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 8)) (and (= $t33 $t33) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 150621) 150804) anon34_Then_correct) (=> (= (ControlFlow 0 150621) 150637) anon34_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t29@0 65536)) (= (ControlFlow 0 150585) 150621)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= $t28@0 ($Mutation_12329 (|l#$Mutation_119362| $t27@1) (seq.++ (|p#$Mutation_119362| $t27@1) (seq.unit 0)) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_119362| $t27@1)))) (= |$temp_0'u64'@0| (|v#$Mutation_12329| $t28@0))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= $t29@0 (|v#$Mutation_12329| $t28@0))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 150591) 150585))) inline$$Lt$0$anon0_correct)))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t16@0 $abort_code@1@@1) (= (ControlFlow 0 151322) 150395))) L7_correct@@1)))
(let ((anon32_Then$1_correct  (=> (= $t27@1 $t27) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 151374) 151322) anon33_Then_correct) (=> (= (ControlFlow 0 151374) 150591) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t23)) (= (ControlFlow 0 151372) 151374)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t23) (=> (and (and (= $t27@0 ($Mutation_119362 ($Global $t23) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $t23))) (= $t27@1 $t27@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 150503) 151322) anon33_Then_correct) (=> (= (ControlFlow 0 150503) 150591) anon33_Else_correct))))))
(let ((anon31_Then_correct  (=> $t24 (and (=> (= (ControlFlow 0 150481) 151372) anon32_Then_correct) (=> (= (ControlFlow 0 150481) 150503) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (and (not $t24) (= $t26 $t26)) (and (= $t16@0 $t26) (= (ControlFlow 0 150477) 150395))) L7_correct@@1)))
(let ((anon30_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'address'| $t23)) (=> (and (and (and (= $t23 _$t0@@6) (= $t23 $t23)) (and (= $t24 (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t23)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t26) (= $t26 7)) (and (= $t26 $t26) (= $t24 $t24)))) (and (=> (= (ControlFlow 0 150461) 150481) anon31_Then_correct) (=> (= (ControlFlow 0 150461) 150477) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t22 $t22)) (and (= $t16@0 $t22) (= (ControlFlow 0 150159) 150395))) L7_correct@@1)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t22) (= $t22 6)) (and (= $t22 $t22) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 150143) 150461) anon30_Then_correct) (=> (= (ControlFlow 0 150143) 150159) anon30_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t19)) (= (ControlFlow 0 150107) 150143)) anon29_Else$1_correct)))
(let ((anon29_Else_correct  (=> (and (not $t17) (|$IsValid'address'| $t18)) (=> (and (and (= $t18 _$t1@@0) (= $t18 $t18)) (and (= $t19  (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t18) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t18))) (= (ControlFlow 0 150113) 150107))) inline$$Not$0$anon0_correct))))
(let ((anon29_Then_correct  (=> $t17 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) _$t1@@0)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) _$t1@@0)) 6)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 151430) 150395))) L7_correct@@1))))
(let ((anon28_Else_correct  (=> (and (not $t15) (= $t17  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) _$t1@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) _$t1@@0)) 6))))) (and (=> (= (ControlFlow 0 150033) 151430) anon29_Then_correct) (=> (= (ControlFlow 0 150033) 150113) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t14)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t14)) 5)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 151482) 150395))) L7_correct@@1))))
(let ((anon0$1_correct@@6  (=> (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111986| |$1_AccountLimits_Window'#0'_$memory|) addr@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) addr@@3) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) addr@@3)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) addr@@3)) 6)))))
 :qid |VASPandybpl.10082:20|
 :skolemid |197|
)) (forall ((child_addr@@10 Int) ) (!  (=> (|$IsValid'address'| child_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@10)))))
 :qid |VASPandybpl.10086:20|
 :skolemid |198|
))) (=> (and (and (|$IsValid'address'| _$t0@@6) (|$IsValid'address'| _$t1@@0)) (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |VASPandybpl.10095:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@13)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@13))
 :qid |VASPandybpl.10099:20|
 :skolemid |200|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@13))
)))) (=> (and (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@14)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@14))
 :qid |VASPandybpl.10103:20|
 :skolemid |201|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@14))
)) (= $t11@@0 _$t1@@0)) (and (= $t12 _$t0@@6) (= $t13 _$t0@@6))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@0 _$t1@@0)) (and (= $t14 _$t0@@6) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t14)) 5))))))) (and (=> (= (ControlFlow 0 149993) 151482) anon28_Then_correct) (=> (= (ControlFlow 0 149993) 150033) anon28_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_64475| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@7) v@@42) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 149733) 149993)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (and (and (= (seq.len (|p#$Mutation_12329| $t3@@1)) 0) (= (seq.len (|p#$Mutation_119362| $t27)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t28)) 0) (= (ControlFlow 0 149743) 149733))) inline$$InitEventStore$0$anon0_correct@@6)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 202197) 149743) anon0_correct@@6)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_115550)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_93302)
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $t9@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@7 () Int)
(declare-fun $1_VASP_ParentVASP_$memory@0@@0 () T@$Memory_115550)
(declare-fun $t20@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t13@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun $t8@@1 () Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_parent_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 203973) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 152712) (- 0 204995)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) addr@@4)))
 :qid |VASPandybpl.10935:15|
 :skolemid |214|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) addr@@5)))
 :qid |VASPandybpl.10935:15|
 :skolemid |214|
)) (and (=> (= (ControlFlow 0 152712) (- 0 205019)) (forall ((child_addr@@11 Int) ) (!  (=> (|$IsValid'address'| child_addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@11)))))
 :qid |VASPandybpl.10941:15|
 :skolemid |215|
))) (=> (forall ((child_addr@@12 Int) ) (!  (=> (|$IsValid'address'| child_addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@12)))))
 :qid |VASPandybpl.10941:15|
 :skolemid |215|
)) (and (=> (= (ControlFlow 0 152712) (- 0 205050)) (forall ((a@@16 Int) ) (!  (=> (|$IsValid'address'| a@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@16) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) a@@16) a@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@16))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) a@@16) a@@16 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@16))))))
 :qid |VASPandybpl.10947:15|
 :skolemid |216|
))) (=> (forall ((a@@17 Int) ) (!  (=> (|$IsValid'address'| a@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@17) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) a@@17) a@@17 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@17))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) a@@17) a@@17 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@17))))))
 :qid |VASPandybpl.10947:15|
 :skolemid |216|
)) (and (=> (= (ControlFlow 0 152712) (- 0 205087)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 152712) (- 0 205097)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 152712) (- 0 205109)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 152712) (- 0 205127)) (not (not (= _$t1@@1 186537453)))) (=> (not (not (= _$t1@@1 186537453))) (and (=> (= (ControlFlow 0 152712) (- 0 205141)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 152712) (- 0 205153)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (and (=> (= (ControlFlow 0 152712) (- 0 205171)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t5@@0)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 152712) (- 0 205182)) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) $t5@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory@1) $t5@@0) (and (=> (= (ControlFlow 0 152712) (- 0 205190)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory@1) $t5@@0)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory@1) $t5@@0)) 0) (and (=> (= (ControlFlow 0 152712) (- 0 205202)) (forall ((a@@18 Int) ) (!  (=> (|$IsValid'address'| a@@18) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@18) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@18)))
 :qid |VASPandybpl.11001:15|
 :skolemid |217|
))) (=> (forall ((a@@19 Int) ) (!  (=> (|$IsValid'address'| a@@19) (= (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) a@@19)))
 :qid |VASPandybpl.11001:15|
 :skolemid |217|
)) (=> (= (ControlFlow 0 152712) (- 0 205227)) (forall ((parent@@5 Int) ) (!  (=> (|$IsValid'address'| parent@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@5) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory@1) parent@@5)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) parent@@5)))))
 :qid |VASPandybpl.11006:15|
 :skolemid |218|
))))))))))))))))))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 152395) (- 0 204791)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t5@@0)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t5@@0))) (=> (= (ControlFlow 0 152395) (- 0 204863)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t9@0@@0))) (and (not (= _$t1@@1 186537453)) (= 2 $t9@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t9@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t7@@0)) 5)) (= 3 $t9@0@@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t5@@0)) (= 6 $t9@0@@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t9@0@@0 $abort_code@1@@2) (= (ControlFlow 0 152726) 152395))) L3_correct@@1)))
(let ((anon20_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 152776) 152726) anon21_Then_correct) (=> (= (ControlFlow 0 152776) 152712) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@7) (= (ControlFlow 0 152774) 152776)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@7)) (=> (and (and (= $1_VASP_ParentVASP_$memory@0@@0 ($Memory_115550 (|Store__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@7 true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) _$t0@@7 $t20@0))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 152435) 152726) anon21_Then_correct) (=> (= (ControlFlow 0 152435) 152712) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> inline$$Not$0$dst@1@@0 (=> (and (|$IsValid'u64'| 0) (= $t20@0 ($1_VASP_ParentVASP 0))) (and (=> (= (ControlFlow 0 152417) 152774) anon20_Then_correct) (=> (= (ControlFlow 0 152417) 152435) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t18@@0 $t18@@0)) (and (= $t9@0@@0 $t18@@0) (= (ControlFlow 0 152171) 152395))) L3_correct@@1)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 6)) (and (= $t18@@0 $t18@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 152155) 152417) anon19_Then_correct) (=> (= (ControlFlow 0 152155) 152171) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t15@@0)) (= (ControlFlow 0 152119) 152155)) anon18_Else$1_correct)))
(let ((anon18_Else_correct@@0  (=> (and (not $t13@@0) (|$IsValid'address'| $t14@@0)) (=> (and (and (= $t14@@0 _$t0@@7) (= $t14@@0 $t14@@0)) (and (= $t15@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) $t14@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) $t14@@0))) (= (ControlFlow 0 152125) 152119))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct@@0  (=> $t13@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t12@@0)) 5)) (= 3 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 152828) 152395))) L3_correct@@1))))
(let ((anon17_Else_correct@@0  (=> (not $t11@@1) (=> (and (= $t12@@0 _$t0@@7) (= $t13@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t12@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t12@@0)) 5))))) (and (=> (= (ControlFlow 0 152045) 152828) anon18_Then_correct@@0) (=> (= (ControlFlow 0 152045) 152125) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> $t11@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t10@@0)) 1)) (= 3 $t9@@0))) (and (not (= _$t1@@1 186537453)) (= 2 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 152900) 152395))) L3_correct@@1))))
(let ((anon16_Else_correct@@0  (=> (not $t8@@1) (=> (and (= $t10@@0 _$t1@@1) (= $t11@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) $t10@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $t10@@0)) 1))) (not (= _$t1@@1 186537453))))) (and (=> (= (ControlFlow 0 151997) 152900) anon17_Then_correct@@0) (=> (= (ControlFlow 0 151997) 152045) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> $t8@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0@@0 $t9@@0) (= (ControlFlow 0 152926) 152395))) L3_correct@@1))))
(let ((anon0$1_correct@@7  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111986| |$1_AccountLimits_Window'#0'_$memory|) addr@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93771| $1_Roles_RoleId_$memory) addr@@6) (or (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) addr@@6)) 5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) addr@@6)) 6)))))
 :qid |VASPandybpl.10664:20|
 :skolemid |208|
)) (forall ((child_addr@@13 Int) ) (!  (=> (|$IsValid'address'| child_addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_115550| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) child_addr@@13)))))
 :qid |VASPandybpl.10668:20|
 :skolemid |209|
))) (=> (and (and (|$IsValid'address'| _$t0@@7) (|$IsValid'address'| _$t1@@1)) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@15)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@15))
 :qid |VASPandybpl.10677:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $a_0@@16)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@16))
 :qid |VASPandybpl.10681:20|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_93771| $1_Roles_RoleId_$memory) $a_0@@16))
)))) (=> (and (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@17)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@17))
 :qid |VASPandybpl.10685:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_115486| $1_VASP_ChildVASP_$memory) $a_0@@17))
)) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@18)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@18))
 :qid |VASPandybpl.10689:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_115550| $1_VASP_ParentVASP_$memory) $a_0@@18))
))) (and (= $t5@@0 _$t0@@7) (= $t6@@0 _$t1@@1))) (and (and (= $t7@@0 _$t0@@7) (= _$t0@@7 _$t0@@7)) (and (= _$t1@@1 _$t1@@1) (= $t8@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93302| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 151937) 152926) anon16_Then_correct@@0) (=> (= (ControlFlow 0 151937) 151997) anon16_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_64475_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_64475| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_64475| stream@@8) v@@43) 0)
 :qid |VASPandybpl.129:13|
 :skolemid |2|
))))
 :qid |VASPandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 151671) 151937)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 203973) 151671) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 205272) true)
))
(check-sat)
(pop 1)
; Valid
