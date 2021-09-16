(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :pre-skolem-quant true)
(set-option :no-dt-share-sel true)
(set-option :ee-mode central)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_98584 0)) ((($Memory_98584 (|domain#$Memory_98584| |T@[Int]Bool|) (|contents#$Memory_98584| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_119236 0)) ((($Memory_119236 (|domain#$Memory_119236| |T@[Int]Bool|) (|contents#$Memory_119236| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_119165 0)) ((($Memory_119165 (|domain#$Memory_119165| |T@[Int]Bool|) (|contents#$Memory_119165| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_106066 0)) ((($Memory_106066 (|domain#$Memory_106066| |T@[Int]Bool|) (|contents#$Memory_106066| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_118922 0)) ((($Memory_118922 (|domain#$Memory_118922| |T@[Int]Bool|) (|contents#$Memory_118922| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_118851 0)) ((($Memory_118851 (|domain#$Memory_118851| |T@[Int]Bool|) (|contents#$Memory_118851| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_141740 0)) ((($Memory_141740 (|domain#$Memory_141740| |T@[Int]Bool|) (|contents#$Memory_141740| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_106033 0)) ((($Memory_106033 (|domain#$Memory_106033| |T@[Int]Bool|) (|contents#$Memory_106033| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_106790 0)) ((($Memory_106790 (|domain#$Memory_106790| |T@[Int]Bool|) (|contents#$Memory_106790| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_141995 0)) ((($Memory_141995 (|domain#$Memory_141995| |T@[Int]Bool|) (|contents#$Memory_141995| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_142095 0)) ((($Memory_142095 (|domain#$Memory_142095| |T@[Int]Bool|) (|contents#$Memory_142095| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_141521 0)) ((($Memory_141521 (|domain#$Memory_141521| |T@[Int]Bool|) (|contents#$Memory_141521| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_141606 0)) ((($Memory_141606 (|domain#$Memory_141606| |T@[Int]Bool|) (|contents#$Memory_141606| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'#0'| 0)) (((|$1_AccountLimits_Window'#0'| (|$window_start#$1_AccountLimits_Window'#0'| Int) (|$window_inflow#$1_AccountLimits_Window'#0'| Int) (|$window_outflow#$1_AccountLimits_Window'#0'| Int) (|$tracked_balance#$1_AccountLimits_Window'#0'| Int) (|$limit_address#$1_AccountLimits_Window'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'#0'| 0)
(declare-datatypes ((T@$Memory_116863 0)) ((($Memory_116863 (|domain#$Memory_116863| |T@[Int]Bool|) (|contents#$Memory_116863| |T@[Int]$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_117894 0)) ((($Memory_117894 (|domain#$Memory_117894| |T@[Int]Bool|) (|contents#$Memory_117894| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117706 0)) ((($Memory_117706 (|domain#$Memory_117706| |T@[Int]Bool|) (|contents#$Memory_117706| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'#0'| 0)) (((|$1_AccountLimits_LimitsDefinition'#0'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'#0'| 0)
(declare-datatypes ((T@$Memory_115349 0)) ((($Memory_115349 (|domain#$Memory_115349| |T@[Int]Bool|) (|contents#$Memory_115349| |T@[Int]$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_115275 0)) ((($Memory_115275 (|domain#$Memory_115275| |T@[Int]Bool|) (|contents#$Memory_115275| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_115201 0)) ((($Memory_115201 (|domain#$Memory_115201| |T@[Int]Bool|) (|contents#$Memory_115201| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_119094 0)) ((($Memory_119094 (|domain#$Memory_119094| |T@[Int]Bool|) (|contents#$Memory_119094| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114424 0)) ((($Memory_114424 (|domain#$Memory_114424| |T@[Int]Bool|) (|contents#$Memory_114424| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_111221 0)) ((($Memory_111221 (|domain#$Memory_111221| |T@[Int]Bool|) (|contents#$Memory_111221| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106965 0)) ((($Memory_106965 (|domain#$Memory_106965| |T@[Int]Bool|) (|contents#$Memory_106965| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114688 0)) ((($Memory_114688 (|domain#$Memory_114688| |T@[Int]Bool|) (|contents#$Memory_114688| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_118553 0)) ((($Memory_118553 (|domain#$Memory_118553| |T@[Int]Bool|) (|contents#$Memory_118553| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106905 0)) ((($Memory_106905 (|domain#$Memory_106905| |T@[Int]Bool|) (|contents#$Memory_106905| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114597 0)) ((($Memory_114597 (|domain#$Memory_114597| |T@[Int]Bool|) (|contents#$Memory_114597| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118699 0)) ((($Memory_118699 (|domain#$Memory_118699| |T@[Int]Bool|) (|contents#$Memory_118699| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110995 0)) ((($Memory_110995 (|domain#$Memory_110995| |T@[Int]Bool|) (|contents#$Memory_110995| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_110931 0)) ((($Memory_110931 (|domain#$Memory_110931| |T@[Int]Bool|) (|contents#$Memory_110931| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_110329 0)) ((($Memory_110329 (|domain#$Memory_110329| |T@[Int]Bool|) (|contents#$Memory_110329| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_110594 0)) ((($Memory_110594 (|domain#$Memory_110594| |T@[Int]Bool|) (|contents#$Memory_110594| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_109463 0)) ((($Memory_109463 (|domain#$Memory_109463| |T@[Int]Bool|) (|contents#$Memory_109463| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_109754 0)) ((($Memory_109754 (|domain#$Memory_109754| |T@[Int]Bool|) (|contents#$Memory_109754| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_109690 0)) ((($Memory_109690 (|domain#$Memory_109690| |T@[Int]Bool|) (|contents#$Memory_109690| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_109626 0)) ((($Memory_109626 (|domain#$Memory_109626| |T@[Int]Bool|) (|contents#$Memory_109626| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_109562 0)) ((($Memory_109562 (|domain#$Memory_109562| |T@[Int]Bool|) (|contents#$Memory_109562| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_109349 0)) ((($Memory_109349 (|domain#$Memory_109349| |T@[Int]Bool|) (|contents#$Memory_109349| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_141421 0)) ((($Memory_141421 (|domain#$Memory_141421| |T@[Int]Bool|) (|contents#$Memory_141421| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_109382 0)) ((($Memory_109382 (|domain#$Memory_109382| |T@[Int]Bool|) (|contents#$Memory_109382| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_106000 0)) ((($Memory_106000 (|domain#$Memory_106000| |T@[Int]Bool|) (|contents#$Memory_106000| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_106453 0)) ((($Memory_106453 (|domain#$Memory_106453| |T@[Int]Bool|) (|contents#$Memory_106453| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_105627 0)) ((($Memory_105627 (|domain#$Memory_105627| |T@[Int]Bool|) (|contents#$Memory_105627| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_105402 0)) ((($Memory_105402 (|domain#$Memory_105402| |T@[Int]Bool|) (|contents#$Memory_105402| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_81090 0)) (((Multiset_81090 (|v#Multiset_81090| |T@[$EventRep]Int|) (|l#Multiset_81090| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_81090| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_81090|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_169581 0)) ((($Mutation_169581 (|l#$Mutation_169581| T@$Location) (|p#$Mutation_169581| (Seq Int)) (|v#$Mutation_169581| |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_166419 0)) ((($Mutation_166419 (|l#$Mutation_166419| T@$Location) (|p#$Mutation_166419| (Seq Int)) (|v#$Mutation_166419| |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_163427 0)) ((($Mutation_163427 (|l#$Mutation_163427| T@$Location) (|p#$Mutation_163427| (Seq Int)) (|v#$Mutation_163427| |T@$1_AccountLimits_LimitsDefinition'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_125912 0)) ((($Mutation_125912 (|l#$Mutation_125912| T@$Location) (|p#$Mutation_125912| (Seq Int)) (|v#$Mutation_125912| |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_122739 0)) ((($Mutation_122739 (|l#$Mutation_122739| T@$Location) (|p#$Mutation_122739| (Seq Int)) (|v#$Mutation_122739| |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_119553 0)) ((($Mutation_119553 (|l#$Mutation_119553| T@$Location) (|p#$Mutation_119553| (Seq Int)) (|v#$Mutation_119553| |T@$1_AccountLimits_Window'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_99215 0)) ((($Mutation_99215 (|l#$Mutation_99215| T@$Location) (|p#$Mutation_99215| (Seq Int)) (|v#$Mutation_99215| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_10128 0)) ((($Mutation_10128 (|l#$Mutation_10128| T@$Location) (|p#$Mutation_10128| (Seq Int)) (|v#$Mutation_10128| Int) ) ) ))
(declare-datatypes ((T@$Mutation_94591 0)) ((($Mutation_94591 (|l#$Mutation_94591| T@$Location) (|p#$Mutation_94591| (Seq Int)) (|v#$Mutation_94591| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_93845 0)) ((($Mutation_93845 (|l#$Mutation_93845| T@$Location) (|p#$Mutation_93845| (Seq Int)) (|v#$Mutation_93845| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_92441 0)) ((($Mutation_92441 (|l#$Mutation_92441| T@$Location) (|p#$Mutation_92441| (Seq Int)) (|v#$Mutation_92441| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_91695 0)) ((($Mutation_91695 (|l#$Mutation_91695| T@$Location) (|p#$Mutation_91695| (Seq Int)) (|v#$Mutation_91695| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_90291 0)) ((($Mutation_90291 (|l#$Mutation_90291| T@$Location) (|p#$Mutation_90291| (Seq Int)) (|v#$Mutation_90291| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_89545 0)) ((($Mutation_89545 (|l#$Mutation_89545| T@$Location) (|p#$Mutation_89545| (Seq Int)) (|v#$Mutation_89545| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_88141 0)) ((($Mutation_88141 (|l#$Mutation_88141| T@$Location) (|p#$Mutation_88141| (Seq Int)) (|v#$Mutation_88141| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_87395 0)) ((($Mutation_87395 (|l#$Mutation_87395| T@$Location) (|p#$Mutation_87395| (Seq Int)) (|v#$Mutation_87395| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_85991 0)) ((($Mutation_85991 (|l#$Mutation_85991| T@$Location) (|p#$Mutation_85991| (Seq Int)) (|v#$Mutation_85991| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_85245 0)) ((($Mutation_85245 (|l#$Mutation_85245| T@$Location) (|p#$Mutation_85245| (Seq Int)) (|v#$Mutation_85245| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_83803 0)) ((($Mutation_83803 (|l#$Mutation_83803| T@$Location) (|p#$Mutation_83803| (Seq Int)) (|v#$Mutation_83803| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_83057 0)) ((($Mutation_83057 (|l#$Mutation_83057| T@$Location) (|p#$Mutation_83057| (Seq Int)) (|v#$Mutation_83057| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_81090_| (|T@[$1_Event_EventHandle]Multiset_81090| T@$1_Event_EventHandle) T@Multiset_81090)
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
(declare-fun |$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) Bool)
(declare-fun |$IsValid'$1_DiemConfig_NewEpochEvent'| (T@$1_DiemConfig_NewEpochEvent) Bool)
(declare-fun |$IsValid'$1_DiemSystem_CapabilityHolder'| (T@$1_DiemSystem_CapabilityHolder) Bool)
(declare-fun |$IsValid'$1_FixedPoint32_FixedPoint32'| (T@$1_FixedPoint32_FixedPoint32) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|T@$1_Diem_Diem'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|T@$1_Diem_Diem'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|T@$1_Diem_MintCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| (T@$1_Diem_ToXDXExchangeRateUpdateEvent) Bool)
(declare-fun |$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (T@$1_AccountLimits_AccountLimitMutationCapability) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| (|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| (|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_LimitsDefinition'#0''| (|T@$1_AccountLimits_LimitsDefinition'#0'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'#0''| (|T@$1_AccountLimits_Window'#0'|) Bool)
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
(declare-fun ReverseVec_9981 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_72582 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_71794 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_71991 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_72188 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_72779 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_72385 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_81090| |T@[$1_Event_EventHandle]Multiset_81090|) |T@[$1_Event_EventHandle]Multiset_81090|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountLimitsbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountLimitsbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountLimitsbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountLimitsbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountLimitsbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountLimitsbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountLimitsbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountLimitsbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@4 i@@0)))
 :qid |AccountLimitsbpl.595:13|
 :skolemid |15|
))))
 :qid |AccountLimitsbpl.593:62|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@1 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |AccountLimitsbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |AccountLimitsbpl.608:17|
 :skolemid |18|
)))))
 :qid |AccountLimitsbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@6 i@@3)))
 :qid |AccountLimitsbpl.775:13|
 :skolemid |20|
))))
 :qid |AccountLimitsbpl.773:59|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@0 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |AccountLimitsbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |AccountLimitsbpl.788:17|
 :skolemid |23|
)))))
 :qid |AccountLimitsbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@8 i@@6)))
 :qid |AccountLimitsbpl.955:13|
 :skolemid |25|
))))
 :qid |AccountLimitsbpl.953:53|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@1 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |AccountLimitsbpl.960:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |AccountLimitsbpl.968:17|
 :skolemid |28|
)))))
 :qid |AccountLimitsbpl.964:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@10 i@@9)))
 :qid |AccountLimitsbpl.1135:13|
 :skolemid |30|
))))
 :qid |AccountLimitsbpl.1133:50|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_VASPDomain_VASPDomain)) (e@@2 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |AccountLimitsbpl.1140:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |AccountLimitsbpl.1148:17|
 :skolemid |33|
)))))
 :qid |AccountLimitsbpl.1144:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@12 i@@12)))
 :qid |AccountLimitsbpl.1315:13|
 :skolemid |35|
))))
 :qid |AccountLimitsbpl.1313:51|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_ValidatorConfig_Config)) (e@@3 T@$1_ValidatorConfig_Config) ) (! (let ((i@@13 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountLimitsbpl.1320:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountLimitsbpl.1328:17|
 :skolemid |38|
)))))
 :qid |AccountLimitsbpl.1324:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'vec'u8''| (seq.nth v@@14 i@@15)))
 :qid |AccountLimitsbpl.1495:13|
 :skolemid |40|
))))
 :qid |AccountLimitsbpl.1493:33|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@14))
)))
(assert (forall ((v@@15 (Seq (Seq Int))) (e@@4 (Seq Int)) ) (! (let ((i@@16 (|$IndexOfVec'vec'u8''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountLimitsbpl.1500:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountLimitsbpl.1508:17|
 :skolemid |43|
)))))
 :qid |AccountLimitsbpl.1504:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'address'| (seq.nth v@@16 i@@18)))
 :qid |AccountLimitsbpl.1675:13|
 :skolemid |45|
))))
 :qid |AccountLimitsbpl.1673:33|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'address''| v@@16))
)))
(assert (forall ((v@@17 (Seq Int)) (e@@5 Int) ) (! (let ((i@@19 (|$IndexOfVec'address'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountLimitsbpl.1680:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountLimitsbpl.1688:17|
 :skolemid |48|
)))))
 :qid |AccountLimitsbpl.1684:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'address'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'u8'| (seq.nth v@@18 i@@21)))
 :qid |AccountLimitsbpl.1855:13|
 :skolemid |50|
))))
 :qid |AccountLimitsbpl.1853:28|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'u8''| v@@18))
)))
(assert (forall ((v@@19 (Seq Int)) (e@@6 Int) ) (! (let ((i@@22 (|$IndexOfVec'u8'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountLimitsbpl.1860:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountLimitsbpl.1868:17|
 :skolemid |53|
)))))
 :qid |AccountLimitsbpl.1864:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'u8'| v@@19 e@@6))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountLimitsbpl.2041:15|
 :skolemid |55|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountLimitsbpl.2057:15|
 :skolemid |56|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountLimitsbpl.2128:15|
 :skolemid |57|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountLimitsbpl.2131:15|
 :skolemid |58|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_81090_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_81090| stream) 0) (forall ((v@@20 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81090| stream) v@@20) 0)
 :qid |AccountLimitsbpl.134:13|
 :skolemid |2|
))))
 :qid |AccountLimitsbpl.2192:13|
 :skolemid |59|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountLimitsbpl.2233:80|
 :skolemid |61|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |AccountLimitsbpl.2239:15|
 :skolemid |62|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountLimitsbpl.2289:82|
 :skolemid |63|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |AccountLimitsbpl.2295:15|
 :skolemid |64|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountLimitsbpl.2345:80|
 :skolemid |65|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |AccountLimitsbpl.2351:15|
 :skolemid |66|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountLimitsbpl.2401:79|
 :skolemid |67|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |AccountLimitsbpl.2407:15|
 :skolemid |68|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountLimitsbpl.2457:76|
 :skolemid |69|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |AccountLimitsbpl.2463:15|
 :skolemid |70|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountLimitsbpl.2513:78|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |AccountLimitsbpl.2519:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountLimitsbpl.2569:74|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |AccountLimitsbpl.2575:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountLimitsbpl.2625:69|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |AccountLimitsbpl.2631:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountLimitsbpl.2681:70|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |AccountLimitsbpl.2687:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountLimitsbpl.2737:60|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |AccountLimitsbpl.2743:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountLimitsbpl.2793:66|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |AccountLimitsbpl.2799:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountLimitsbpl.2849:60|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |AccountLimitsbpl.2855:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountLimitsbpl.2905:63|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |AccountLimitsbpl.2911:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountLimitsbpl.2961:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |AccountLimitsbpl.2967:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountLimitsbpl.3017:82|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |AccountLimitsbpl.3023:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountLimitsbpl.3073:88|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |AccountLimitsbpl.3079:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountLimitsbpl.3129:72|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |AccountLimitsbpl.3135:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountLimitsbpl.3214:61|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountLimitsbpl.3312:36|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountLimitsbpl.3710:71|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountLimitsbpl.3734:46|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountLimitsbpl.3747:64|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountLimitsbpl.3760:75|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountLimitsbpl.3773:72|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountLimitsbpl.3802:55|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountLimitsbpl.3824:46|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountLimitsbpl.3842:49|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountLimitsbpl.3892:71|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountLimitsbpl.3906:91|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountLimitsbpl.3920:113|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountLimitsbpl.3934:75|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountLimitsbpl.3948:73|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountLimitsbpl.3968:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15) true)
 :qid |AccountLimitsbpl.3984:83|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@16)))
 :qid |AccountLimitsbpl.3998:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@17)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@17))))
 :qid |AccountLimitsbpl.4019:45|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@17))
)))
(assert (forall ((s@@18 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@18)))
 :qid |AccountLimitsbpl.4033:51|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@18))
)))
(assert (forall ((s@@19 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@19)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@19))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@19))))
 :qid |AccountLimitsbpl.4056:48|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@19))
)))
(assert (forall ((s@@20 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@20)))
 :qid |AccountLimitsbpl.4072:49|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@20))
)))
(assert (forall ((s@@21 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@21)))
 :qid |AccountLimitsbpl.4085:65|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@21))
)))
(assert (forall ((s@@22 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@22)))
 :qid |AccountLimitsbpl.4108:45|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@22))
)))
(assert (forall ((s@@23 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@23)))
 :qid |AccountLimitsbpl.4121:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@23))
)))
(assert (forall ((s@@24 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24) true)
 :qid |AccountLimitsbpl.4134:55|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@24))
)))
(assert (forall ((s@@25 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@25)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@25)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@25))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@25))))
 :qid |AccountLimitsbpl.4154:38|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@25))
)))
(assert (forall ((s@@26 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@26)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@26))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@26))))
 :qid |AccountLimitsbpl.4175:44|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@27))))
 :qid |AccountLimitsbpl.4226:53|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@28))))
 :qid |AccountLimitsbpl.4288:53|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29) true)
 :qid |AccountLimitsbpl.4314:55|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@30)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@30)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@30))))
 :qid |AccountLimitsbpl.4331:38|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@31)))
 :qid |AccountLimitsbpl.4345:48|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@32)))
 :qid |AccountLimitsbpl.4359:48|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@33))))
 :qid |AccountLimitsbpl.4379:41|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@34))))
 :qid |AccountLimitsbpl.4397:57|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35) true)
 :qid |AccountLimitsbpl.4566:68|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@36))))
 :qid |AccountLimitsbpl.4588:66|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@37))))
 :qid |AccountLimitsbpl.4614:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_AccountLimits_LimitsDefinition'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@38)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'#0'| s@@38)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'#0'| s@@38))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'#0'| s@@38))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'#0'| s@@38))))
 :qid |AccountLimitsbpl.4640:58|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@39)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@39))))
 :qid |AccountLimitsbpl.4669:56|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@40)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@40))))
 :qid |AccountLimitsbpl.4699:56|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_AccountLimits_Window'#0'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'#0''| s@@41)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'#0'| s@@41)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'#0'| s@@41))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'#0'| s@@41))))
 :qid |AccountLimitsbpl.4729:48|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@42) true)
 :qid |AccountLimitsbpl.17579:31|
 :skolemid |606|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@42))
)))
(assert (forall ((s@@43 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@43) true)
 :qid |AccountLimitsbpl.17597:31|
 :skolemid |607|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@43))
)))
(assert (forall ((s@@44 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@44)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@44)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@44))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@44))))
 :qid |AccountLimitsbpl.17616:35|
 :skolemid |608|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@44))
)))
(assert (forall ((s@@45 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@45) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@45)))
 :qid |AccountLimitsbpl.17632:45|
 :skolemid |609|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@45))
)))
(assert (forall ((s@@46 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@46)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@46))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@46))))
 :qid |AccountLimitsbpl.17651:50|
 :skolemid |610|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@47) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@47)))
 :qid |AccountLimitsbpl.17666:52|
 :skolemid |611|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@47))
)))
(assert (forall ((s@@48 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@48) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@48)))
 :qid |AccountLimitsbpl.17680:46|
 :skolemid |612|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@48))
)))
(assert (forall ((s@@49 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@49) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@49)))
 :qid |AccountLimitsbpl.17704:38|
 :skolemid |613|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@49))
)))
(assert (forall ((s@@50 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@50) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@50)))
 :qid |AccountLimitsbpl.17718:39|
 :skolemid |614|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@50))
)))
(assert (forall ((s@@51 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@51))))
 :qid |AccountLimitsbpl.17745:65|
 :skolemid |615|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@52)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@52))))
 :qid |AccountLimitsbpl.17778:60|
 :skolemid |616|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@52))
)))
(assert (forall ((s@@53 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@53))))
 :qid |AccountLimitsbpl.17795:66|
 :skolemid |617|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@54)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@54)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@54))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@54))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@54))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@54))))
 :qid |AccountLimitsbpl.17824:50|
 :skolemid |618|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@54))
)))
(assert (forall ((s@@55 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@55) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@55)))
 :qid |AccountLimitsbpl.17843:45|
 :skolemid |619|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@55))
)))
(assert (forall ((s@@56 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@56)) true))
 :qid |AccountLimitsbpl.17860:87|
 :skolemid |620|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@57)))
 :qid |AccountLimitsbpl.17874:47|
 :skolemid |621|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@58)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@58)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@58))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@58))))
 :qid |AccountLimitsbpl.17894:58|
 :skolemid |622|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@59) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@59)))
 :qid |AccountLimitsbpl.17909:39|
 :skolemid |623|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@59))
)))
(assert (forall ((s@@60 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@60)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@60)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@60))))
 :qid |AccountLimitsbpl.17931:58|
 :skolemid |624|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@60))
)))
(assert (forall ((s@@61 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@61)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@61)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@61))))
 :qid |AccountLimitsbpl.17948:58|
 :skolemid |625|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@61))
)))
(assert (forall ((s@@62 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@62) true)
 :qid |AccountLimitsbpl.17963:51|
 :skolemid |626|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@62))
)))
(assert (forall ((s@@63 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@63)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@63)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@63))))
 :qid |AccountLimitsbpl.17980:60|
 :skolemid |627|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@64)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@64))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@64))))
 :qid |AccountLimitsbpl.18014:47|
 :skolemid |628|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@65)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@65))))
 :qid |AccountLimitsbpl.18036:63|
 :skolemid |629|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@66) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@66)))
 :qid |AccountLimitsbpl.18051:57|
 :skolemid |630|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@66))
)))
(assert (forall ((s@@67 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@67) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@67)))
 :qid |AccountLimitsbpl.18064:55|
 :skolemid |631|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@67))
)))
(assert (forall ((s@@68 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@68) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@68)))
 :qid |AccountLimitsbpl.18078:55|
 :skolemid |632|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@69)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@69))))
 :qid |AccountLimitsbpl.18095:54|
 :skolemid |633|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@70)))
 :qid |AccountLimitsbpl.18109:55|
 :skolemid |634|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@71)))
 :qid |AccountLimitsbpl.18123:57|
 :skolemid |635|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@72)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@72))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@72))))
 :qid |AccountLimitsbpl.18145:56|
 :skolemid |636|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@73)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@73))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@73))))
 :qid |AccountLimitsbpl.18170:52|
 :skolemid |637|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@74)))
 :qid |AccountLimitsbpl.18186:54|
 :skolemid |638|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@75)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@75))))
 :qid |AccountLimitsbpl.18207:47|
 :skolemid |639|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@76)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@76))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@76))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@76))))
 :qid |AccountLimitsbpl.18231:47|
 :skolemid |640|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@77) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@77)))
 :qid |AccountLimitsbpl.18247:49|
 :skolemid |641|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@78)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@78)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@78))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@78))))
 :qid |AccountLimitsbpl.18290:49|
 :skolemid |642|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@79)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@79)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@79))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@79))))
 :qid |AccountLimitsbpl.18319:48|
 :skolemid |643|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@80) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@80)))
 :qid |AccountLimitsbpl.18334:47|
 :skolemid |644|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@80))
)))
(assert (forall ((v@@21 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_9981 v@@21)))
 (and (= (seq.len r@@0) (seq.len v@@21)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len r@@0))) (= (seq.nth r@@0 i@@24) (seq.nth v@@21 (- (- (seq.len v@@21) i@@24) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@24))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_9981 v@@21))
)))
(assert (forall ((v@@22 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_72582 v@@22)))
 (and (= (seq.len r@@1) (seq.len v@@22)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 (seq.len r@@1))) (= (seq.nth r@@1 i@@25) (seq.nth v@@22 (- (- (seq.len v@@22) i@@25) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@25))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72582 v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_71794 v@@23)))
 (and (= (seq.len r@@2) (seq.len v@@23)) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 (seq.len r@@2))) (= (seq.nth r@@2 i@@26) (seq.nth v@@23 (- (- (seq.len v@@23) i@@26) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@26))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_71794 v@@23))
)))
(assert (forall ((v@@24 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_71991 v@@24)))
 (and (= (seq.len r@@3) (seq.len v@@24)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len r@@3))) (= (seq.nth r@@3 i@@27) (seq.nth v@@24 (- (- (seq.len v@@24) i@@27) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@27))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_71991 v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_72188 v@@25)))
 (and (= (seq.len r@@4) (seq.len v@@25)) (forall ((i@@28 Int) ) (!  (=> (and (>= i@@28 0) (< i@@28 (seq.len r@@4))) (= (seq.nth r@@4 i@@28) (seq.nth v@@25 (- (- (seq.len v@@25) i@@28) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@28))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72188 v@@25))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_72779 v@@26)))
 (and (= (seq.len r@@5) (seq.len v@@26)) (forall ((i@@29 Int) ) (!  (=> (and (>= i@@29 0) (< i@@29 (seq.len r@@5))) (= (seq.nth r@@5 i@@29) (seq.nth v@@26 (- (- (seq.len v@@26) i@@29) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@29))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72779 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@6 (ReverseVec_72385 v@@27)))
 (and (= (seq.len r@@6) (seq.len v@@27)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@6))) (= (seq.nth r@@6 i@@30) (seq.nth v@@27 (- (- (seq.len v@@27) i@@30) 1))))
 :qid |AccountLimitsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@30))
))))
 :qid |AccountLimitsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_72385 v@@27))
)))
(assert (forall ((|l#0| Bool) (i@@31 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31) |l#0|)
 :qid |AccountLimitsbpl.250:54|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@31))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_81090|) (|l#1| |T@[$1_Event_EventHandle]Multiset_81090|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_81090_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_81090| (|Select__T@[$1_Event_EventHandle]Multiset_81090_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_81090| (|Select__T@[$1_Event_EventHandle]Multiset_81090_| |l#1| handle@@0))))
(Multiset_81090 (|lambda#3| (|v#Multiset_81090| (|Select__T@[$1_Event_EventHandle]Multiset_81090_| |l#0@@0| handle@@0)) (|v#Multiset_81090| (|Select__T@[$1_Event_EventHandle]Multiset_81090_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountLimitsbpl.2202:13|
 :skolemid |646|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_81090_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@28) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@28)))
 :qid |AccountLimitsbpl.129:29|
 :skolemid |647|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@28))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_105627)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_105627)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_106453)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_106000)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $1_DualAttestation_Limit_$memory () T@$Memory_106033)
(declare-fun |Select__T@[Int]$1_DualAttestation_Limit_| (|T@[Int]$1_DualAttestation_Limit| Int) T@$1_DualAttestation_Limit)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_106790)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_106066)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_106905)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_106965)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_105627)
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
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $t4 () Int)
(declare-fun $t5 () Int)
(declare-fun $es () T@$EventStore)
; Valid
; Valid
(declare-fun |$1_AccountLimits_LimitsDefinition'#0'_$memory| () T@$Memory_115349)
(declare-fun $t11@0@@0 () |T@$1_AccountLimits_Window'#0'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'#0'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'#0'| Int) |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_105402)
(declare-fun _$t0@@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t1@4 () T@$Mutation_119553)
(declare-fun inline$$And$1$dst@1 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@3| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t1@3 () T@$Mutation_119553)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun inline$$Le$3$dst@1 () Bool)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $t50@0 () T@$Mutation_10128)
(declare-fun $t1@1 () T@$Mutation_119553)
(declare-fun $t50@1 () T@$Mutation_10128)
(declare-fun inline$$AddU64$3$dst@2 () Int)
(declare-fun $t1@2 () T@$Mutation_119553)
(declare-fun inline$$And$0$dst@1 () Bool)
(declare-fun $t1@0 () T@$Mutation_119553)
(declare-fun $t19 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@1| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun _$t1@@0 () T@$Mutation_119553)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$AddU64$3$dst@0 () Int)
(declare-fun $t48@0 () Int)
(declare-fun inline$$AddU64$3$dst@1 () Int)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $t47@0 () T@$Mutation_10128)
(declare-fun $t47@1 () T@$Mutation_10128)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun $t45@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun $t42@0 () Int)
(declare-fun $t18@1 () |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun $t40@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun inline$$Le$2$dst@1 () Bool)
(declare-fun $t39 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t32@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t30@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t29 () Int)
(declare-fun $t24@0 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t23 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@2| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t22@0 () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t16 () Int)
(declare-fun $t18 () |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun $t17@0 () Int)
(declare-fun $t18@0 () |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t13@0 () Bool)
(declare-fun $t15 () Int)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_109349)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_109463)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_109382)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_110594)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_109562)
(declare-fun |$1_AccountLimits_Window'#0'_$memory| () T@$Memory_116863)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'#0'_| (|T@[Int]$1_AccountLimits_Window'#0'| Int) |T@$1_AccountLimits_Window'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_110931)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_$memory| () T@$Memory_115201)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_118553)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_110995)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_115275)
(declare-fun |$1_TransactionFee_TransactionFee'$1_XUS_XUS'_$memory| () T@$Memory_118699)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_109626)
(declare-fun $1_ChainId_ChainId_$memory () T@$Memory_118851)
(declare-fun $1_AccountFreezing_FreezeEventsHolder_$memory () T@$Memory_118922)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_119094)
(declare-fun $1_DiemAccount_DiemWriteSetManager_$memory () T@$Memory_119165)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_119236)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_109690)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_109754)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@0| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t12@0 () Int)
(declare-fun $t47 () T@$Mutation_10128)
(declare-fun $t50 () T@$Mutation_10128)
; Valid
(declare-fun $t11@0@@1 () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun _$t0@@1 () Int)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t1@4@@0 () T@$Mutation_122739)
(declare-fun inline$$And$1$dst@1@@0 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@3| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t1@3@@0 () T@$Mutation_122739)
(declare-fun inline$$Le$1$dst@1@@0 () Bool)
(declare-fun inline$$Le$3$dst@1@@0 () Bool)
(declare-fun $abort_flag@6@@0 () Bool)
(declare-fun $t50@0@@0 () T@$Mutation_10128)
(declare-fun $t1@1@@0 () T@$Mutation_122739)
(declare-fun $t50@1@@0 () T@$Mutation_10128)
(declare-fun inline$$AddU64$3$dst@2@@0 () Int)
(declare-fun $t1@2@@0 () T@$Mutation_122739)
(declare-fun inline$$And$0$dst@1@@0 () Bool)
(declare-fun $t1@0@@0 () T@$Mutation_122739)
(declare-fun $t19@@0 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@1| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun _$t1@@1 () T@$Mutation_122739)
(declare-fun $t16@0@@0 () Int)
(declare-fun $abort_code@7@@0 () Int)
(declare-fun inline$$AddU64$3$dst@0@@0 () Int)
(declare-fun $t48@0@@0 () Int)
(declare-fun inline$$AddU64$3$dst@1@@0 () Int)
(declare-fun $abort_code@6@@0 () Int)
(declare-fun $abort_flag@5@@0 () Bool)
(declare-fun $t47@0@@0 () T@$Mutation_10128)
(declare-fun $t47@1@@0 () T@$Mutation_10128)
(declare-fun inline$$AddU64$2$dst@2@@0 () Int)
(declare-fun inline$$AddU64$2$dst@0@@0 () Int)
(declare-fun $t45@0@@0 () Int)
(declare-fun inline$$AddU64$2$dst@1@@0 () Int)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun inline$$AddU64$1$dst@2@@0 () Int)
(declare-fun $t42@0@@0 () Int)
(declare-fun $t18@1@@0 () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun inline$$AddU64$1$dst@0@@0 () Int)
(declare-fun $t40@0@@0 () Int)
(declare-fun inline$$AddU64$1$dst@1@@0 () Int)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun inline$$Le$2$dst@1@@0 () Bool)
(declare-fun $t39@@0 () Int)
(declare-fun $t34@0@@0 () Int)
(declare-fun inline$$Sub$1$dst@2@@0 () Int)
(declare-fun inline$$Sub$1$dst@0@@0 () Int)
(declare-fun inline$$Sub$1$dst@1@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun $t32@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun $t30@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$Le$0$dst@1@@0 () Bool)
(declare-fun $t29@@0 () Int)
(declare-fun $t24@0@@0 () Int)
(declare-fun inline$$Sub$0$dst@2@@0 () Int)
(declare-fun inline$$Sub$0$dst@0@@0 () Int)
(declare-fun inline$$Sub$0$dst@1@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t23@@0 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@2| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t22@0@@0 () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t16@@0 () Int)
(declare-fun $t18@@0 () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun $t17@0@@0 () Int)
(declare-fun $t18@0@@0 () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t13@0@@0 () Bool)
(declare-fun $t15@@0 () Int)
(declare-fun |$1_AccountLimits_Window'$1_XUS_XUS'_$memory| () T@$Memory_117706)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'_| (|T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| Int) |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@0| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t12@0@@0 () Int)
(declare-fun $t47@@0 () T@$Mutation_10128)
(declare-fun $t50@@0 () T@$Mutation_10128)
; Valid
(declare-fun $t11@0@@2 () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun _$t0@@2 () Int)
(declare-fun $t21@0@@1 () Bool)
(declare-fun $t1@4@@1 () T@$Mutation_125912)
(declare-fun inline$$And$1$dst@1@@1 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@3| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t1@3@@1 () T@$Mutation_125912)
(declare-fun inline$$Le$1$dst@1@@1 () Bool)
(declare-fun inline$$Le$3$dst@1@@1 () Bool)
(declare-fun $abort_flag@6@@1 () Bool)
(declare-fun $t50@0@@1 () T@$Mutation_10128)
(declare-fun $t1@1@@1 () T@$Mutation_125912)
(declare-fun $t50@1@@1 () T@$Mutation_10128)
(declare-fun inline$$AddU64$3$dst@2@@1 () Int)
(declare-fun $t1@2@@1 () T@$Mutation_125912)
(declare-fun inline$$And$0$dst@1@@1 () Bool)
(declare-fun $t1@0@@1 () T@$Mutation_125912)
(declare-fun $t19@@1 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@1| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun _$t1@@2 () T@$Mutation_125912)
(declare-fun $t16@0@@1 () Int)
(declare-fun $abort_code@7@@1 () Int)
(declare-fun inline$$AddU64$3$dst@0@@1 () Int)
(declare-fun $t48@0@@1 () Int)
(declare-fun inline$$AddU64$3$dst@1@@1 () Int)
(declare-fun $abort_code@6@@1 () Int)
(declare-fun $abort_flag@5@@1 () Bool)
(declare-fun $t47@0@@1 () T@$Mutation_10128)
(declare-fun $t47@1@@1 () T@$Mutation_10128)
(declare-fun inline$$AddU64$2$dst@2@@1 () Int)
(declare-fun inline$$AddU64$2$dst@0@@1 () Int)
(declare-fun $t45@0@@1 () Int)
(declare-fun inline$$AddU64$2$dst@1@@1 () Int)
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun $abort_code@5@@1 () Int)
(declare-fun inline$$AddU64$1$dst@2@@1 () Int)
(declare-fun $t42@0@@1 () Int)
(declare-fun $t18@1@@1 () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun inline$$AddU64$1$dst@0@@1 () Int)
(declare-fun $t40@0@@1 () Int)
(declare-fun inline$$AddU64$1$dst@1@@1 () Int)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun inline$$Le$2$dst@1@@1 () Bool)
(declare-fun $t39@@1 () Int)
(declare-fun $t34@0@@1 () Int)
(declare-fun inline$$Sub$1$dst@2@@1 () Int)
(declare-fun inline$$Sub$1$dst@0@@1 () Int)
(declare-fun inline$$Sub$1$dst@1@@1 () Int)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$AddU64$0$dst@2@@1 () Int)
(declare-fun $t32@0@@1 () Int)
(declare-fun inline$$AddU64$0$dst@0@@1 () Int)
(declare-fun $t30@0@@1 () Int)
(declare-fun inline$$AddU64$0$dst@1@@1 () Int)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$Le$0$dst@1@@1 () Bool)
(declare-fun $t29@@1 () Int)
(declare-fun $t24@0@@1 () Int)
(declare-fun inline$$Sub$0$dst@2@@1 () Int)
(declare-fun inline$$Sub$0$dst@0@@1 () Int)
(declare-fun inline$$Sub$0$dst@1@@1 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t23@@1 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@2| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t22@0@@1 () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t16@@1 () Int)
(declare-fun $t18@@1 () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun $t17@0@@1 () Int)
(declare-fun $t18@0@@1 () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t13@0@@1 () Bool)
(declare-fun $t15@@1 () Int)
(declare-fun |$1_AccountLimits_Window'$1_XDX_XDX'_$memory| () T@$Memory_117894)
(declare-fun |Select__T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| Int) |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@0| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t12@0@@1 () Int)
(declare-fun $t47@@1 () T@$Mutation_10128)
(declare-fun $t50@@1 () T@$Mutation_10128)
; Valid
(declare-fun $t9@0 () |T@$1_AccountLimits_Window'#0'|)
(declare-fun _$t0@@3 () Int)
(declare-fun $t19@0 () Bool)
(declare-fun $t1@4@@2 () T@$Mutation_119553)
(declare-fun inline$$Le$1$dst@1@@2 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@3@@0| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t1@3@@2 () T@$Mutation_119553)
(declare-fun $t40@0@@2 () T@$Mutation_10128)
(declare-fun $t1@1@@2 () T@$Mutation_119553)
(declare-fun $t40@1 () T@$Mutation_10128)
(declare-fun $t6@0@@0 () Int)
(declare-fun $t1@2@@2 () T@$Mutation_119553)
(declare-fun $abort_flag@4@@2 () Bool)
(declare-fun inline$$Sub$1$dst@2@@2 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $t1@0@@2 () T@$Mutation_119553)
(declare-fun $t17 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@1@@0| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun _$t1@@3 () T@$Mutation_119553)
(declare-fun $t14@0 () Int)
(declare-fun $abort_code@5@@2 () Int)
(declare-fun inline$$Sub$1$dst@0@@2 () Int)
(declare-fun $t38@0 () Int)
(declare-fun inline$$Sub$1$dst@1@@2 () Int)
(declare-fun $abort_code@4@@2 () Int)
(declare-fun $abort_flag@3@@2 () Bool)
(declare-fun $t35@0 () Int)
(declare-fun $t34@0@@2 () T@$Mutation_10128)
(declare-fun $t34@1 () T@$Mutation_10128)
(declare-fun inline$$AddU64$1$dst@2@@2 () Int)
(declare-fun inline$$AddU64$1$dst@0@@2 () Int)
(declare-fun $t32@0@@2 () Int)
(declare-fun inline$$AddU64$1$dst@1@@2 () Int)
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$AddU64$0$dst@2@@2 () Int)
(declare-fun $t30@0@@2 () Int)
(declare-fun $t16@1 () |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun inline$$AddU64$0$dst@0@@2 () Int)
(declare-fun $t28@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@2 () Int)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$Le$0$dst@1@@2 () Bool)
(declare-fun $t27 () Int)
(declare-fun $t22@0@@2 () Int)
(declare-fun inline$$Sub$0$dst@2@@2 () Int)
(declare-fun inline$$Sub$0$dst@0@@2 () Int)
(declare-fun inline$$Sub$0$dst@1@@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t21 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@2@@0| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t20@0 () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t14 () Int)
(declare-fun $t16@@2 () |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun $t15@0 () Int)
(declare-fun $t16@0@@2 () |T@$1_AccountLimits_LimitsDefinition'#0'|)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t13 () Int)
(declare-fun |$temp_0'$1_AccountLimits_Window'#0''@0@@0| () |T@$1_AccountLimits_Window'#0'|)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t34 () T@$Mutation_10128)
(declare-fun $t40 () T@$Mutation_10128)
; Valid
(declare-fun $t9@0@@0 () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun _$t0@@4 () Int)
(declare-fun $t19@0@@0 () Bool)
(declare-fun $t1@4@@3 () T@$Mutation_122739)
(declare-fun inline$$Le$1$dst@1@@3 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@3@@0| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t1@3@@3 () T@$Mutation_122739)
(declare-fun $t40@0@@3 () T@$Mutation_10128)
(declare-fun $t1@1@@3 () T@$Mutation_122739)
(declare-fun $t40@1@@0 () T@$Mutation_10128)
(declare-fun $t6@0@@1 () Int)
(declare-fun $t1@2@@3 () T@$Mutation_122739)
(declare-fun $abort_flag@4@@3 () Bool)
(declare-fun inline$$Sub$1$dst@2@@3 () Int)
(declare-fun inline$$Ge$0$dst@1@@0 () Bool)
(declare-fun $t1@0@@3 () T@$Mutation_122739)
(declare-fun $t17@@0 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@1@@0| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun _$t1@@4 () T@$Mutation_122739)
(declare-fun $t14@0@@0 () Int)
(declare-fun $abort_code@5@@3 () Int)
(declare-fun inline$$Sub$1$dst@0@@3 () Int)
(declare-fun $t38@0@@0 () Int)
(declare-fun inline$$Sub$1$dst@1@@3 () Int)
(declare-fun $abort_code@4@@3 () Int)
(declare-fun $abort_flag@3@@3 () Bool)
(declare-fun $t35@0@@0 () Int)
(declare-fun $t34@0@@3 () T@$Mutation_10128)
(declare-fun $t34@1@@0 () T@$Mutation_10128)
(declare-fun inline$$AddU64$1$dst@2@@3 () Int)
(declare-fun inline$$AddU64$1$dst@0@@3 () Int)
(declare-fun $t32@0@@3 () Int)
(declare-fun inline$$AddU64$1$dst@1@@3 () Int)
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun inline$$AddU64$0$dst@2@@3 () Int)
(declare-fun $t30@0@@3 () Int)
(declare-fun $t16@1@@0 () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun inline$$AddU64$0$dst@0@@3 () Int)
(declare-fun $t28@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@3 () Int)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun inline$$Le$0$dst@1@@3 () Bool)
(declare-fun $t27@@0 () Int)
(declare-fun $t22@0@@3 () Int)
(declare-fun inline$$Sub$0$dst@2@@3 () Int)
(declare-fun inline$$Sub$0$dst@0@@3 () Int)
(declare-fun inline$$Sub$0$dst@1@@3 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t21@@0 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@2@@0| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t20@0@@0 () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t14@@0 () Int)
(declare-fun $t16@@3 () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun $t15@0@@0 () Int)
(declare-fun $t16@0@@3 () |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t11@0@@4 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XUS_XUS''@0@@0| () |T@$1_AccountLimits_Window'$1_XUS_XUS'|)
(declare-fun $t10@0@@1 () Int)
(declare-fun $t34@@0 () T@$Mutation_10128)
(declare-fun $t40@@0 () T@$Mutation_10128)
; Valid
(declare-fun $t9@0@@1 () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun _$t0@@5 () Int)
(declare-fun $t19@0@@1 () Bool)
(declare-fun $t1@4@@4 () T@$Mutation_125912)
(declare-fun inline$$Le$1$dst@1@@4 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@3@@0| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t1@3@@4 () T@$Mutation_125912)
(declare-fun $t40@0@@4 () T@$Mutation_10128)
(declare-fun $t1@1@@4 () T@$Mutation_125912)
(declare-fun $t40@1@@1 () T@$Mutation_10128)
(declare-fun $t6@0@@2 () Int)
(declare-fun $t1@2@@4 () T@$Mutation_125912)
(declare-fun $abort_flag@4@@4 () Bool)
(declare-fun inline$$Sub$1$dst@2@@4 () Int)
(declare-fun inline$$Ge$0$dst@1@@1 () Bool)
(declare-fun $t1@0@@4 () T@$Mutation_125912)
(declare-fun $t17@@1 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@1@@0| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun _$t1@@5 () T@$Mutation_125912)
(declare-fun $t14@0@@1 () Int)
(declare-fun $abort_code@5@@4 () Int)
(declare-fun inline$$Sub$1$dst@0@@4 () Int)
(declare-fun $t38@0@@1 () Int)
(declare-fun inline$$Sub$1$dst@1@@4 () Int)
(declare-fun $abort_code@4@@4 () Int)
(declare-fun $abort_flag@3@@4 () Bool)
(declare-fun $t35@0@@1 () Int)
(declare-fun $t34@0@@4 () T@$Mutation_10128)
(declare-fun $t34@1@@1 () T@$Mutation_10128)
(declare-fun inline$$AddU64$1$dst@2@@4 () Int)
(declare-fun inline$$AddU64$1$dst@0@@4 () Int)
(declare-fun $t32@0@@4 () Int)
(declare-fun inline$$AddU64$1$dst@1@@4 () Int)
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun inline$$AddU64$0$dst@2@@4 () Int)
(declare-fun $t30@0@@4 () Int)
(declare-fun $t16@1@@1 () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun inline$$AddU64$0$dst@0@@4 () Int)
(declare-fun $t28@0@@1 () Int)
(declare-fun inline$$AddU64$0$dst@1@@4 () Int)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun inline$$Le$0$dst@1@@4 () Bool)
(declare-fun $t27@@1 () Int)
(declare-fun $t22@0@@4 () Int)
(declare-fun inline$$Sub$0$dst@2@@4 () Int)
(declare-fun inline$$Sub$0$dst@0@@4 () Int)
(declare-fun inline$$Sub$0$dst@1@@4 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t21@@1 () Bool)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@2@@0| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t20@0@@1 () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t14@@1 () Int)
(declare-fun $t16@@4 () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun $t15@0@@1 () Int)
(declare-fun $t16@0@@4 () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t11@0@@5 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun |$temp_0'$1_AccountLimits_Window'$1_XDX_XDX''@0@@0| () |T@$1_AccountLimits_Window'$1_XDX_XDX'|)
(declare-fun $t10@0@@2 () Int)
(declare-fun $t34@@1 () T@$Mutation_10128)
(declare-fun $t40@@1 () T@$Mutation_10128)
; Valid
(declare-fun $t1 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun $t3 () Int)
(declare-fun $t5@@0 () Bool)
(declare-fun $t4@@0 () Int)
(declare-fun $t2 () Bool)
(declare-fun $t7@0 () T@$1_AccountLimits_AccountLimitMutationCapability)
(push 1)
(set-info :boogie-vc-id $1_AccountLimits_grant_mutation_capability$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 270804) (let ((L2_correct  (and (=> (= (ControlFlow 0 216476) (- 0 271598)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t1)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 216476) (- 0 271638)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t1)) (= 5 $t3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t1)) 0)) (= 3 $t3))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t3))))))))
(let ((anon7_Then_correct  (=> (and (and $t5@@0 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t4@@0)) (= 5 $t3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t4@@0)) 0)) (= 3 $t3))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t3)))) (and (= $t3 $t3) (= (ControlFlow 0 216348) 216476))) L2_correct)))
(let ((anon6_Then_correct  (=> $t2 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t3)) (and (= $t3 $t3) (= (ControlFlow 0 216502) 216476))) L2_correct))))
(let ((anon7_Else_correct  (=> (not $t5@@0) (=> (and (= $t7@0 ($1_AccountLimits_AccountLimitMutationCapability false)) (= $t7@0 $t7@0)) (and (=> (= (ControlFlow 0 216256) (- 0 271542)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 216256) (- 0 271552)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t1))) (and (=> (= (ControlFlow 0 216256) (- 0 271564)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t1)) 0))) (=> (= (ControlFlow 0 216256) (- 0 271582)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816))))))))))))))
(let ((anon6_Else_correct  (=> (not $t2) (=> (and (= $t4@@0 (|$addr#$signer| _$t0@@6)) (= $t5@@0  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) $t4@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $t4@@0)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))) (and (=> (= (ControlFlow 0 216174) 216348) anon7_Then_correct) (=> (= (ControlFlow 0 216174) 216256) anon7_Else_correct))))))
(let ((anon0$1_correct@@6  (=> (and (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@49)) 0)) (= addr@@49 173345816)))
 :qid |AccountLimitsbpl.9107:20|
 :skolemid |197|
))) (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@50)) 1)) (= addr@@50 186537453)))
 :qid |AccountLimitsbpl.9111:20|
 :skolemid |198|
)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@51)) 2))))))
 :qid |AccountLimitsbpl.9115:20|
 :skolemid |199|
)))) (and (and (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@52)) 2))))))
 :qid |AccountLimitsbpl.9119:20|
 :skolemid |200|
)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@53)) 2))))))
 :qid |AccountLimitsbpl.9123:20|
 :skolemid |201|
))) (and (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@54)) 2))))))
 :qid |AccountLimitsbpl.9127:20|
 :skolemid |202|
)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@55)) 2)))))
 :qid |AccountLimitsbpl.9131:20|
 :skolemid |203|
))))) (and (and (and (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@56)) 2)))))
 :qid |AccountLimitsbpl.9135:20|
 :skolemid |204|
)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@57)) 2)))))
 :qid |AccountLimitsbpl.9139:20|
 :skolemid |205|
))) (and (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106453| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@58) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@58)) 4))))
 :qid |AccountLimitsbpl.9143:20|
 :skolemid |206|
)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106000| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@59) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@59)) 3))))
 :qid |AccountLimitsbpl.9147:20|
 :skolemid |207|
)))) (and (and (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106000| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@60) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@60)) 3))))
 :qid |AccountLimitsbpl.9151:20|
 :skolemid |208|
)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_106000| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@61) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_106000| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@61)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@61)) 3))))
 :qid |AccountLimitsbpl.9155:20|
 :skolemid |209|
))) (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106790| $1_DualAttestation_Credential_$memory) addr1@@2) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr1@@2)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr1@@2)) 2)))))
 :qid |AccountLimitsbpl.9159:20|
 :skolemid |210|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_106905| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@62) (|Select__T@[Int]Bool_| (|domain#$Memory_106965| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@62)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@62)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_105627| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) addr@@62)) 2)))))
 :qid |AccountLimitsbpl.9163:20|
 :skolemid |211|
)))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) ($1_Signer_is_txn_signer _$t0@@6)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0@@6))) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@12)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@12))
 :qid |AccountLimitsbpl.9169:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@12))
))) (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |AccountLimitsbpl.9173:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_105627| $1_Roles_RoleId_$memory) $a_0@@13))
)) (= $t1 (|$addr#$signer| _$t0@@6))) (and (= _$t0@@6 _$t0@@6) (= $t2  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_105402| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 216104) 216502) anon6_Then_correct) (=> (= (ControlFlow 0 216104) 216174) anon6_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_81090_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_81090| stream@@7) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_81090| stream@@7) v@@36) 0)
 :qid |AccountLimitsbpl.134:13|
 :skolemid |2|
))))
 :qid |AccountLimitsbpl.2192:13|
 :skolemid |59|
))) (= (ControlFlow 0 215613) 216104)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 270804) 215613) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6)))))))))
))
(check-sat)
(pop 1)
; Valid
