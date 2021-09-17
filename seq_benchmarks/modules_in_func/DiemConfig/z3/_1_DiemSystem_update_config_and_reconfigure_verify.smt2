(set-option :print-success false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_165303 0)) ((($Memory_165303 (|domain#$Memory_165303| |T@[Int]Bool|) (|contents#$Memory_165303| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_174539 0)) ((($Memory_174539 (|domain#$Memory_174539| |T@[Int]Bool|) (|contents#$Memory_174539| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_174468 0)) ((($Memory_174468 (|domain#$Memory_174468| |T@[Int]Bool|) (|contents#$Memory_174468| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_174225 0)) ((($Memory_174225 (|domain#$Memory_174225| |T@[Int]Bool|) (|contents#$Memory_174225| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_174154 0)) ((($Memory_174154 (|domain#$Memory_174154| |T@[Int]Bool|) (|contents#$Memory_174154| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_174083 0)) ((($Memory_174083 (|domain#$Memory_174083| |T@[Int]Bool|) (|contents#$Memory_174083| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_194868 0)) ((($Memory_194868 (|domain#$Memory_194868| |T@[Int]Bool|) (|contents#$Memory_194868| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_173915 0)) ((($Memory_173915 (|domain#$Memory_173915| |T@[Int]Bool|) (|contents#$Memory_173915| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_194338 0)) ((($Memory_194338 (|domain#$Memory_194338| |T@[Int]Bool|) (|contents#$Memory_194338| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_195123 0)) ((($Memory_195123 (|domain#$Memory_195123| |T@[Int]Bool|) (|contents#$Memory_195123| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_195223 0)) ((($Memory_195223 (|domain#$Memory_195223| |T@[Int]Bool|) (|contents#$Memory_195223| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_194551 0)) ((($Memory_194551 (|domain#$Memory_194551| |T@[Int]Bool|) (|contents#$Memory_194551| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_194636 0)) ((($Memory_194636 (|domain#$Memory_194636| |T@[Int]Bool|) (|contents#$Memory_194636| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_290762 0)) ((($Memory_290762 (|domain#$Memory_290762| |T@[Int]Bool|) (|contents#$Memory_290762| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_290475 0)) ((($Memory_290475 (|domain#$Memory_290475| |T@[Int]Bool|) (|contents#$Memory_290475| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173747 0)) ((($Memory_173747 (|domain#$Memory_173747| |T@[Int]Bool|) (|contents#$Memory_173747| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173508 0)) ((($Memory_173508 (|domain#$Memory_173508| |T@[Int]Bool|) (|contents#$Memory_173508| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_174397 0)) ((($Memory_174397 (|domain#$Memory_174397| |T@[Int]Bool|) (|contents#$Memory_174397| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_279627 0)) ((($Memory_279627 (|domain#$Memory_279627| |T@[Int]Bool|) (|contents#$Memory_279627| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_279563 0)) ((($Memory_279563 (|domain#$Memory_279563| |T@[Int]Bool|) (|contents#$Memory_279563| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_279940 0)) ((($Memory_279940 (|domain#$Memory_279940| |T@[Int]Bool|) (|contents#$Memory_279940| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_279853 0)) ((($Memory_279853 (|domain#$Memory_279853| |T@[Int]Bool|) (|contents#$Memory_279853| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_194783 0)) ((($Memory_194783 (|domain#$Memory_194783| |T@[Int]Bool|) (|contents#$Memory_194783| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_283436 0)) ((($Memory_283436 (|domain#$Memory_283436| |T@[Int]Bool|) (|contents#$Memory_283436| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_173579 0)) ((($Memory_173579 (|domain#$Memory_173579| |T@[Int]Bool|) (|contents#$Memory_173579| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_194723 0)) ((($Memory_194723 (|domain#$Memory_194723| |T@[Int]Bool|) (|contents#$Memory_194723| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_283345 0)) ((($Memory_283345 (|domain#$Memory_283345| |T@[Int]Bool|) (|contents#$Memory_283345| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173818 0)) ((($Memory_173818 (|domain#$Memory_173818| |T@[Int]Bool|) (|contents#$Memory_173818| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173663 0)) ((($Memory_173663 (|domain#$Memory_173663| |T@[Int]Bool|) (|contents#$Memory_173663| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173424 0)) ((($Memory_173424 (|domain#$Memory_173424| |T@[Int]Bool|) (|contents#$Memory_173424| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_180330 0)) ((($Memory_180330 (|domain#$Memory_180330| |T@[Int]Bool|) (|contents#$Memory_180330| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_180243 0)) ((($Memory_180243 (|domain#$Memory_180243| |T@[Int]Bool|) (|contents#$Memory_180243| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_180156 0)) ((($Memory_180156 (|domain#$Memory_180156| |T@[Int]Bool|) (|contents#$Memory_180156| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_180069 0)) ((($Memory_180069 (|domain#$Memory_180069| |T@[Int]Bool|) (|contents#$Memory_180069| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_179982 0)) ((($Memory_179982 (|domain#$Memory_179982| |T@[Int]Bool|) (|contents#$Memory_179982| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_179895 0)) ((($Memory_179895 (|domain#$Memory_179895| |T@[Int]Bool|) (|contents#$Memory_179895| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_179808 0)) ((($Memory_179808 (|domain#$Memory_179808| |T@[Int]Bool|) (|contents#$Memory_179808| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_173269 0)) ((($Memory_173269 (|domain#$Memory_173269| |T@[Int]Bool|) (|contents#$Memory_173269| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_178909 0)) ((($Memory_178909 (|domain#$Memory_178909| |T@[Int]Bool|) (|contents#$Memory_178909| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_173110 0)) ((($Memory_173110 (|domain#$Memory_173110| |T@[Int]Bool|) (|contents#$Memory_173110| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_178828 0)) ((($Memory_178828 (|domain#$Memory_178828| |T@[Int]Bool|) (|contents#$Memory_178828| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_172704 0)) ((($Memory_172704 (|domain#$Memory_172704| |T@[Int]Bool|) (|contents#$Memory_172704| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_174623 0)) ((($Memory_174623 (|domain#$Memory_174623| |T@[Int]Bool|) (|contents#$Memory_174623| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_178695 0)) ((($Memory_178695 (|domain#$Memory_178695| |T@[Int]Bool|) (|contents#$Memory_178695| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_173999 0)) ((($Memory_173999 (|domain#$Memory_173999| |T@[Int]Bool|) (|contents#$Memory_173999| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_173340 0)) ((($Memory_173340 (|domain#$Memory_173340| |T@[Int]Bool|) (|contents#$Memory_173340| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_173017 0)) ((($Memory_173017 (|domain#$Memory_173017| |T@[Int]Bool|) (|contents#$Memory_173017| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_194451 0)) ((($Memory_194451 (|domain#$Memory_194451| |T@[Int]Bool|) (|contents#$Memory_194451| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_173196 0)) ((($Memory_173196 (|domain#$Memory_173196| |T@[Int]Bool|) (|contents#$Memory_173196| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_177901 0)) ((($Memory_177901 (|domain#$Memory_177901| |T@[Int]Bool|) (|contents#$Memory_177901| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_176842 0)) ((($Memory_176842 (|domain#$Memory_176842| |T@[Int]Bool|) (|contents#$Memory_176842| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_172830 0)) ((($Memory_172830 (|domain#$Memory_172830| |T@[Int]Bool|) (|contents#$Memory_172830| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_172108 0)) ((($Memory_172108 (|domain#$Memory_172108| |T@[Int]Bool|) (|contents#$Memory_172108| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_144488 0)) (((Multiset_144488 (|v#Multiset_144488| |T@[$EventRep]Int|) (|l#Multiset_144488| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_144488| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_144488|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_329313 0)) ((($Mutation_329313 (|l#$Mutation_329313| T@$Location) (|p#$Mutation_329313| (Seq Int)) (|v#$Mutation_329313| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_329267 0)) ((($Mutation_329267 (|l#$Mutation_329267| T@$Location) (|p#$Mutation_329267| (Seq Int)) (|v#$Mutation_329267| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_312027 0)) ((($Mutation_312027 (|l#$Mutation_312027| T@$Location) (|p#$Mutation_312027| (Seq Int)) (|v#$Mutation_312027| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_311983 0)) ((($Mutation_311983 (|l#$Mutation_311983| T@$Location) (|p#$Mutation_311983| (Seq Int)) (|v#$Mutation_311983| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_301352 0)) ((($Mutation_301352 (|l#$Mutation_301352| T@$Location) (|p#$Mutation_301352| (Seq Int)) (|v#$Mutation_301352| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-datatypes ((T@$Mutation_88061 0)) ((($Mutation_88061 (|l#$Mutation_88061| T@$Location) (|p#$Mutation_88061| (Seq Int)) (|v#$Mutation_88061| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_288749 0)) ((($Mutation_288749 (|l#$Mutation_288749| T@$Location) (|p#$Mutation_288749| (Seq Int)) (|v#$Mutation_288749| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_275645 0)) ((($Mutation_275645 (|l#$Mutation_275645| T@$Location) (|p#$Mutation_275645| (Seq Int)) (|v#$Mutation_275645| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_196002 0)) ((($Mutation_196002 (|l#$Mutation_196002| T@$Location) (|p#$Mutation_196002| (Seq Int)) (|v#$Mutation_196002| T@$1_DiemConfig_Configuration) ) ) ))
(declare-datatypes ((T@$Mutation_191081 0)) ((($Mutation_191081 (|l#$Mutation_191081| T@$Location) (|p#$Mutation_191081| (Seq Int)) (|v#$Mutation_191081| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_191036 0)) ((($Mutation_191036 (|l#$Mutation_191036| T@$Location) (|p#$Mutation_191036| (Seq Int)) (|v#$Mutation_191036| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_188431 0)) ((($Mutation_188431 (|l#$Mutation_188431| T@$Location) (|p#$Mutation_188431| (Seq Int)) (|v#$Mutation_188431| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_188386 0)) ((($Mutation_188386 (|l#$Mutation_188386| T@$Location) (|p#$Mutation_188386| (Seq Int)) (|v#$Mutation_188386| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_185781 0)) ((($Mutation_185781 (|l#$Mutation_185781| T@$Location) (|p#$Mutation_185781| (Seq Int)) (|v#$Mutation_185781| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_185736 0)) ((($Mutation_185736 (|l#$Mutation_185736| T@$Location) (|p#$Mutation_185736| (Seq Int)) (|v#$Mutation_185736| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_183131 0)) ((($Mutation_183131 (|l#$Mutation_183131| T@$Location) (|p#$Mutation_183131| (Seq Int)) (|v#$Mutation_183131| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_183086 0)) ((($Mutation_183086 (|l#$Mutation_183086| T@$Location) (|p#$Mutation_183086| (Seq Int)) (|v#$Mutation_183086| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_180409 0)) ((($Mutation_180409 (|l#$Mutation_180409| T@$Location) (|p#$Mutation_180409| (Seq Int)) (|v#$Mutation_180409| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_172647 0)) ((($Mutation_172647 (|l#$Mutation_172647| T@$Location) (|p#$Mutation_172647| (Seq Int)) (|v#$Mutation_172647| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_165934 0)) ((($Mutation_165934 (|l#$Mutation_165934| T@$Location) (|p#$Mutation_165934| (Seq Int)) (|v#$Mutation_165934| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_160175 0)) ((($Mutation_160175 (|l#$Mutation_160175| T@$Location) (|p#$Mutation_160175| (Seq Int)) (|v#$Mutation_160175| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_159429 0)) ((($Mutation_159429 (|l#$Mutation_159429| T@$Location) (|p#$Mutation_159429| (Seq Int)) (|v#$Mutation_159429| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_158025 0)) ((($Mutation_158025 (|l#$Mutation_158025| T@$Location) (|p#$Mutation_158025| (Seq Int)) (|v#$Mutation_158025| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_157279 0)) ((($Mutation_157279 (|l#$Mutation_157279| T@$Location) (|p#$Mutation_157279| (Seq Int)) (|v#$Mutation_157279| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_155875 0)) ((($Mutation_155875 (|l#$Mutation_155875| T@$Location) (|p#$Mutation_155875| (Seq Int)) (|v#$Mutation_155875| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_155129 0)) ((($Mutation_155129 (|l#$Mutation_155129| T@$Location) (|p#$Mutation_155129| (Seq Int)) (|v#$Mutation_155129| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_153725 0)) ((($Mutation_153725 (|l#$Mutation_153725| T@$Location) (|p#$Mutation_153725| (Seq Int)) (|v#$Mutation_153725| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_152979 0)) ((($Mutation_152979 (|l#$Mutation_152979| T@$Location) (|p#$Mutation_152979| (Seq Int)) (|v#$Mutation_152979| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_151575 0)) ((($Mutation_151575 (|l#$Mutation_151575| T@$Location) (|p#$Mutation_151575| (Seq Int)) (|v#$Mutation_151575| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_150829 0)) ((($Mutation_150829 (|l#$Mutation_150829| T@$Location) (|p#$Mutation_150829| (Seq Int)) (|v#$Mutation_150829| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_149425 0)) ((($Mutation_149425 (|l#$Mutation_149425| T@$Location) (|p#$Mutation_149425| (Seq Int)) (|v#$Mutation_149425| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_148679 0)) ((($Mutation_148679 (|l#$Mutation_148679| T@$Location) (|p#$Mutation_148679| (Seq Int)) (|v#$Mutation_148679| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_147237 0)) ((($Mutation_147237 (|l#$Mutation_147237| T@$Location) (|p#$Mutation_147237| (Seq Int)) (|v#$Mutation_147237| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_146491 0)) ((($Mutation_146491 (|l#$Mutation_146491| T@$Location) (|p#$Mutation_146491| (Seq Int)) (|v#$Mutation_146491| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_144488_| (|T@[$1_Event_EventHandle]Multiset_144488| T@$1_Event_EventHandle) T@Multiset_144488)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun $choice_0 ((Seq T@$1_DiemSystem_ValidatorInfo) Int) Int)
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_131332 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_130544 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_130741 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_130938 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_131529 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_131135 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_130347 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_144488| |T@[$1_Event_EventHandle]Multiset_144488|) |T@[$1_Event_EventHandle]Multiset_144488|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemConfigbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemConfigbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemConfigbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemConfigbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemConfigbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemConfigbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemConfigbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemConfigbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |DiemConfigbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemConfigbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemConfigbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemConfigbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemConfigbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |DiemConfigbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemConfigbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemConfigbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemConfigbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemConfigbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |DiemConfigbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemConfigbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemConfigbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemConfigbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemConfigbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |DiemConfigbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemConfigbpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemConfigbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemConfigbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemConfigbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u64'| (seq.nth v@@20 i@@24)))
 :qid |DiemConfigbpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemConfigbpl.2033:29|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u64''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u64'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemConfigbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemConfigbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemConfigbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u64'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemConfigbpl.2215:13|
 :skolemid |60|
))))
 :qid |DiemConfigbpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemConfigbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemConfigbpl.2228:17|
 :skolemid |63|
)))))
 :qid |DiemConfigbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemConfigbpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemConfigbpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConfigbpl.2488:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConfigbpl.2491:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_144488| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream) v@@24) 0)
 :qid |DiemConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigbpl.2552:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConfigbpl.2593:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemConfigbpl.2599:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConfigbpl.2649:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemConfigbpl.2655:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConfigbpl.2705:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemConfigbpl.2711:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConfigbpl.2761:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemConfigbpl.2767:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConfigbpl.2817:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemConfigbpl.2823:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConfigbpl.2873:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemConfigbpl.2879:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConfigbpl.2929:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemConfigbpl.2935:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConfigbpl.2985:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemConfigbpl.2991:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConfigbpl.3041:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemConfigbpl.3047:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemConfigbpl.3097:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemConfigbpl.3103:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemConfigbpl.3153:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemConfigbpl.3159:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemConfigbpl.3209:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemConfigbpl.3215:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemConfigbpl.3265:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemConfigbpl.3271:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemConfigbpl.3321:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemConfigbpl.3327:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemConfigbpl.3377:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemConfigbpl.3383:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemConfigbpl.3433:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemConfigbpl.3439:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemConfigbpl.3489:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemConfigbpl.3495:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemConfigbpl.3574:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemConfigbpl.4418:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemConfigbpl.4437:71|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |DiemConfigbpl.4556:42|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemConfigbpl.4569:46|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemConfigbpl.4582:64|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemConfigbpl.4595:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemConfigbpl.4608:72|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemConfigbpl.4657:55|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemConfigbpl.4679:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemConfigbpl.4697:49|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemConfigbpl.4802:71|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemConfigbpl.4816:91|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemConfigbpl.4830:113|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@13)))
 :qid |DiemConfigbpl.4844:89|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemConfigbpl.4858:75|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemConfigbpl.4872:73|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16) true)
 :qid |DiemConfigbpl.4886:49|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@17)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@17)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@17))))
 :qid |DiemConfigbpl.4906:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18) true)
 :qid |DiemConfigbpl.4922:57|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19) true)
 :qid |DiemConfigbpl.4936:83|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20) true)
 :qid |DiemConfigbpl.4950:103|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21) true)
 :qid |DiemConfigbpl.4964:125|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22) true)
 :qid |DiemConfigbpl.4978:101|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23) true)
 :qid |DiemConfigbpl.4992:87|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24) true)
 :qid |DiemConfigbpl.5006:85|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25) true)
 :qid |DiemConfigbpl.5020:61|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@26)))
 :qid |DiemConfigbpl.5034:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@27)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@27))))
 :qid |DiemConfigbpl.17334:45|
 :skolemid |541|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@28)))
 :qid |DiemConfigbpl.17348:51|
 :skolemid |542|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@29)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@29))))
 :qid |DiemConfigbpl.17371:48|
 :skolemid |543|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29))
)))
(assert (forall ((s@@30 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@30)))
 :qid |DiemConfigbpl.22319:49|
 :skolemid |751|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30))
)))
(assert (forall ((s@@31 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@31)))
 :qid |DiemConfigbpl.22337:65|
 :skolemid |752|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@32)))
 :qid |DiemConfigbpl.23903:45|
 :skolemid |792|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@33)))
 :qid |DiemConfigbpl.23916:45|
 :skolemid |793|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34) true)
 :qid |DiemConfigbpl.23929:55|
 :skolemid |794|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35) true)
 :qid |DiemConfigbpl.23943:55|
 :skolemid |795|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@36))))
 :qid |DiemConfigbpl.23963:38|
 :skolemid |796|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@37))))
 :qid |DiemConfigbpl.23984:44|
 :skolemid |797|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))))
 :qid |DiemConfigbpl.24035:53|
 :skolemid |798|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))))
 :qid |DiemConfigbpl.24097:53|
 :skolemid |799|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |DiemConfigbpl.24123:55|
 :skolemid |800|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |DiemConfigbpl.24137:55|
 :skolemid |801|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |DiemConfigbpl.24154:38|
 :skolemid |802|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |DiemConfigbpl.24168:48|
 :skolemid |803|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |DiemConfigbpl.24182:48|
 :skolemid |804|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemConfigbpl.24202:41|
 :skolemid |805|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |DiemConfigbpl.24220:57|
 :skolemid |806|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |DiemConfigbpl.26326:68|
 :skolemid |807|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |DiemConfigbpl.26348:66|
 :skolemid |808|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |DiemConfigbpl.26374:66|
 :skolemid |809|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |DiemConfigbpl.26403:56|
 :skolemid |810|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |DiemConfigbpl.26433:56|
 :skolemid |811|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |DiemConfigbpl.26755:31|
 :skolemid |812|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |DiemConfigbpl.27085:31|
 :skolemid |813|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |DiemConfigbpl.27104:35|
 :skolemid |814|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |DiemConfigbpl.27513:45|
 :skolemid |815|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |DiemConfigbpl.27532:50|
 :skolemid |816|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |DiemConfigbpl.27547:52|
 :skolemid |817|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@58) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@58)))
 :qid |DiemConfigbpl.27561:46|
 :skolemid |818|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |DiemConfigbpl.27585:38|
 :skolemid |819|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |DiemConfigbpl.27599:39|
 :skolemid |820|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DiemConfigbpl.27626:65|
 :skolemid |821|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemConfigbpl.27994:60|
 :skolemid |822|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemConfigbpl.28011:66|
 :skolemid |823|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemConfigbpl.28040:50|
 :skolemid |824|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemConfigbpl.28059:45|
 :skolemid |825|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemConfigbpl.28366:87|
 :skolemid |826|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DiemConfigbpl.30266:47|
 :skolemid |927|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DiemConfigbpl.30286:58|
 :skolemid |928|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |DiemConfigbpl.30301:39|
 :skolemid |929|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |DiemConfigbpl.30323:58|
 :skolemid |930|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |DiemConfigbpl.30340:58|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |DiemConfigbpl.30355:51|
 :skolemid |932|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |DiemConfigbpl.30372:60|
 :skolemid |933|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |DiemConfigbpl.30658:47|
 :skolemid |934|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |DiemConfigbpl.30680:63|
 :skolemid |935|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |DiemConfigbpl.30695:57|
 :skolemid |936|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |DiemConfigbpl.30708:55|
 :skolemid |937|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |DiemConfigbpl.30722:55|
 :skolemid |938|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |DiemConfigbpl.30739:54|
 :skolemid |939|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |DiemConfigbpl.30753:55|
 :skolemid |940|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |DiemConfigbpl.30767:57|
 :skolemid |941|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |DiemConfigbpl.30789:56|
 :skolemid |942|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |DiemConfigbpl.30814:52|
 :skolemid |943|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |DiemConfigbpl.30830:54|
 :skolemid |944|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |DiemConfigbpl.31672:47|
 :skolemid |945|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |DiemConfigbpl.31696:47|
 :skolemid |946|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@87) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@87)))
 :qid |DiemConfigbpl.31928:63|
 :skolemid |947|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@88)))
 :qid |DiemConfigbpl.33226:49|
 :skolemid |1017|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@89)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@89))))
 :qid |DiemConfigbpl.33269:49|
 :skolemid |1018|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@90)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@90))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@90))))
 :qid |DiemConfigbpl.33298:48|
 :skolemid |1019|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@91)))
 :qid |DiemConfigbpl.35217:47|
 :skolemid |1090|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91))
)))
(assert (forall ((validators (Seq T@$1_DiemSystem_ValidatorInfo)) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@30 Int) ) (!  (and (and (|$IsValid'num'| i@@30) ($InRange ($Range 0 (seq.len validators)) i@@30)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@30)) addr))
 :qid |DiemConfigbpl.38178:13|
 :skolemid |1251|
)) (let ((i@@31 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@31) ($InRange ($Range 0 (seq.len validators)) i@@31)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@31)) addr)) (let (($$c i@@31))
(forall ((i@@32 Int) ) (!  (=> (< i@@32 $$c) (not (and (and (|$IsValid'num'| i@@32) ($InRange ($Range 0 (seq.len validators)) i@@32)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@32)) addr))))
 :qid |DiemConfigbpl.38180:32|
 :skolemid |1252|
)))))))
 :qid |DiemConfigbpl.38177:15|
 :skolemid |1253|
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@25 (- (- (seq.len v@@25) i@@33) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_131332 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@26 (- (- (seq.len v@@26) i@@34) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131332 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_130544 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@27 (- (- (seq.len v@@27) i@@35) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130544 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_130741 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@28 (- (- (seq.len v@@28) i@@36) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130741 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_130938 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@29 (- (- (seq.len v@@29) i@@37) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130938 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_131529 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@30 (- (- (seq.len v@@30) i@@38) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131529 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_131135 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@31 (- (- (seq.len v@@31) i@@39) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131135 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_130347 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@32 (- (- (seq.len v@@32) i@@40) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130347 v@@32))
)))
(assert (forall ((|l#0| Bool) (i@@41 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41) |l#0|)
 :qid |DiemConfigbpl.250:54|
 :skolemid |1254|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_144488|) (|l#1| |T@[$1_Event_EventHandle]Multiset_144488|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#1| handle@@0))))
(Multiset_144488 (|lambda#3| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#0@@0| handle@@0)) (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConfigbpl.2562:13|
 :skolemid |1255|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@33) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@33)))
 :qid |DiemConfigbpl.129:29|
 :skolemid |1256|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33))
)))
; Undetermined
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t85 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| () T@$Memory_173196)
(declare-fun $t86 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@3 () T@$Memory_173110)
(declare-fun $t87 () Int)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_172108)
(declare-fun $t88 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_177901)
(declare-fun _$t1 () Int)
(declare-fun $t18 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_173196)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_172830)
(declare-fun $t19 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $t15 () Bool)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_178909)
(declare-fun $t21 () T@$1_DiemConfig_Configuration)
(declare-fun $t22 () Int)
(declare-fun $t17 () Int)
(declare-fun $t26 () Int)
(declare-fun $t20 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es () T@$EventStore)
(declare-fun $t23 () Bool)
(declare-fun $t24 () T@$1_DiemConfig_Configuration)
(declare-fun $t25 () T@$1_Event_EventHandle)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_144488_| (|T@[$1_Event_EventHandle]Multiset_144488| T@$1_Event_EventHandle T@Multiset_144488) |T@[$1_Event_EventHandle]Multiset_144488|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_144488|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_144488)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|Store__T@[$1_Event_EventHandle]Multiset_144488_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_144488|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_144488)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|Store__T@[$1_Event_EventHandle]Multiset_144488_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_144488_| ?x0 ?y1))) :weight 0)))
(declare-fun $t79 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_173110)
(declare-fun $t80 () Int)
(declare-fun $t81 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_173196)
(declare-fun $t10@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_173110)
(declare-fun $t82 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t83 () T@$1_Event_EventHandle)
(declare-fun $t77 () T@$1_Event_EventHandle)
(declare-fun $t84 () Bool)
(declare-fun $t76 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_173269)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_173110)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_173110)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_173196)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_173196)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t78 () Bool)
(declare-fun $t50 () Bool)
(declare-fun $t28@0 () Int)
(declare-fun $t28 () Int)
(declare-fun $t74 () T@$1_DiemConfig_Configuration)
(declare-fun $t75 () Int)
(declare-fun $t71 () Bool)
(declare-fun $t70 () Int)
(declare-fun $t72@0 () T@$Mutation_11233)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| () T@$Mutation_153725)
(declare-fun $t72@1 () T@$Mutation_11233)
(declare-fun $t54@0 () T@$Mutation_153725)
(declare-fun $t53@1 () T@$Mutation_152979)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_152979)
(declare-fun $t52@1 () T@$Mutation_183131)
(declare-fun $t52@0 () T@$Mutation_183131)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $1_DiemConfig_Configuration_$modifies () |T@[Int]Bool|)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t69 () Int)
(declare-fun $t62 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t64@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $t63 () Bool)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t61 () Int)
(declare-fun $t55@0 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$1_DiemSystem_ValidatorInfo'@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@0| () T@$Mutation_153725)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_152979)
(declare-fun $t45 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1| () T@$Mutation_153725)
(declare-fun $t53@0 () T@$Mutation_152979)
(declare-fun $abort_code@0 () Int)
(declare-fun $t10@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t46 () Bool)
(declare-fun $t41 () |T@$1_Option_Option'u64'|)
(declare-fun $t47@0 () T@$Mutation_183131)
(declare-fun $t10 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t48@0 () T@$Mutation_152979)
(declare-fun $t49 () T@$1_ValidatorConfig_Config)
(declare-fun $t51@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t48@1 () T@$Mutation_152979)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t47@1 () T@$Mutation_183131)
(declare-fun $t42 () Bool)
(declare-fun $t44 () Int)
(declare-fun $t37 () Bool)
(declare-fun $t39@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t40 () Int)
(declare-fun $t34@0 () Bool)
(declare-fun $t36 () Int)
(declare-fun $t32 () Bool)
(declare-fun $t31 () Int)
(declare-fun $t33 () Int)
(declare-fun _$t0 () T@$signer)
(declare-fun $t30 () Bool)
(declare-fun $t29 () Int)
(declare-fun $t27 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_176842)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_173017)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_173340)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_173424)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_173508)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_173579)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_173663)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_173747)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_173818)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_173915)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_194338)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_173999)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_174083)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_174154)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_174225)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_174397)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_174468)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_194451)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_194551)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_194636)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_194723)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_194783)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_194868)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_195123)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_195223)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_174539)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_174623)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_172704)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $t16 () Int)
(declare-fun $t14 () T@$Mutation_153725)
(declare-fun $t47 () T@$Mutation_183131)
(declare-fun $t48 () T@$Mutation_152979)
(declare-fun $t52 () T@$Mutation_183131)
(declare-fun $t53 () T@$Mutation_152979)
(declare-fun $t54 () T@$Mutation_153725)
(declare-fun $t72 () T@$Mutation_11233)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_update_config_and_reconfigure$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 556076) (let ((L6_correct  (=> (and (and (= $t85 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3|) addr@@0))))) (= $t86 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory@3) 173345816))) (and (= $t87 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t88 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t86))))) (and (=> (= (ControlFlow 0 419506) (- 0 561463)) (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))))) (=> (not (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0)))) (and (=> (= (ControlFlow 0 419506) (- 0 561474)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (and (=> (= (ControlFlow 0 419506) (- 0 561485)) (not (not (= (let ((t_ref (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref)) 0)) $t18)))) (=> (not (not (= (let ((t_ref@@0 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@0)) 0)) $t18))) (and (=> (= (ControlFlow 0 419506) (- 0 561500)) (not (not (let (($range_0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1))))))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((v@@34 (seq.nth $range_0 $i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@34) _$t1)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
)))))) (=> (not (not (let (($range_0@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2))))))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((v@@35 (seq.nth $range_0@@0 $i_1@@0)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@35) _$t1)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
))))) (and (=> (= (ControlFlow 0 419506) (- 0 561511)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 419506) (- 0 561521)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t19)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t19))) (and (=> (= (ControlFlow 0 419506) (- 0 561533)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t19)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t19)) 4))) (and (=> (= (ControlFlow 0 419506) (- 0 561551)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (and (=> (= (ControlFlow 0 419506) (- 0 561562)) (not (and $t15 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t21) 18446744073709551615)) (< $t22 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t21)))))) (=> (not (and $t15 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t21) 18446744073709551615)) (< $t22 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t21))))) (and (=> (= (ControlFlow 0 419506) (- 0 561608)) (not (and $t15 (> $t17 (- 18446744073709551615 300000000))))) (=> (not (and $t15 (> $t17 (- 18446744073709551615 300000000)))) (and (=> (= (ControlFlow 0 419506) (- 0 561627)) (not (and $t15 (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ $t17 300000000))))) (=> (not (and $t15 (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ $t17 300000000)))) (and (=> (= (ControlFlow 0 419506) (- 0 561647)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t26)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t26))) (and (=> (= (ControlFlow 0 419506) (- 0 561659)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t26)) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t26)) 4))) (and (=> (= (ControlFlow 0 419506) (- 0 561677)) (= (seq.len $t85) (seq.len $t20))) (=> (= (seq.len $t85) (seq.len $t20)) (and (=> (= (ControlFlow 0 419506) (- 0 561690)) (let (($range_0@@1 ($Range 0 (seq.len $t20))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@42 $i_1@@1))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t85 i@@42)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@42)))))
 :qid |DiemConfigbpl.22214:57|
 :skolemid |748|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len $t20))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@43 $i_1@@2))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t85 i@@43)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@43)))))
 :qid |DiemConfigbpl.22214:57|
 :skolemid |748|
))) (and (=> (= (ControlFlow 0 419506) (- 0 561736)) (let (($range_0@@3 ($Range 0 (seq.len $t20))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@3) (let ((i@@44 $i_1@@3))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@44)) _$t1)) (= (seq.nth $t85 i@@44) (seq.nth $t20 i@@44)))))
 :qid |DiemConfigbpl.22220:57|
 :skolemid |749|
)))) (=> (let (($range_0@@4 ($Range 0 (seq.len $t20))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@4) (let ((i@@45 $i_1@@4))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@45)) _$t1)) (= (seq.nth $t85 i@@45) (seq.nth $t20 i@@45)))))
 :qid |DiemConfigbpl.22220:57|
 :skolemid |749|
))) (and (=> (= (ControlFlow 0 419506) (- 0 561793)) (let (($range_0@@5 ($Range 0 (seq.len $t20))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i@@46 $i_1@@5))
 (or (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t85 i@@46)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@46))) (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@46)) _$t1) (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t85 i@@46)) (let ((config (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))
(seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| config) 0)))))))
 :qid |DiemConfigbpl.22226:57|
 :skolemid |750|
)))) (=> (let (($range_0@@6 ($Range 0 (seq.len $t20))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i@@47 $i_1@@6))
 (or (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t85 i@@47)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@47))) (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20 i@@47)) _$t1) (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t85 i@@47)) (let ((config@@0 (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))
(seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| config@@0) 0)))))))
 :qid |DiemConfigbpl.22226:57|
 :skolemid |750|
))) (and (=> (= (ControlFlow 0 419506) (- 0 561869)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) _$t1)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) _$t1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) _$t1)) 3)) (and (=> (= (ControlFlow 0 419506) (- 0 561877)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and $t23 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t87 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t24))))) (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t25)))
(let ((stream_new (let ((len (|l#Multiset_144488| stream@@0)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t88))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@0) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t88) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t25 stream_new)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@1 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected) handle@@1)) (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual) handle@@1))) (forall ((v@@36 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected) handle@@1)) v@@36) (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual) handle@@1)) v@@36))
 :qid |DiemConfigbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigbpl.2568:13|
 :skolemid |70|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and $t23 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t87 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t24))))) (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t25)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_144488| stream@@1)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t88))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@1) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t88) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t25 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@0) handle@@2)) (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@0) handle@@2))) (forall ((v@@37 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@0) handle@@2)) v@@37) (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@0) handle@@2)) v@@37))
 :qid |DiemConfigbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigbpl.2568:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 419506) (- 0 561926)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@1) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and $t23 (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t87 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t24))))) (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t25)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_144488| stream@@2)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t88))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@2) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t88) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) $t25 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@1) handle@@3)) (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@1) handle@@3))) (forall ((v@@38 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| actual@@1) handle@@3)) v@@38) (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| expected@@1) handle@@3)) v@@38))
 :qid |DiemConfigbpl.139:13|
 :skolemid |3|
)))
 :qid |DiemConfigbpl.2568:13|
 :skolemid |70|
)))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon43_correct  (=> (= $t79 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory@2) 173345816)) (=> (and (= $t80 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t81 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t79)))) (=> (and (and (and (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) $t10@1) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (and (= (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@3))) $t10@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory@2) 173345816)))) (and (and (= $t82 $t81) (= $t83 $t77)) (and (= $t84  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t80 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t76))))) (= $es@0 (ite $t84 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $es) $t83)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_144488| stream@@3)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t82))))
(Multiset_144488 (|Store__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@3) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t82) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $es) $t83 stream_new@@2)))) $es))))) (and (=> (= (ControlFlow 0 421356) (- 0 561029)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory@2) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory@2) 173345816)) (and (=> (= (ControlFlow 0 421356) (- 0 561041)) (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) config_address) (= config_address 173345816)))
 :qid |DiemConfigbpl.22070:15|
 :skolemid |741|
))) (=> (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) config_address@@0) (= config_address@@0 173345816)))
 :qid |DiemConfigbpl.22070:15|
 :skolemid |741|
)) (and (=> (= (ControlFlow 0 421356) (- 0 561066)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (and (=> (= (ControlFlow 0 421356) (- 0 561077)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (=> (= (ControlFlow 0 421356) (- 0 561097)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@4) (= addr@@4 173345816)))
 :qid |DiemConfigbpl.22088:15|
 :skolemid |742|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@5) (= addr@@5 173345816)))
 :qid |DiemConfigbpl.22088:15|
 :skolemid |742|
)) (and (=> (= (ControlFlow 0 421356) (- 0 561122)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (not (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@6))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@7)))))))) (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and ($1_Signer_is_txn_signer_addr a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) a) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) a)) 0))))
 :qid |DiemConfigbpl.4409:13|
 :skolemid |107|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (not (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@9)))))))) (exists ((a@@0 Int) ) (!  (and (|$IsValid'address'| a@@0) (and ($1_Signer_is_txn_signer_addr a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) a@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) a@@0)) 0))))
 :qid |DiemConfigbpl.4409:13|
 :skolemid |107|
))) (and (=> (= (ControlFlow 0 421356) (- 0 561159)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@10 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@10))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@11))))))) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (let (($range_0@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@13))))))))
(exists (($i_1@@7 Int) ) (!  (and ($InRange $range_0@@7 $i_1@@7) (let ((i@@48 $i_1@@7))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14)))) i@@48)) addr@@12) (not (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15)))) i@@48)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@16)))) i@@48)))))))
 :qid |DiemConfigbpl.22100:823|
 :skolemid |743|
))) (exists ((a@@1 Int) ) (!  (and (|$IsValid'address'| a@@1) (and ($1_Signer_is_txn_signer_addr a@@1) (= (let ((t_ref@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@12)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@1)) 0)) a@@1)))
 :qid |DiemConfigbpl.22101:674|
 :skolemid |744|
))))
 :qid |DiemConfigbpl.22100:592|
 :skolemid |745|
)))) (=> (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@17 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@17))))) (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@18 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@18))))))) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (let (($range_0@@8 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@20 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@20))))))))
(exists (($i_1@@8 Int) ) (!  (and ($InRange $range_0@@8 $i_1@@8) (let ((i@@49 $i_1@@8))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@21 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@21)))) i@@49)) addr@@19) (not (= (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@22 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@22)))) i@@49)) (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@23 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@23)))) i@@49)))))))
 :qid |DiemConfigbpl.22100:823|
 :skolemid |743|
))) (exists ((a@@2 Int) ) (!  (and (|$IsValid'address'| a@@2) (and ($1_Signer_is_txn_signer_addr a@@2) (= (let ((t_ref@@2 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@19)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@2)) 0)) a@@2)))
 :qid |DiemConfigbpl.22101:674|
 :skolemid |744|
))))
 :qid |DiemConfigbpl.22100:592|
 :skolemid |745|
))) (and (=> (= (ControlFlow 0 421356) (- 0 561297)) (let (($range_0@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@24 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@24))))))))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@9 $i_1@@9) (let ((i1 $i_1@@9))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@25 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@25)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@25 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@25)))) i1)))) 3))))
 :qid |DiemConfigbpl.22107:146|
 :skolemid |746|
)))) (=> (let (($range_0@@10 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@26 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@26))))))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@10 $i_1@@10) (let ((i1@@0 $i_1@@10))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@27)))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@27 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@27)))) i1@@0)))) 3))))
 :qid |DiemConfigbpl.22107:146|
 :skolemid |746|
))) (and (=> (= (ControlFlow 0 421356) (- 0 561339)) (let (($range_0@@11 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@28 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@28))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@11) (let ((i1@@1 $i_1@@11))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@29 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@29)))) i1@@1)) 1)))
 :qid |DiemConfigbpl.22114:146|
 :skolemid |747|
)))) (=> (let (($range_0@@12 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@30 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@30))))))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@12 $i_1@@12) (let ((i1@@2 $i_1@@12))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@31 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@31)))) i1@@2)) 1)))
 :qid |DiemConfigbpl.22114:146|
 :skolemid |747|
))) (=> (and (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory@2)) (and (= $es@1 $es@0) (= (ControlFlow 0 421356) 419506))) L6_correct))))))))))))))))))))))))
(let ((anon63_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_173110 (|Store__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 420869) 421356))) anon43_correct)))
(let ((anon63_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_173110 (|Store__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 421368) 421356))) anon43_correct)))
(let ((anon62_Else_correct  (=> (not |$temp_0'bool'@0|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_173196 (|Store__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 420855) 421368) anon63_Then_correct) (=> (= (ControlFlow 0 420855) 420869) anon63_Else_correct))))))
(let ((anon62_Then_correct  (=> |$temp_0'bool'@0| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_173196 (|Store__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 421380) 421368) anon63_Then_correct) (=> (= (ControlFlow 0 421380) 420869) anon63_Else_correct))))))
(let ((anon61_Else_correct  (=> (not $t78) (and (=> (= (ControlFlow 0 420843) 421380) anon62_Then_correct) (=> (= (ControlFlow 0 420843) 420855) anon62_Else_correct)))))
(let ((anon53_Else_correct  (=> (not $t50) (=> (and (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@3| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) (= $1_DiemConfig_Configuration_$memory@3 $1_DiemConfig_Configuration_$memory)) (and (= $es@1 $es) (= (ControlFlow 0 418935) 419506))) L6_correct))))
(let ((L12_correct  (and (=> (= (ControlFlow 0 418179) (- 0 560368)) (or (or (or (or (or (or (or (or (or (or (or (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (not (= (let ((t_ref@@3 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@3)) 0)) $t18))) (not (let (($range_0@@13 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@32 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@32))))))
(exists (($i_1@@13 Int) ) (!  (and (and (>= $i_1@@13 0) (< $i_1@@13 (seq.len $range_0@@13))) (let ((v@@39 (seq.nth $range_0@@13 $i_1@@13)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@39) _$t1)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t19)) 4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (and $t15 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t21) 18446744073709551615)) (< $t22 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t21))))) (and $t15 (> $t17 (- 18446744073709551615 300000000)))) (and $t15 (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ $t17 300000000)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t26)) 4)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (not (= (let ((t_ref@@4 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@4)) 0)) $t18))) (not (let (($range_0@@14 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@33 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@33))))))
(exists (($i_1@@14 Int) ) (!  (and (and (>= $i_1@@14 0) (< $i_1@@14 (seq.len $range_0@@14))) (let ((v@@40 (seq.nth $range_0@@14 $i_1@@14)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@40) _$t1)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
))))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t19)) 4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) (and $t15 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t21) 18446744073709551615)) (< $t22 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t21))))) (and $t15 (> $t17 (- 18446744073709551615 300000000)))) (and $t15 (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ $t17 300000000)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t26)) 4))) (=> (= (ControlFlow 0 418179) (- 0 560541)) (or (or (or (or (or (or (or (or (or (or (or (or (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (= 7 $t28@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t28@0))) (and (not (= (let ((t_ref@@5 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@5)) 0)) $t18)) (= 7 $t28@0))) (and (not (let (($range_0@@15 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@34 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@34))))))
(exists (($i_1@@15 Int) ) (!  (and (and (>= $i_1@@15 0) (< $i_1@@15 (seq.len $range_0@@15))) (let ((v@@41 (seq.nth $range_0@@15 $i_1@@15)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@41) _$t1)))
 :qid |DiemConfigbpl.17311:125|
 :skolemid |540|
)))) (= 7 $t28@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t28@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t19)) (= 5 $t28@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t19)) 4)) (= 3 $t28@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t28@0))) (and (and $t15 (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t21) 18446744073709551615)) (< $t22 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t21)))) (= 1 $t28@0))) (and (and $t15 (> $t17 (- 18446744073709551615 300000000))) (= 8 $t28@0))) (and (and $t15 (<= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (+ $t17 300000000))) (= 8 $t28@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t26)) (= 5 $t28@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t26)) 4)) (= 3 $t28@0))))))))
(let ((anon61_Then_correct  (=> $t78 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t28)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t74) 18446744073709551615)) (< $t75 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t74))) (= 1 $t28))) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421456) 418179))) L12_correct))))
(let ((anon60_Else_correct  (=> (and (and (and (not $t71) (|$IsValid'u64'| $t70)) (and (= $t70 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t72@0 ($Mutation_11233 (|l#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (seq.++ (|p#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (seq.unit 3)) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)))))) (and (and (= $t72@1 ($Mutation_11233 (|l#$Mutation_11233| $t72@0) (|p#$Mutation_11233| $t72@0) $t70)) (= $t54@0 ($Mutation_153725 (|l#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (|p#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|$config#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|v#$Mutation_11233| $t72@1))))) (and (= $t53@1 ($Mutation_152979 (|l#$Mutation_152979| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (|p#$Mutation_152979| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (seq.update (|v#$Mutation_152979| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (seq.nth (|p#$Mutation_153725| $t54@0) (seq.len (|p#$Mutation_152979| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) (seq.unit (|v#$Mutation_153725| $t54@0))))) (= $t52@1 ($Mutation_183131 (|l#$Mutation_183131| $t52@0) (|p#$Mutation_183131| $t52@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) (|v#$Mutation_152979| $t53@1))))))) (and (=> (= (ControlFlow 0 420835) (- 0 559980)) (let (($range_0@@16 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1))))))
(let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1))))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@16 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@50 $i_2))
(let ((j@@9 $i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1)) i@@50)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1)) j@@9))) (= i@@50 j@@9))))))
 :qid |DiemConfigbpl.21927:203|
 :skolemid |740|
))))) (=> (let (($range_0@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1))))))
(let (($range_1@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1))))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@17 $i_2@@0) (=> ($InRange $range_1@@0 $i_3@@0) (let ((i@@51 $i_2@@0))
(let ((j@@10 $i_3@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1)) i@@51)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@1)) j@@10))) (= i@@51 j@@10))))))
 :qid |DiemConfigbpl.21927:203|
 :skolemid |740|
)))) (=> (= $t10@1 (|v#$Mutation_183131| $t52@1)) (=> (and (and (= $t74 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t75 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t76 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t77 (|$events#$1_DiemConfig_Configuration| $t76)))) (and (=> (= (ControlFlow 0 420835) (- 0 560133)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (=> (= (ControlFlow 0 420835) (- 0 560160)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (and (=> (= (ControlFlow 0 420835) (- 0 560166)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816) (=> (= $t78  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t74) 18446744073709551615)) (< $t75 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t74))))) (and (=> (= (ControlFlow 0 420835) 421456) anon61_Then_correct) (=> (= (ControlFlow 0 420835) 420843) anon61_Else_correct))))))))))))))))
(let ((anon60_Then_correct  (=> $t71 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t28)) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421482) 418179))) L12_correct))))
(let ((anon59_Then_correct  (=> (and inline$$Gt$0$dst@1 (= $t71  (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 420502) 421482) anon60_Then_correct) (=> (= (ControlFlow 0 420502) 420835) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (not inline$$Gt$0$dst@1) (and (=> (= (ControlFlow 0 420488) (- 0 559746)) (let (($range_0@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(let (($range_1@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(forall (($i_2@@1 Int) ($i_3@@1 Int) ) (!  (=> ($InRange $range_0@@18 $i_2@@1) (=> ($InRange $range_1@@1 $i_3@@1) (let ((i@@52 $i_2@@1))
(let ((j@@11 $i_3@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) i@@52)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) j@@11))) (= i@@52 j@@11))))))
 :qid |DiemConfigbpl.21855:203|
 :skolemid |739|
))))) (=> (let (($range_0@@19 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(let (($range_1@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(forall (($i_2@@2 Int) ($i_3@@2 Int) ) (!  (=> ($InRange $range_0@@19 $i_2@@2) (=> ($InRange $range_1@@2 $i_3@@2) (let ((i@@53 $i_2@@2))
(let ((j@@12 $i_3@@2))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) i@@53)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) j@@12))) (= i@@53 j@@12))))))
 :qid |DiemConfigbpl.21855:203|
 :skolemid |739|
)))) (=> (= $t69 $t69) (=> (and (= $t28@0 $t69) (= (ControlFlow 0 420488) 418179)) L12_correct)))))))
(let ((anon58_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| $t69) (= $t69 8)) (and (= $t69 $t69) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 420379) 420502) anon59_Then_correct) (=> (= (ControlFlow 0 420379) 420488) anon59_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> $t62 inline$$AddU64$0$dst@2)) (= (ControlFlow 0 420339) 420379)) anon58_Else$1_correct)))
(let ((anon58_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 420345) 420339)) inline$$Gt$0$anon0_correct)))
(let ((anon58_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t28@0 $abort_code@3) (= (ControlFlow 0 421496) 418179))) L12_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 420285) 421496) anon58_Then_correct) (=> (= (ControlFlow 0 420285) 420345) anon58_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t64@0 300000000) $MAX_U64) (= (ControlFlow 0 420283) 420285)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t64@0 300000000)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t64@0 300000000)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 420231) 421496) anon58_Then_correct) (=> (= (ControlFlow 0 420231) 420345) anon58_Else_correct))))))
(let ((anon57_Else_correct  (=> (not $t63) (=> (and (and (|$IsValid'u64'| $t62) (= $t62 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t64@0 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))) (|$IsValid'u64'| 300000000))) (and (=> (= (ControlFlow 0 420291) 420283) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 420291) 420231) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon57_Then_correct  (=> $t63 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t28)) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421522) 418179))) L12_correct))))
(let ((anon56_Then_correct  (=> (and inline$$Le$0$dst@1 (= $t63  (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 420108) 421522) anon57_Then_correct) (=> (= (ControlFlow 0 420108) 420291) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (not inline$$Le$0$dst@1) (and (=> (= (ControlFlow 0 420094) (- 0 559425)) (let (($range_0@@20 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(let (($range_1@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(forall (($i_2@@3 Int) ($i_3@@3 Int) ) (!  (=> ($InRange $range_0@@20 $i_2@@3) (=> ($InRange $range_1@@3 $i_3@@3) (let ((i@@54 $i_2@@3))
(let ((j@@13 $i_3@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) i@@54)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) j@@13))) (= i@@54 j@@13))))))
 :qid |DiemConfigbpl.21751:203|
 :skolemid |738|
))))) (=> (let (($range_0@@21 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(let (($range_1@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0))))))
(forall (($i_2@@4 Int) ($i_3@@4 Int) ) (!  (=> ($InRange $range_0@@21 $i_2@@4) (=> ($InRange $range_1@@4 $i_3@@4) (let ((i@@55 $i_2@@4))
(let ((j@@14 $i_3@@4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) i@@55)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)) j@@14))) (= i@@55 j@@14))))))
 :qid |DiemConfigbpl.21751:203|
 :skolemid |738|
)))) (=> (= $t61 $t61) (=> (and (= $t28@0 $t61) (= (ControlFlow 0 420094) 418179)) L12_correct)))))))
(let ((anon55_Else$1_correct  (=> (|$IsValid'u64'| 8) (=> (and (and (|$IsValid'u64'| $t61) (= $t61 8)) (and (= $t61 $t61) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 419985) 420108) anon56_Then_correct) (=> (= (ControlFlow 0 419985) 420094) anon56_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= $t55@0 inline$$Sub$0$dst@2)) (= (ControlFlow 0 419945) 419985)) anon55_Else$1_correct)))
(let ((anon55_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 419951) 419945)) inline$$Le$0$anon0_correct)))
(let ((anon55_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t28@0 $abort_code@2) (= (ControlFlow 0 421536) 418179))) L12_correct)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 419891) 421536) anon55_Then_correct) (=> (= (ControlFlow 0 419891) 419951) anon55_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< 18446744073709551615 300000000) (= (ControlFlow 0 419889) 419891)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 300000000 18446744073709551615) (=> (and (and (= inline$$Sub$0$dst@1 (- 18446744073709551615 300000000)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 419841) 421536) anon55_Then_correct) (=> (= (ControlFlow 0 419841) 419951) anon55_Else_correct))))))
(let ((anon54_Else_correct  (=> (and (not $abort_flag@0) (= |$temp_0'$1_DiemSystem_ValidatorInfo'@0| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))) (=> (and (and (= |$temp_0'$1_DiemSystem_ValidatorInfo'@0| |$temp_0'$1_DiemSystem_ValidatorInfo'@0|) (= $t55@0 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_153725| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)))) (and (|$IsValid'u64'| 18446744073709551615) (|$IsValid'u64'| 300000000))) (and (=> (= (ControlFlow 0 419897) 419889) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 419897) 419841) inline$$Sub$0$anon3_Else_correct))))))
(let ((anon54_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t28@0 $abort_code@1) (= (ControlFlow 0 421550) 418179))) L12_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@0|))) (and (=> (= (ControlFlow 0 419714) 421550) anon54_Then_correct) (=> (= (ControlFlow 0 419714) 419897) anon54_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= $t45 0) (< $t45 (seq.len |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 419712) 419714)) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= $t45 0) (< $t45 (seq.len |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1| ($Mutation_153725 (|l#$Mutation_152979| $t53@0) (seq.++ (|p#$Mutation_152979| $t53@0) (seq.unit $t45)) (seq.nth |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| $t45)))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| $t53@0)))) (and (=> (= (ControlFlow 0 419662) 421550) anon54_Then_correct) (=> (= (ControlFlow 0 419662) 419897) anon54_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_152979| $t53@0)) (and (=> (= (ControlFlow 0 419632) 419712) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 419632) 419662) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((anon53_Then_correct  (=> (and (and $t50 (= $t52@0 ($Mutation_183131 ($Local 10) (as seq.empty (Seq Int)) $t10@0))) (and (= $t53@0 ($Mutation_152979 (|l#$Mutation_183131| $t52@0) (seq.++ (|p#$Mutation_183131| $t52@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t52@0)))) (= (ControlFlow 0 419722) 419632))) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))
(let ((anon52_Else_correct  (=> (not $t46) (=> (and (|$IsValid'u64'| $t45) (= $t45 (seq.nth (|$vec#$1_Option_Option'u64'| $t41) 0))) (=> (and (and (= $t45 $t45) (= $t47@0 ($Mutation_183131 ($Local 10) (as seq.empty (Seq Int)) $t10))) (and (= $t48@0 ($Mutation_152979 (|l#$Mutation_183131| $t47@0) (seq.++ (|p#$Mutation_183131| $t47@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@0)))) (= $t49 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_152979| $t48@0) $t45))))) 0)))) (and (=> (= (ControlFlow 0 418929) (- 0 558720)) (and (<= 0 $t45) (< $t45 (seq.len (|v#$Mutation_152979| $t48@0))))) (=> (and (<= 0 $t45) (< $t45 (seq.len (|v#$Mutation_152979| $t48@0)))) (and (=> (= (ControlFlow 0 418929) (- 0 558740)) (let (($range_0@@22 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@35 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@35))))))))
(forall (($i_1@@16 Int) ) (!  (=> ($InRange $range_0@@22 $i_1@@16) (let ((i1@@3 $i_1@@16))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@36 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@36)))) i1@@3)) 1)))
 :qid |DiemConfigbpl.21606:146|
 :skolemid |735|
)))) (=> (let (($range_0@@23 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@37 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@37))))))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@23 $i_1@@17) (let ((i1@@4 $i_1@@17))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@38 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@38)))) i1@@4)) 1)))
 :qid |DiemConfigbpl.21606:146|
 :skolemid |735|
))) (=> (and (= $t51@0 (|v#$Mutation_152979| $t48@0)) (= $t48@1 ($Mutation_152979 (|l#$Mutation_152979| $t48@0) (|p#$Mutation_152979| $t48@0) |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0|))) (=> (and (and (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|v#$Mutation_152979| $t48@1)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|v#$Mutation_152979| $t48@1))) (and (= $t50  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_152979| $t48@1) $t45))) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_152979| $t48@1) $t45)))))) 0))) (not (= $t49 (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t51@0 $t45)))))) (=> $t50 (= (|v#$Mutation_152979| $t48@1) (seq.update $t51@0 $t45 (seq.unit ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t51@0 $t45)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth $t51@0 $t45)) $t49 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (seq.nth $t51@0 $t45))))))))) (and (and (=> (not $t50) (= (|v#$Mutation_152979| $t48@1) $t51@0)) (= (|v#$Mutation_152979| $t48@1) (seq.update $t51@0 $t45 (seq.unit (seq.nth (|v#$Mutation_152979| $t48@1) $t45))))) (and (let (($range_0@@24 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@39 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@39))))))))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@18) (let ((i1@@5 $i_1@@18))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@40 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@40)))) i1@@5)) 1)))
 :qid |DiemConfigbpl.21638:151|
 :skolemid |736|
))) (= $t47@1 ($Mutation_183131 (|l#$Mutation_183131| $t47@0) (|p#$Mutation_183131| $t47@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@0)) (|v#$Mutation_152979| $t48@1))))))) (and (=> (= (ControlFlow 0 418929) (- 0 558965)) (let (($range_0@@25 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1))))))
(let (($range_1@@5 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1))))))
(forall (($i_2@@5 Int) ($i_3@@5 Int) ) (!  (=> ($InRange $range_0@@25 $i_2@@5) (=> ($InRange $range_1@@5 $i_3@@5) (let ((i@@56 $i_2@@5))
(let ((j@@15 $i_3@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1)) i@@56)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1)) j@@15))) (= i@@56 j@@15))))))
 :qid |DiemConfigbpl.21651:203|
 :skolemid |737|
))))) (=> (let (($range_0@@26 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1))))))
(let (($range_1@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1))))))
(forall (($i_2@@6 Int) ($i_3@@6 Int) ) (!  (=> ($InRange $range_0@@26 $i_2@@6) (=> ($InRange $range_1@@6 $i_3@@6) (let ((i@@57 $i_2@@6))
(let ((j@@16 $i_3@@6))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1)) i@@57)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_183131| $t47@1)) j@@16))) (= i@@57 j@@16))))))
 :qid |DiemConfigbpl.21651:203|
 :skolemid |737|
)))) (=> (and (= $t10@0 (|v#$Mutation_183131| $t47@1)) (= $t50 $t50)) (and (=> (= (ControlFlow 0 418929) 419722) anon53_Then_correct) (=> (= (ControlFlow 0 418929) 418935) anon53_Else_correct))))))))))))))))
(let ((anon52_Then_correct  (=> $t46 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| $t41)) 0) (= 7 $t28)) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421574) 418179))) L12_correct))))
(let ((anon51_Then_correct  (=> (and $t42 (= $t46 (= (seq.len (|$vec#$1_Option_Option'u64'| $t41)) 0))) (and (=> (= (ControlFlow 0 418516) 421574) anon52_Then_correct) (=> (= (ControlFlow 0 418516) 418929) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (and (not $t42) (= $t44 $t44)) (and (= $t28@0 $t44) (= (ControlFlow 0 418504) 418179))) L12_correct)))
(let ((anon50_Else_correct  (=> (not $t37) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t10) (let (($range_0@@27 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t10)))))
(let (($range_1@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t10)))))
(forall (($i_2@@7 Int) ($i_3@@7 Int) ) (!  (=> ($InRange $range_0@@27 $i_2@@7) (=> ($InRange $range_1@@7 $i_3@@7) (let ((i@@58 $i_2@@7))
(let ((j@@17 $i_3@@7))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t10) i@@58)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t10) j@@17))) (= i@@58 j@@17))))))
 :qid |DiemConfigbpl.21459:225|
 :skolemid |732|
))))) (=> (and (and (and (and (= $t10 (let ((addr@@41 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@41)))) (= $t10 $t10)) (and (= $t39@0 (|$validators#$1_DiemSystem_DiemSystem| $t10)) (= $t40 (seq.len $t39@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t41) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t41)) 1)) (=> (let (($range_0@@28 ($Range 0 $t40)))
(forall (($i_1@@19 Int) ) (!  (=> ($InRange $range_0@@28 $i_1@@19) (let ((i@@59 $i_1@@19))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t39@0 i@@59)) _$t1))))
 :qid |DiemConfigbpl.21489:55|
 :skolemid |733|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t41)) 0)))) (and (and (and (=> (let (($range_0@@29 ($Range 0 $t40)))
(exists (($i_1@@20 Int) ) (!  (and ($InRange $range_0@@29 $i_1@@20) (let ((i@@60 $i_1@@20))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t39@0 i@@60)) _$t1)))
 :qid |DiemConfigbpl.21493:55|
 :skolemid |734|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t41)) 0)) (let ((at (seq.nth (|$vec#$1_Option_Option'u64'| $t41) 0)))
(= at ($choice_0 $t39@0 _$t1))))) (= $t41 $t41)) (and (= $t42  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t41)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t44) (= $t44 7)) (and (= $t44 $t44) (= $t42 $t42))))) (and (=> (= (ControlFlow 0 418488) 418516) anon51_Then_correct) (=> (= (ControlFlow 0 418488) 418504) anon51_Else_correct)))))))
(let ((anon50_Then_correct  (=> $t37 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t28)) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421602) 418179))) L12_correct))))
(let ((anon49_Then_correct  (=> (and $t34@0 (= $t37  (not (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 418195) 421602) anon50_Then_correct) (=> (= (ControlFlow 0 418195) 418488) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (and (not $t34@0) (= $t36 $t36)) (and (= $t28@0 $t36) (= (ControlFlow 0 417683) 418179))) L12_correct)))
(let ((anon48_Else_correct  (=> (not $t32) (=> (and (|$IsValid'address'| $t31) (= $t31 (let ((t_ref@@6 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))
(seq.nth (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| t_ref@@6)) 0)))) (=> (and (and (and (|$IsValid'address'| $t33) (= $t33 (|$addr#$signer| _$t0))) (and (= $t34@0 (= $t31 $t33)) (|$IsValid'u64'| 4))) (and (and (|$IsValid'u64'| $t36) (= $t36 7)) (and (= $t36 $t36) (= $t34@0 $t34@0)))) (and (=> (= (ControlFlow 0 417667) 418195) anon49_Then_correct) (=> (= (ControlFlow 0 417667) 417683) anon49_Else_correct)))))))
(let ((anon48_Then_correct  (=> $t32 (=> (and (and (or (and (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (= 7 $t28)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)) (= 5 $t28))) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421648) 418179))) L12_correct))))
(let ((anon47_Else_correct  (=> (and (not $t30) (= $t32  (or (not (not (= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))))) (and (=> (= (ControlFlow 0 417597) 421648) anon48_Then_correct) (=> (= (ControlFlow 0 417597) 417667) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> $t30 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t29)) (= 5 $t28)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t29)) 4)) (= 3 $t28))) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421700) 418179))) L12_correct))))
(let ((anon46_Else_correct  (=> (not $t27) (=> (and (= $t29 (|$addr#$signer| _$t0)) (= $t30  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) $t29)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $t29)) 4))))) (and (=> (= (ControlFlow 0 417567) 421700) anon47_Then_correct) (=> (= (ControlFlow 0 417567) 417597) anon47_Else_correct))))))
(let ((anon46_Then_correct  (=> $t27 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t28)) (= $t28 $t28)) (and (= $t28@0 $t28) (= (ControlFlow 0 421726) 418179))) L12_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@42)) 0)) (= addr@@42 173345816)))
 :qid |DiemConfigbpl.20956:20|
 :skolemid |693|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (and (and (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@43)) 1)) (= addr@@43 186537453)))
 :qid |DiemConfigbpl.20964:20|
 :skolemid |694|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) 186537453)) 1)))) (and (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@44)) 2))))))
 :qid |DiemConfigbpl.20972:20|
 :skolemid |695|
)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@45)) 2))))))
 :qid |DiemConfigbpl.20976:20|
 :skolemid |696|
)))) (=> (and (and (and (and (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@46)) 2))))))
 :qid |DiemConfigbpl.20980:20|
 :skolemid |697|
)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@47)) 2))))))
 :qid |DiemConfigbpl.20984:20|
 :skolemid |698|
))) (and (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@48)) 2)))))
 :qid |DiemConfigbpl.20988:20|
 :skolemid |699|
)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@49)) 2)))))
 :qid |DiemConfigbpl.20992:20|
 :skolemid |700|
)))) (and (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@50)) 2)))))
 :qid |DiemConfigbpl.20996:20|
 :skolemid |701|
)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_176842| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@51) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@51)) 4))))
 :qid |DiemConfigbpl.21000:20|
 :skolemid |702|
))) (and (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@52) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@52)) 3))))
 :qid |DiemConfigbpl.21004:20|
 :skolemid |703|
)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@53) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@53)) 3))))
 :qid |DiemConfigbpl.21008:20|
 :skolemid |704|
))))) (and (and (and (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@54) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@54)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@54)) 3))))
 :qid |DiemConfigbpl.21012:20|
 :skolemid |705|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173017| $1_SlidingNonce_SlidingNonce_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173017| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |DiemConfigbpl.21028:20|
 :skolemid |706|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@55) (= addr@@55 173345816)))
 :qid |DiemConfigbpl.21036:20|
 :skolemid |707|
)) (let (($range_0@@30 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@56 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@56))))))))
(forall (($i_1@@21 Int) ) (!  (=> ($InRange $range_0@@30 $i_1@@21) (let ((i1@@6 $i_1@@21))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@57 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@57)))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@57 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@57)))) i1@@6)))) 3))))
 :qid |DiemConfigbpl.21040:151|
 :skolemid |708|
))))))) (=> (and (and (and (and (and (and (let (($range_0@@31 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@58 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@58))))))))
(forall (($i_1@@22 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@22) (let ((i1@@7 $i_1@@22))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@59 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@59)))) i1@@7)) 1)))
 :qid |DiemConfigbpl.21045:151|
 :skolemid |709|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173340| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173424| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173508| |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory|) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173579| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173663| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173747| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173818| |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory|) 186537453))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173915| $1_DualAttestation_Limit_$memory) 173345816)) (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_194338| $1_DualAttestation_Credential_$memory) addr1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr1)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr1)) 2)))))
 :qid |DiemConfigbpl.21082:20|
 :skolemid |710|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_173999| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174083| $1_ChainId_ChainId_$memory) 173345816)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174154| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 173345816)))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_174225| $1_AccountFreezing_FreezingBit_$memory) 186537453))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174154| $1_AccountFreezing_FreezeEventsHolder_$memory) 173345816)))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174397| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174468| $1_DiemAccount_DiemWriteSetManager_$memory) 173345816))) (and (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194451| $1_DiemAccount_DiemAccount_$memory) addr@@60) (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@60)))
 :qid |DiemConfigbpl.21118:20|
 :skolemid |711|
)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194551| $1_VASPDomain_VASPDomainManager_$memory) addr@@61)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@61)) 1))))
 :qid |DiemConfigbpl.21122:20|
 :skolemid |712|
)))) (and (and (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194636| $1_VASPDomain_VASPDomains_$memory) addr@@62)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@62)) 5))))
 :qid |DiemConfigbpl.21126:20|
 :skolemid |713|
)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_194723| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@63) (|Select__T@[Int]Bool_| (|domain#$Memory_194783| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@63)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@63)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@63)) 2)))))
 :qid |DiemConfigbpl.21130:20|
 :skolemid |714|
))) (and (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194868| $1_DesignatedDealer_Dealer_$memory) addr@@64)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@64)) 2))))
 :qid |DiemConfigbpl.21134:20|
 :skolemid |715|
)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (= (|Select__T@[Int]Bool_| (|domain#$Memory_194338| $1_DualAttestation_Credential_$memory) addr@@65)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@65)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@65)) 5)))))
 :qid |DiemConfigbpl.21138:20|
 :skolemid |716|
))))) (and (and (and (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (= (|Select__T@[Int]Bool_| (|domain#$Memory_173017| $1_SlidingNonce_SlidingNonce_$memory) addr@@66)  (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@66)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@66)) 1)))))
 :qid |DiemConfigbpl.21142:20|
 :skolemid |717|
)) (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (= (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@67)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@67)) 3))))
 :qid |DiemConfigbpl.21146:20|
 :skolemid |718|
))) (and (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (= (|Select__T@[Int]Bool_| (|domain#$Memory_176842| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@68)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@68)) 4))))
 :qid |DiemConfigbpl.21150:20|
 :skolemid |719|
)) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (= (|Select__T@[Int]Bool_| (|domain#$Memory_195123| $1_VASP_ParentVASP_$memory) addr@@69)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@69)) 5))))
 :qid |DiemConfigbpl.21154:20|
 :skolemid |720|
)))) (and (and (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (= (|Select__T@[Int]Bool_| (|domain#$Memory_195223| $1_VASP_ChildVASP_$memory) addr@@70)  (and (|Select__T@[Int]Bool_| (|domain#$Memory_172830| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) addr@@70)) 6))))
 :qid |DiemConfigbpl.21158:20|
 :skolemid |721|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174539| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_174623| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_172704| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) 173345816))))))) (and (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (|$IsValid'address'| _$t1)) (and (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemConfigbpl.21179:20|
 :skolemid |722|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemConfigbpl.21183:20|
 :skolemid |723|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_172830| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@1) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@1))) 1))))
 :qid |DiemConfigbpl.21187:20|
 :skolemid |724|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@2))
 :qid |DiemConfigbpl.21191:20|
 :skolemid |725|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) $a_0@@2))
)))) (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@3))
 :qid |DiemConfigbpl.21195:20|
 :skolemid |726|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_178909| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@4)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@4) (let (($range_1@@8 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@4))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@4))))))
(forall (($i_3@@8 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1@@8 $i_3@@8) (=> ($InRange $range_2 $i_4) (let ((i@@61 $i_3@@8))
(let ((j@@18 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@4)) i@@61)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@4)) j@@18))) (= i@@61 j@@18))))))
 :qid |DiemConfigbpl.21200:367|
 :skolemid |727|
))))))
 :qid |DiemConfigbpl.21199:20|
 :skolemid |728|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@5)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@5))
 :qid |DiemConfigbpl.21205:20|
 :skolemid |729|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_173269| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@5))
)) (= $t15  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (let (($range_0@@32 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@71 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@71))))))
(exists (($i_1@@23 Int) ) (!  (and (and (>= $i_1@@23 0) (< $i_1@@23 (seq.len $range_0@@32))) (let ((v_info (seq.nth $range_0@@32 $i_1@@23)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| v_info) _$t1) (not (= (|$config#$1_DiemSystem_ValidatorInfo| v_info) (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) 0))))))
 :qid |DiemConfigbpl.21210:223|
 :skolemid |730|
))))))))) (and (and (and (and (= $t16 ($choice_0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@72 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@72)))) _$t1)) (= $t17 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@73 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@73)))) $t16)))) (and (= $t18 (|$addr#$signer| _$t0)) (= $t19 (|$addr#$signer| _$t0)))) (and (and (= $t20 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@74 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@74))))) (= $t21 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t22 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t23  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1)))) 0))) (let (($range_0@@33 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@75 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_173196| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@75))))))
(exists (($i_1@@24 Int) ) (!  (and (and (>= $i_1@@24 0) (< $i_1@@24 (seq.len $range_0@@33))) (let ((v_info@@0 (seq.nth $range_0@@33 $i_1@@24)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| v_info@@0) _$t1) (not (= (|$config#$1_DiemSystem_ValidatorInfo| v_info@@0) (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_177901| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1))) 0))))))
 :qid |DiemConfigbpl.21243:223|
 :skolemid |731|
)))))))) (and (and (and (= $t24 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_173110| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t25 (|$events#$1_DiemConfig_Configuration| $t24))) (and (= $t26 (|$addr#$signer| _$t0)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t27  (not (|Select__T@[Int]Bool_| (|domain#$Memory_172108| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 417521) 421726) anon46_Then_correct) (=> (= (ControlFlow 0 417521) 417567) anon46_Else_correct)))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_144488| stream@@4) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream@@4) v@@42) 0)
 :qid |DiemConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigbpl.2552:13|
 :skolemid |69|
))) (= (ControlFlow 0 415881) 417521)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_153725| $t14)) 0) (= (seq.len (|p#$Mutation_183131| $t47)) 0)) (and (= (seq.len (|p#$Mutation_152979| $t48)) 0) (= (seq.len (|p#$Mutation_183131| $t52)) 0))) (and (and (= (seq.len (|p#$Mutation_152979| $t53)) 0) (= (seq.len (|p#$Mutation_153725| $t54)) 0)) (and (= (seq.len (|p#$Mutation_11233| $t72)) 0) (= (ControlFlow 0 415891) 415881)))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 556076) 415891) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
(reset)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_165303 0)) ((($Memory_165303 (|domain#$Memory_165303| |T@[Int]Bool|) (|contents#$Memory_165303| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_174539 0)) ((($Memory_174539 (|domain#$Memory_174539| |T@[Int]Bool|) (|contents#$Memory_174539| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_174468 0)) ((($Memory_174468 (|domain#$Memory_174468| |T@[Int]Bool|) (|contents#$Memory_174468| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_174225 0)) ((($Memory_174225 (|domain#$Memory_174225| |T@[Int]Bool|) (|contents#$Memory_174225| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_174154 0)) ((($Memory_174154 (|domain#$Memory_174154| |T@[Int]Bool|) (|contents#$Memory_174154| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_174083 0)) ((($Memory_174083 (|domain#$Memory_174083| |T@[Int]Bool|) (|contents#$Memory_174083| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_194868 0)) ((($Memory_194868 (|domain#$Memory_194868| |T@[Int]Bool|) (|contents#$Memory_194868| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_173915 0)) ((($Memory_173915 (|domain#$Memory_173915| |T@[Int]Bool|) (|contents#$Memory_173915| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_194338 0)) ((($Memory_194338 (|domain#$Memory_194338| |T@[Int]Bool|) (|contents#$Memory_194338| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_195123 0)) ((($Memory_195123 (|domain#$Memory_195123| |T@[Int]Bool|) (|contents#$Memory_195123| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_195223 0)) ((($Memory_195223 (|domain#$Memory_195223| |T@[Int]Bool|) (|contents#$Memory_195223| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_194551 0)) ((($Memory_194551 (|domain#$Memory_194551| |T@[Int]Bool|) (|contents#$Memory_194551| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_194636 0)) ((($Memory_194636 (|domain#$Memory_194636| |T@[Int]Bool|) (|contents#$Memory_194636| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_290762 0)) ((($Memory_290762 (|domain#$Memory_290762| |T@[Int]Bool|) (|contents#$Memory_290762| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_290475 0)) ((($Memory_290475 (|domain#$Memory_290475| |T@[Int]Bool|) (|contents#$Memory_290475| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173747 0)) ((($Memory_173747 (|domain#$Memory_173747| |T@[Int]Bool|) (|contents#$Memory_173747| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173508 0)) ((($Memory_173508 (|domain#$Memory_173508| |T@[Int]Bool|) (|contents#$Memory_173508| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_174397 0)) ((($Memory_174397 (|domain#$Memory_174397| |T@[Int]Bool|) (|contents#$Memory_174397| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_279627 0)) ((($Memory_279627 (|domain#$Memory_279627| |T@[Int]Bool|) (|contents#$Memory_279627| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_279563 0)) ((($Memory_279563 (|domain#$Memory_279563| |T@[Int]Bool|) (|contents#$Memory_279563| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_279940 0)) ((($Memory_279940 (|domain#$Memory_279940| |T@[Int]Bool|) (|contents#$Memory_279940| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_279853 0)) ((($Memory_279853 (|domain#$Memory_279853| |T@[Int]Bool|) (|contents#$Memory_279853| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_194783 0)) ((($Memory_194783 (|domain#$Memory_194783| |T@[Int]Bool|) (|contents#$Memory_194783| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_283436 0)) ((($Memory_283436 (|domain#$Memory_283436| |T@[Int]Bool|) (|contents#$Memory_283436| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_173579 0)) ((($Memory_173579 (|domain#$Memory_173579| |T@[Int]Bool|) (|contents#$Memory_173579| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_194723 0)) ((($Memory_194723 (|domain#$Memory_194723| |T@[Int]Bool|) (|contents#$Memory_194723| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_283345 0)) ((($Memory_283345 (|domain#$Memory_283345| |T@[Int]Bool|) (|contents#$Memory_283345| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173818 0)) ((($Memory_173818 (|domain#$Memory_173818| |T@[Int]Bool|) (|contents#$Memory_173818| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173663 0)) ((($Memory_173663 (|domain#$Memory_173663| |T@[Int]Bool|) (|contents#$Memory_173663| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173424 0)) ((($Memory_173424 (|domain#$Memory_173424| |T@[Int]Bool|) (|contents#$Memory_173424| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'#0'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'#0'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'| 0)
(declare-datatypes ((T@$Memory_180330 0)) ((($Memory_180330 (|domain#$Memory_180330| |T@[Int]Bool|) (|contents#$Memory_180330| |T@[Int]$1_DiemConfig_ModifyConfigCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_180243 0)) ((($Memory_180243 (|domain#$Memory_180243| |T@[Int]Bool|) (|contents#$Memory_180243| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_180156 0)) ((($Memory_180156 (|domain#$Memory_180156| |T@[Int]Bool|) (|contents#$Memory_180156| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_180069 0)) ((($Memory_180069 (|domain#$Memory_180069| |T@[Int]Bool|) (|contents#$Memory_180069| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_179982 0)) ((($Memory_179982 (|domain#$Memory_179982| |T@[Int]Bool|) (|contents#$Memory_179982| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_179895 0)) ((($Memory_179895 (|domain#$Memory_179895| |T@[Int]Bool|) (|contents#$Memory_179895| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_179808 0)) ((($Memory_179808 (|domain#$Memory_179808| |T@[Int]Bool|) (|contents#$Memory_179808| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_173269 0)) ((($Memory_173269 (|domain#$Memory_173269| |T@[Int]Bool|) (|contents#$Memory_173269| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_178909 0)) ((($Memory_178909 (|domain#$Memory_178909| |T@[Int]Bool|) (|contents#$Memory_178909| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_173110 0)) ((($Memory_173110 (|domain#$Memory_173110| |T@[Int]Bool|) (|contents#$Memory_173110| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'#0'| 0)) (((|$1_DiemConfig_DiemConfig'#0'| (|$payload#$1_DiemConfig_DiemConfig'#0'| |T@#0|) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'#0'| 0)
(declare-datatypes ((T@$Memory_178828 0)) ((($Memory_178828 (|domain#$Memory_178828| |T@[Int]Bool|) (|contents#$Memory_178828| |T@[Int]$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_172704 0)) ((($Memory_172704 (|domain#$Memory_172704| |T@[Int]Bool|) (|contents#$Memory_172704| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_174623 0)) ((($Memory_174623 (|domain#$Memory_174623| |T@[Int]Bool|) (|contents#$Memory_174623| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemConsensusConfig_DiemConsensusConfig 0)) ((($1_DiemConsensusConfig_DiemConsensusConfig (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| 0)
(declare-datatypes ((T@$Memory_178695 0)) ((($Memory_178695 (|domain#$Memory_178695| |T@[Int]Bool|) (|contents#$Memory_178695| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_173999 0)) ((($Memory_173999 (|domain#$Memory_173999| |T@[Int]Bool|) (|contents#$Memory_173999| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_173340 0)) ((($Memory_173340 (|domain#$Memory_173340| |T@[Int]Bool|) (|contents#$Memory_173340| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_173017 0)) ((($Memory_173017 (|domain#$Memory_173017| |T@[Int]Bool|) (|contents#$Memory_173017| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_194451 0)) ((($Memory_194451 (|domain#$Memory_194451| |T@[Int]Bool|) (|contents#$Memory_194451| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_173196 0)) ((($Memory_173196 (|domain#$Memory_173196| |T@[Int]Bool|) (|contents#$Memory_173196| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_177901 0)) ((($Memory_177901 (|domain#$Memory_177901| |T@[Int]Bool|) (|contents#$Memory_177901| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_176842 0)) ((($Memory_176842 (|domain#$Memory_176842| |T@[Int]Bool|) (|contents#$Memory_176842| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_172830 0)) ((($Memory_172830 (|domain#$Memory_172830| |T@[Int]Bool|) (|contents#$Memory_172830| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_172108 0)) ((($Memory_172108 (|domain#$Memory_172108| |T@[Int]Bool|) (|contents#$Memory_172108| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_144488 0)) (((Multiset_144488 (|v#Multiset_144488| |T@[$EventRep]Int|) (|l#Multiset_144488| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_144488| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_144488|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_329313 0)) ((($Mutation_329313 (|l#$Mutation_329313| T@$Location) (|p#$Mutation_329313| (Seq Int)) (|v#$Mutation_329313| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((T@$Mutation_329267 0)) ((($Mutation_329267 (|l#$Mutation_329267| T@$Location) (|p#$Mutation_329267| (Seq Int)) (|v#$Mutation_329267| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-datatypes ((T@$Mutation_312027 0)) ((($Mutation_312027 (|l#$Mutation_312027| T@$Location) (|p#$Mutation_312027| (Seq Int)) (|v#$Mutation_312027| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_311983 0)) ((($Mutation_311983 (|l#$Mutation_311983| T@$Location) (|p#$Mutation_311983| (Seq Int)) (|v#$Mutation_311983| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_301352 0)) ((($Mutation_301352 (|l#$Mutation_301352| T@$Location) (|p#$Mutation_301352| (Seq Int)) (|v#$Mutation_301352| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-datatypes ((T@$Mutation_88061 0)) ((($Mutation_88061 (|l#$Mutation_88061| T@$Location) (|p#$Mutation_88061| (Seq Int)) (|v#$Mutation_88061| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_288749 0)) ((($Mutation_288749 (|l#$Mutation_288749| T@$Location) (|p#$Mutation_288749| (Seq Int)) (|v#$Mutation_288749| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_275645 0)) ((($Mutation_275645 (|l#$Mutation_275645| T@$Location) (|p#$Mutation_275645| (Seq Int)) (|v#$Mutation_275645| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_196002 0)) ((($Mutation_196002 (|l#$Mutation_196002| T@$Location) (|p#$Mutation_196002| (Seq Int)) (|v#$Mutation_196002| T@$1_DiemConfig_Configuration) ) ) ))
(declare-datatypes ((T@$Mutation_191081 0)) ((($Mutation_191081 (|l#$Mutation_191081| T@$Location) (|p#$Mutation_191081| (Seq Int)) (|v#$Mutation_191081| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-datatypes ((T@$Mutation_191036 0)) ((($Mutation_191036 (|l#$Mutation_191036| T@$Location) (|p#$Mutation_191036| (Seq Int)) (|v#$Mutation_191036| |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$Mutation_188431 0)) ((($Mutation_188431 (|l#$Mutation_188431| T@$Location) (|p#$Mutation_188431| (Seq Int)) (|v#$Mutation_188431| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-datatypes ((T@$Mutation_188386 0)) ((($Mutation_188386 (|l#$Mutation_188386| T@$Location) (|p#$Mutation_188386| (Seq Int)) (|v#$Mutation_188386| |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_185781 0)) ((($Mutation_185781 (|l#$Mutation_185781| T@$Location) (|p#$Mutation_185781| (Seq Int)) (|v#$Mutation_185781| T@$1_DiemConsensusConfig_DiemConsensusConfig) ) ) ))
(declare-datatypes ((T@$Mutation_185736 0)) ((($Mutation_185736 (|l#$Mutation_185736| T@$Location) (|p#$Mutation_185736| (Seq Int)) (|v#$Mutation_185736| |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) ) ))
(declare-datatypes ((T@$Mutation_183131 0)) ((($Mutation_183131 (|l#$Mutation_183131| T@$Location) (|p#$Mutation_183131| (Seq Int)) (|v#$Mutation_183131| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_183086 0)) ((($Mutation_183086 (|l#$Mutation_183086| T@$Location) (|p#$Mutation_183086| (Seq Int)) (|v#$Mutation_183086| |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$Mutation_180409 0)) ((($Mutation_180409 (|l#$Mutation_180409| T@$Location) (|p#$Mutation_180409| (Seq Int)) (|v#$Mutation_180409| |T@$1_DiemConfig_DiemConfig'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_172647 0)) ((($Mutation_172647 (|l#$Mutation_172647| T@$Location) (|p#$Mutation_172647| (Seq Int)) (|v#$Mutation_172647| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_165934 0)) ((($Mutation_165934 (|l#$Mutation_165934| T@$Location) (|p#$Mutation_165934| (Seq Int)) (|v#$Mutation_165934| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_11233 0)) ((($Mutation_11233 (|l#$Mutation_11233| T@$Location) (|p#$Mutation_11233| (Seq Int)) (|v#$Mutation_11233| Int) ) ) ))
(declare-datatypes ((T@$Mutation_160175 0)) ((($Mutation_160175 (|l#$Mutation_160175| T@$Location) (|p#$Mutation_160175| (Seq Int)) (|v#$Mutation_160175| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_159429 0)) ((($Mutation_159429 (|l#$Mutation_159429| T@$Location) (|p#$Mutation_159429| (Seq Int)) (|v#$Mutation_159429| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_158025 0)) ((($Mutation_158025 (|l#$Mutation_158025| T@$Location) (|p#$Mutation_158025| (Seq Int)) (|v#$Mutation_158025| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_157279 0)) ((($Mutation_157279 (|l#$Mutation_157279| T@$Location) (|p#$Mutation_157279| (Seq Int)) (|v#$Mutation_157279| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_155875 0)) ((($Mutation_155875 (|l#$Mutation_155875| T@$Location) (|p#$Mutation_155875| (Seq Int)) (|v#$Mutation_155875| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_155129 0)) ((($Mutation_155129 (|l#$Mutation_155129| T@$Location) (|p#$Mutation_155129| (Seq Int)) (|v#$Mutation_155129| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_153725 0)) ((($Mutation_153725 (|l#$Mutation_153725| T@$Location) (|p#$Mutation_153725| (Seq Int)) (|v#$Mutation_153725| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_152979 0)) ((($Mutation_152979 (|l#$Mutation_152979| T@$Location) (|p#$Mutation_152979| (Seq Int)) (|v#$Mutation_152979| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_151575 0)) ((($Mutation_151575 (|l#$Mutation_151575| T@$Location) (|p#$Mutation_151575| (Seq Int)) (|v#$Mutation_151575| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_150829 0)) ((($Mutation_150829 (|l#$Mutation_150829| T@$Location) (|p#$Mutation_150829| (Seq Int)) (|v#$Mutation_150829| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_149425 0)) ((($Mutation_149425 (|l#$Mutation_149425| T@$Location) (|p#$Mutation_149425| (Seq Int)) (|v#$Mutation_149425| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_148679 0)) ((($Mutation_148679 (|l#$Mutation_148679| T@$Location) (|p#$Mutation_148679| (Seq Int)) (|v#$Mutation_148679| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_147237 0)) ((($Mutation_147237 (|l#$Mutation_147237| T@$Location) (|p#$Mutation_147237| (Seq Int)) (|v#$Mutation_147237| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_146491 0)) ((($Mutation_146491 (|l#$Mutation_146491| T@$Location) (|p#$Mutation_146491| (Seq Int)) (|v#$Mutation_146491| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_144488_| (|T@[$1_Event_EventHandle]Multiset_144488| T@$1_Event_EventHandle) T@Multiset_144488)
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
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (T@$1_DiemConsensusConfig_DiemConsensusConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_DiemVMConfig'| (T@$1_DiemVMConfig_DiemVMConfig) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemVersion_DiemVersion'| (T@$1_DiemVersion_DiemVersion) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DiemConfig'#0''| (|T@$1_DiemConfig_DiemConfig'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_Configuration'| (T@$1_DiemConfig_Configuration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_DisableReconfiguration'| (T@$1_DiemConfig_DisableReconfiguration) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| (|T@$1_DiemConfig_ModifyConfigCapability'#0'|) Bool)
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
(declare-fun $choice_0 ((Seq T@$1_DiemSystem_ValidatorInfo) Int) Int)
(declare-fun ReverseVec_11086 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_131332 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_130544 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_130741 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_130938 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_131529 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_131135 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_130347 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_144488| |T@[$1_Event_EventHandle]Multiset_144488|) |T@[$1_Event_EventHandle]Multiset_144488|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemConfigbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemConfigbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemConfigbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemConfigbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemConfigbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemConfigbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemConfigbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemConfigbpl.595:13|
 :skolemid |15|
))))
 :qid |DiemConfigbpl.593:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemConfigbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemConfigbpl.608:17|
 :skolemid |18|
)))))
 :qid |DiemConfigbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemConfigbpl.775:13|
 :skolemid |20|
))))
 :qid |DiemConfigbpl.773:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemConfigbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemConfigbpl.788:17|
 :skolemid |23|
)))))
 :qid |DiemConfigbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemConfigbpl.955:13|
 :skolemid |25|
))))
 :qid |DiemConfigbpl.953:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemConfigbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemConfigbpl.968:17|
 :skolemid |28|
)))))
 :qid |DiemConfigbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemConfigbpl.1135:13|
 :skolemid |30|
))))
 :qid |DiemConfigbpl.1133:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemConfigbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemConfigbpl.1148:17|
 :skolemid |33|
)))))
 :qid |DiemConfigbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@12 i@@12)))
 :qid |DiemConfigbpl.1315:13|
 :skolemid |35|
))))
 :qid |DiemConfigbpl.1313:50|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_VASPDomain_VASPDomain)) (e@@3 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@13 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemConfigbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemConfigbpl.1328:17|
 :skolemid |38|
)))))
 :qid |DiemConfigbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@14 i@@15)))
 :qid |DiemConfigbpl.1495:13|
 :skolemid |40|
))))
 :qid |DiemConfigbpl.1493:51|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@14))
)))
(assert (forall ((v@@15 (Seq T@$1_ValidatorConfig_Config)) (e@@4 T@$1_ValidatorConfig_Config) ) (! (let ((i@@16 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemConfigbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemConfigbpl.1508:17|
 :skolemid |43|
)))))
 :qid |DiemConfigbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'vec'u8''| (seq.nth v@@16 i@@18)))
 :qid |DiemConfigbpl.1675:13|
 :skolemid |45|
))))
 :qid |DiemConfigbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@16))
)))
(assert (forall ((v@@17 (Seq (Seq Int))) (e@@5 (Seq Int)) ) (! (let ((i@@19 (|$IndexOfVec'vec'u8''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemConfigbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemConfigbpl.1688:17|
 :skolemid |48|
)))))
 :qid |DiemConfigbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'address'| (seq.nth v@@18 i@@21)))
 :qid |DiemConfigbpl.1855:13|
 :skolemid |50|
))))
 :qid |DiemConfigbpl.1853:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'address''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'address'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemConfigbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemConfigbpl.1868:17|
 :skolemid |53|
)))))
 :qid |DiemConfigbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'address'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'u64'| (seq.nth v@@20 i@@24)))
 :qid |DiemConfigbpl.2035:13|
 :skolemid |55|
))))
 :qid |DiemConfigbpl.2033:29|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'u64''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'u64'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemConfigbpl.2040:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemConfigbpl.2048:17|
 :skolemid |58|
)))))
 :qid |DiemConfigbpl.2044:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'u64'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemConfigbpl.2215:13|
 :skolemid |60|
))))
 :qid |DiemConfigbpl.2213:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemConfigbpl.2220:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemConfigbpl.2228:17|
 :skolemid |63|
)))))
 :qid |DiemConfigbpl.2224:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemConfigbpl.2401:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemConfigbpl.2417:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemConfigbpl.2488:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemConfigbpl.2491:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_144488| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_144488| stream) v@@24) 0)
 :qid |DiemConfigbpl.134:13|
 :skolemid |2|
))))
 :qid |DiemConfigbpl.2552:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemConfigbpl.2593:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemConfigbpl.2599:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemConfigbpl.2649:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemConfigbpl.2655:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemConfigbpl.2705:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemConfigbpl.2711:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemConfigbpl.2761:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemConfigbpl.2767:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemConfigbpl.2817:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemConfigbpl.2823:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemConfigbpl.2873:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemConfigbpl.2879:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemConfigbpl.2929:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemConfigbpl.2935:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemConfigbpl.2985:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemConfigbpl.2991:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemConfigbpl.3041:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemConfigbpl.3047:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemConfigbpl.3097:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemConfigbpl.3103:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemConfigbpl.3153:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemConfigbpl.3159:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemConfigbpl.3209:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemConfigbpl.3215:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemConfigbpl.3265:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemConfigbpl.3271:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemConfigbpl.3321:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemConfigbpl.3327:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemConfigbpl.3377:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemConfigbpl.3383:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemConfigbpl.3433:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemConfigbpl.3439:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemConfigbpl.3489:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemConfigbpl.3495:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemConfigbpl.3574:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemConfigbpl.4418:36|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemConfigbpl.4437:71|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@2) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@2)))
 :qid |DiemConfigbpl.4556:42|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemConfigbpl.4569:46|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemConfigbpl.4582:64|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemConfigbpl.4595:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemConfigbpl.4608:72|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemConfigbpl.4657:55|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemConfigbpl.4679:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemConfigbpl.4697:49|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemConfigbpl.4802:71|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemConfigbpl.4816:91|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemConfigbpl.4830:113|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13) (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@13)))
 :qid |DiemConfigbpl.4844:89|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemConfigbpl.4858:75|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemConfigbpl.4872:73|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_DiemConfig'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16) true)
 :qid |DiemConfigbpl.4886:49|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'#0''| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@17)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@17)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@17))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@17))))
 :qid |DiemConfigbpl.4906:48|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18) true)
 :qid |DiemConfigbpl.4922:57|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19) true)
 :qid |DiemConfigbpl.4936:83|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20) true)
 :qid |DiemConfigbpl.4950:103|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21) true)
 :qid |DiemConfigbpl.4964:125|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22) true)
 :qid |DiemConfigbpl.4978:101|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemConsensusConfig_DiemConsensusConfig''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23) true)
 :qid |DiemConfigbpl.4992:87|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24) true)
 :qid |DiemConfigbpl.5006:85|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@24))
)))
(assert (forall ((s@@25 |T@$1_DiemConfig_ModifyConfigCapability'#0'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25) true)
 :qid |DiemConfigbpl.5020:61|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'#0''| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@26)))
 :qid |DiemConfigbpl.5034:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@26))
)))
(assert (forall ((s@@27 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@27)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@27))))
 :qid |DiemConfigbpl.17334:45|
 :skolemid |541|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@27))
)))
(assert (forall ((s@@28 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@28)))
 :qid |DiemConfigbpl.17348:51|
 :skolemid |542|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@28))
)))
(assert (forall ((s@@29 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@29)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@29))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@29))))
 :qid |DiemConfigbpl.17371:48|
 :skolemid |543|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@29))
)))
(assert (forall ((s@@30 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@30)))
 :qid |DiemConfigbpl.22319:49|
 :skolemid |751|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@30))
)))
(assert (forall ((s@@31 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@31)))
 :qid |DiemConfigbpl.22337:65|
 :skolemid |752|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@32)))
 :qid |DiemConfigbpl.23903:45|
 :skolemid |792|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@33)))
 :qid |DiemConfigbpl.23916:45|
 :skolemid |793|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34) true)
 :qid |DiemConfigbpl.23929:55|
 :skolemid |794|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35) true)
 :qid |DiemConfigbpl.23943:55|
 :skolemid |795|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@36)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@36)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@36))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@36))))
 :qid |DiemConfigbpl.23963:38|
 :skolemid |796|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@37))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@37))))
 :qid |DiemConfigbpl.23984:44|
 :skolemid |797|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@38))))
 :qid |DiemConfigbpl.24035:53|
 :skolemid |798|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@39))))
 :qid |DiemConfigbpl.24097:53|
 :skolemid |799|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40) true)
 :qid |DiemConfigbpl.24123:55|
 :skolemid |800|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41) true)
 :qid |DiemConfigbpl.24137:55|
 :skolemid |801|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |DiemConfigbpl.24154:38|
 :skolemid |802|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |DiemConfigbpl.24168:48|
 :skolemid |803|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |DiemConfigbpl.24182:48|
 :skolemid |804|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@45)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@45)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@45))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@45))))
 :qid |DiemConfigbpl.24202:41|
 :skolemid |805|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |DiemConfigbpl.24220:57|
 :skolemid |806|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |DiemConfigbpl.26326:68|
 :skolemid |807|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |DiemConfigbpl.26348:66|
 :skolemid |808|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |DiemConfigbpl.26374:66|
 :skolemid |809|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |DiemConfigbpl.26403:56|
 :skolemid |810|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |DiemConfigbpl.26433:56|
 :skolemid |811|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |DiemConfigbpl.26755:31|
 :skolemid |812|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |DiemConfigbpl.27085:31|
 :skolemid |813|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |DiemConfigbpl.27104:35|
 :skolemid |814|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |DiemConfigbpl.27513:45|
 :skolemid |815|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |DiemConfigbpl.27532:50|
 :skolemid |816|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |DiemConfigbpl.27547:52|
 :skolemid |817|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@58) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@58)))
 :qid |DiemConfigbpl.27561:46|
 :skolemid |818|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |DiemConfigbpl.27585:38|
 :skolemid |819|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |DiemConfigbpl.27599:39|
 :skolemid |820|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DiemConfigbpl.27626:65|
 :skolemid |821|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemConfigbpl.27994:60|
 :skolemid |822|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemConfigbpl.28011:66|
 :skolemid |823|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemConfigbpl.28040:50|
 :skolemid |824|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemConfigbpl.28059:45|
 :skolemid |825|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemConfigbpl.28366:87|
 :skolemid |826|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DiemConfigbpl.30266:47|
 :skolemid |927|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DiemConfigbpl.30286:58|
 :skolemid |928|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |DiemConfigbpl.30301:39|
 :skolemid |929|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |DiemConfigbpl.30323:58|
 :skolemid |930|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |DiemConfigbpl.30340:58|
 :skolemid |931|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |DiemConfigbpl.30355:51|
 :skolemid |932|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |DiemConfigbpl.30372:60|
 :skolemid |933|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |DiemConfigbpl.30658:47|
 :skolemid |934|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |DiemConfigbpl.30680:63|
 :skolemid |935|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |DiemConfigbpl.30695:57|
 :skolemid |936|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |DiemConfigbpl.30708:55|
 :skolemid |937|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |DiemConfigbpl.30722:55|
 :skolemid |938|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |DiemConfigbpl.30739:54|
 :skolemid |939|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |DiemConfigbpl.30753:55|
 :skolemid |940|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |DiemConfigbpl.30767:57|
 :skolemid |941|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |DiemConfigbpl.30789:56|
 :skolemid |942|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |DiemConfigbpl.30814:52|
 :skolemid |943|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |DiemConfigbpl.30830:54|
 :skolemid |944|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |DiemConfigbpl.31672:47|
 :skolemid |945|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |DiemConfigbpl.31696:47|
 :skolemid |946|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemConsensusConfig_DiemConsensusConfig) ) (! (= (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@87) (|$IsValid'vec'u8''| (|$config#$1_DiemConsensusConfig_DiemConsensusConfig| s@@87)))
 :qid |DiemConfigbpl.31928:63|
 :skolemid |947|
 :pattern ( (|$IsValid'$1_DiemConsensusConfig_DiemConsensusConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@88)))
 :qid |DiemConfigbpl.33226:49|
 :skolemid |1017|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@89)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@89))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@89))))
 :qid |DiemConfigbpl.33269:49|
 :skolemid |1018|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@90)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@90))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@90))))
 :qid |DiemConfigbpl.33298:48|
 :skolemid |1019|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@91)))
 :qid |DiemConfigbpl.35217:47|
 :skolemid |1090|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@91))
)))
(assert (forall ((validators (Seq T@$1_DiemSystem_ValidatorInfo)) (addr Int) ) (!  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| validators) (|$IsValid'address'| addr)) (=> (exists ((i@@30 Int) ) (!  (and (and (|$IsValid'num'| i@@30) ($InRange ($Range 0 (seq.len validators)) i@@30)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@30)) addr))
 :qid |DiemConfigbpl.38178:13|
 :skolemid |1251|
)) (let ((i@@31 ($choice_0 validators addr)))
 (and (and (and (|$IsValid'num'| i@@31) ($InRange ($Range 0 (seq.len validators)) i@@31)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@31)) addr)) (let (($$c i@@31))
(forall ((i@@32 Int) ) (!  (=> (< i@@32 $$c) (not (and (and (|$IsValid'num'| i@@32) ($InRange ($Range 0 (seq.len validators)) i@@32)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth validators i@@32)) addr))))
 :qid |DiemConfigbpl.38180:32|
 :skolemid |1252|
)))))))
 :qid |DiemConfigbpl.38177:15|
 :skolemid |1253|
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_11086 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@25 (- (- (seq.len v@@25) i@@33) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_11086 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_131332 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@26 (- (- (seq.len v@@26) i@@34) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131332 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_130544 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@27 (- (- (seq.len v@@27) i@@35) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130544 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_130741 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@28 (- (- (seq.len v@@28) i@@36) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130741 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_130938 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@29 (- (- (seq.len v@@29) i@@37) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130938 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_131529 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@30 (- (- (seq.len v@@30) i@@38) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131529 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_131135 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@31 (- (- (seq.len v@@31) i@@39) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_131135 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@#0|)) ) (! (let ((r@@7 (ReverseVec_130347 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@32 (- (- (seq.len v@@32) i@@40) 1))))
 :qid |DiemConfigbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemConfigbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_130347 v@@32))
)))
(assert (forall ((|l#0| Bool) (i@@41 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41) |l#0|)
 :qid |DiemConfigbpl.250:54|
 :skolemid |1254|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@41))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_144488|) (|l#1| |T@[$1_Event_EventHandle]Multiset_144488|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#1| handle@@0))))
(Multiset_144488 (|lambda#3| (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#0@@0| handle@@0)) (|v#Multiset_144488| (|Select__T@[$1_Event_EventHandle]Multiset_144488_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemConfigbpl.2562:13|
 :skolemid |1255|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_144488_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@33 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@33) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@33)))
 :qid |DiemConfigbpl.129:29|
 :skolemid |1256|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@33))
)))
; Undetermined

