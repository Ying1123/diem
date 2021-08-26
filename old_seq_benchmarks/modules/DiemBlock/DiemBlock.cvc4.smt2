(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_86116 0)) ((($Memory_86116 (|domain#$Memory_86116| |T@[Int]Bool|) (|contents#$Memory_86116| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_94407 0)) ((($Memory_94407 (|domain#$Memory_94407| |T@[Int]Bool|) (|contents#$Memory_94407| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_123696 0)) ((($Memory_123696 (|domain#$Memory_123696| |T@[Int]Bool|) (|contents#$Memory_123696| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_121490 0)) ((($Memory_121490 (|domain#$Memory_121490| |T@[Int]Bool|) (|contents#$Memory_121490| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_121770 0)) ((($Memory_121770 (|domain#$Memory_121770| |T@[Int]Bool|) (|contents#$Memory_121770| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_121457 0)) ((($Memory_121457 (|domain#$Memory_121457| |T@[Int]Bool|) (|contents#$Memory_121457| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_121242 0)) ((($Memory_121242 (|domain#$Memory_121242| |T@[Int]Bool|) (|contents#$Memory_121242| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_118703 0)) ((($Memory_118703 (|domain#$Memory_118703| |T@[Int]Bool|) (|contents#$Memory_118703| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_118639 0)) ((($Memory_118639 (|domain#$Memory_118639| |T@[Int]Bool|) (|contents#$Memory_118639| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_117349 0)) ((($Memory_117349 (|domain#$Memory_117349| |T@[Int]Bool|) (|contents#$Memory_117349| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_117285 0)) ((($Memory_117285 (|domain#$Memory_117285| |T@[Int]Bool|) (|contents#$Memory_117285| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_116973 0)) ((($Memory_116973 (|domain#$Memory_116973| |T@[Int]Bool|) (|contents#$Memory_116973| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113707 0)) ((($Memory_113707 (|domain#$Memory_113707| |T@[Int]Bool|) (|contents#$Memory_113707| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113420 0)) ((($Memory_113420 (|domain#$Memory_113420| |T@[Int]Bool|) (|contents#$Memory_113420| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_113133 0)) ((($Memory_113133 (|domain#$Memory_113133| |T@[Int]Bool|) (|contents#$Memory_113133| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_112914 0)) ((($Memory_112914 (|domain#$Memory_112914| |T@[Int]Bool|) (|contents#$Memory_112914| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_123303 0)) ((($Memory_123303 (|domain#$Memory_123303| |T@[Int]Bool|) (|contents#$Memory_123303| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105651 0)) ((($Memory_105651 (|domain#$Memory_105651| |T@[Int]Bool|) (|contents#$Memory_105651| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105564 0)) ((($Memory_105564 (|domain#$Memory_105564| |T@[Int]Bool|) (|contents#$Memory_105564| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_102361 0)) ((($Memory_102361 (|domain#$Memory_102361| |T@[Int]Bool|) (|contents#$Memory_102361| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_102274 0)) ((($Memory_102274 (|domain#$Memory_102274| |T@[Int]Bool|) (|contents#$Memory_102274| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123529 0)) ((($Memory_123529 (|domain#$Memory_123529| |T@[Int]Bool|) (|contents#$Memory_123529| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_105915 0)) ((($Memory_105915 (|domain#$Memory_105915| |T@[Int]Bool|) (|contents#$Memory_105915| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_115640 0)) ((($Memory_115640 (|domain#$Memory_115640| |T@[Int]Bool|) (|contents#$Memory_115640| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106241 0)) ((($Memory_106241 (|domain#$Memory_106241| |T@[Int]Bool|) (|contents#$Memory_106241| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123438 0)) ((($Memory_123438 (|domain#$Memory_123438| |T@[Int]Bool|) (|contents#$Memory_123438| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_105824 0)) ((($Memory_105824 (|domain#$Memory_105824| |T@[Int]Bool|) (|contents#$Memory_105824| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117529 0)) ((($Memory_117529 (|domain#$Memory_117529| |T@[Int]Bool|) (|contents#$Memory_117529| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106142 0)) ((($Memory_106142 (|domain#$Memory_106142| |T@[Int]Bool|) (|contents#$Memory_106142| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101976 0)) ((($Memory_101976 (|domain#$Memory_101976| |T@[Int]Bool|) (|contents#$Memory_101976| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101912 0)) ((($Memory_101912 (|domain#$Memory_101912| |T@[Int]Bool|) (|contents#$Memory_101912| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_97844 0)) ((($Memory_97844 (|domain#$Memory_97844| |T@[Int]Bool|) (|contents#$Memory_97844| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_97757 0)) ((($Memory_97757 (|domain#$Memory_97757| |T@[Int]Bool|) (|contents#$Memory_97757| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_97670 0)) ((($Memory_97670 (|domain#$Memory_97670| |T@[Int]Bool|) (|contents#$Memory_97670| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_97583 0)) ((($Memory_97583 (|domain#$Memory_97583| |T@[Int]Bool|) (|contents#$Memory_97583| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_97496 0)) ((($Memory_97496 (|domain#$Memory_97496| |T@[Int]Bool|) (|contents#$Memory_97496| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_98180 0)) ((($Memory_98180 (|domain#$Memory_98180| |T@[Int]Bool|) (|contents#$Memory_98180| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_96622 0)) ((($Memory_96622 (|domain#$Memory_96622| |T@[Int]Bool|) (|contents#$Memory_96622| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_96688 0)) ((($Memory_96688 (|domain#$Memory_96688| |T@[Int]Bool|) (|contents#$Memory_96688| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_96541 0)) ((($Memory_96541 (|domain#$Memory_96541| |T@[Int]Bool|) (|contents#$Memory_96541| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96460 0)) ((($Memory_96460 (|domain#$Memory_96460| |T@[Int]Bool|) (|contents#$Memory_96460| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96379 0)) ((($Memory_96379 (|domain#$Memory_96379| |T@[Int]Bool|) (|contents#$Memory_96379| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96298 0)) ((($Memory_96298 (|domain#$Memory_96298| |T@[Int]Bool|) (|contents#$Memory_96298| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_96184 0)) ((($Memory_96184 (|domain#$Memory_96184| |T@[Int]Bool|) (|contents#$Memory_96184| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_122440 0)) ((($Memory_122440 (|domain#$Memory_122440| |T@[Int]Bool|) (|contents#$Memory_122440| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96217 0)) ((($Memory_96217 (|domain#$Memory_96217| |T@[Int]Bool|) (|contents#$Memory_96217| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_95673 0)) ((($Memory_95673 (|domain#$Memory_95673| |T@[Int]Bool|) (|contents#$Memory_95673| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_95115 0)) ((($Memory_95115 (|domain#$Memory_95115| |T@[Int]Bool|) (|contents#$Memory_95115| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_94788 0)) ((($Memory_94788 (|domain#$Memory_94788| |T@[Int]Bool|) (|contents#$Memory_94788| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_92963 0)) ((($Memory_92963 (|domain#$Memory_92963| |T@[Int]Bool|) (|contents#$Memory_92963| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_63972 0)) (((Multiset_63972 (|v#Multiset_63972| |T@[$EventRep]Int|) (|l#Multiset_63972| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63972| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63972|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_127278 0)) ((($Mutation_127278 (|l#$Mutation_127278| T@$Location) (|p#$Mutation_127278| (Seq Int)) (|v#$Mutation_127278| T@$1_DiemBlock_BlockMetadata) ) ) ))
(declare-datatypes ((T@$Mutation_124524 0)) ((($Mutation_124524 (|l#$Mutation_124524| T@$Location) (|p#$Mutation_124524| (Seq Int)) (|v#$Mutation_124524| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_124480 0)) ((($Mutation_124480 (|l#$Mutation_124480| T@$Location) (|p#$Mutation_124480| (Seq Int)) (|v#$Mutation_124480| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_32407 0)) ((($Mutation_32407 (|l#$Mutation_32407| T@$Location) (|p#$Mutation_32407| (Seq Int)) (|v#$Mutation_32407| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_111634 0)) ((($Mutation_111634 (|l#$Mutation_111634| T@$Location) (|p#$Mutation_111634| (Seq Int)) (|v#$Mutation_111634| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_100653 0)) ((($Mutation_100653 (|l#$Mutation_100653| T@$Location) (|p#$Mutation_100653| (Seq Int)) (|v#$Mutation_100653| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_93458 0)) ((($Mutation_93458 (|l#$Mutation_93458| T@$Location) (|p#$Mutation_93458| (Seq Int)) (|v#$Mutation_93458| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_86747 0)) ((($Mutation_86747 (|l#$Mutation_86747| T@$Location) (|p#$Mutation_86747| (Seq Int)) (|v#$Mutation_86747| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_82060 0)) ((($Mutation_82060 (|l#$Mutation_82060| T@$Location) (|p#$Mutation_82060| (Seq Int)) (|v#$Mutation_82060| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_81314 0)) ((($Mutation_81314 (|l#$Mutation_81314| T@$Location) (|p#$Mutation_81314| (Seq Int)) (|v#$Mutation_81314| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_79874 0)) ((($Mutation_79874 (|l#$Mutation_79874| T@$Location) (|p#$Mutation_79874| (Seq Int)) (|v#$Mutation_79874| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_79128 0)) ((($Mutation_79128 (|l#$Mutation_79128| T@$Location) (|p#$Mutation_79128| (Seq Int)) (|v#$Mutation_79128| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_77688 0)) ((($Mutation_77688 (|l#$Mutation_77688| T@$Location) (|p#$Mutation_77688| (Seq Int)) (|v#$Mutation_77688| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_76942 0)) ((($Mutation_76942 (|l#$Mutation_76942| T@$Location) (|p#$Mutation_76942| (Seq Int)) (|v#$Mutation_76942| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_75502 0)) ((($Mutation_75502 (|l#$Mutation_75502| T@$Location) (|p#$Mutation_75502| (Seq Int)) (|v#$Mutation_75502| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_74756 0)) ((($Mutation_74756 (|l#$Mutation_74756| T@$Location) (|p#$Mutation_74756| (Seq Int)) (|v#$Mutation_74756| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_73316 0)) ((($Mutation_73316 (|l#$Mutation_73316| T@$Location) (|p#$Mutation_73316| (Seq Int)) (|v#$Mutation_73316| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_72570 0)) ((($Mutation_72570 (|l#$Mutation_72570| T@$Location) (|p#$Mutation_72570| (Seq Int)) (|v#$Mutation_72570| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_71130 0)) ((($Mutation_71130 (|l#$Mutation_71130| T@$Location) (|p#$Mutation_71130| (Seq Int)) (|v#$Mutation_71130| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_70384 0)) ((($Mutation_70384 (|l#$Mutation_70384| T@$Location) (|p#$Mutation_70384| (Seq Int)) (|v#$Mutation_70384| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_68944 0)) ((($Mutation_68944 (|l#$Mutation_68944| T@$Location) (|p#$Mutation_68944| (Seq Int)) (|v#$Mutation_68944| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_68198 0)) ((($Mutation_68198 (|l#$Mutation_68198| T@$Location) (|p#$Mutation_68198| (Seq Int)) (|v#$Mutation_68198| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_66720 0)) ((($Mutation_66720 (|l#$Mutation_66720| T@$Location) (|p#$Mutation_66720| (Seq Int)) (|v#$Mutation_66720| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65974 0)) ((($Mutation_65974 (|l#$Mutation_65974| T@$Location) (|p#$Mutation_65974| (Seq Int)) (|v#$Mutation_65974| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63972_| (|T@[$1_Event_EventHandle]Multiset_63972| T@$1_Event_EventHandle) T@Multiset_63972)
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
(declare-fun $1_Signer_is_signer (Int) Bool)
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
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| (|T@$1_AccountLimits_Window'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| (|T@$1_AccountLimits_Window'$1_XDX_XDX'|) Bool)
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
(declare-fun ReverseVec_12182 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_57869 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_56884 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_57081 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_57278 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_58066 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_57672 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_57475 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_56687 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63972| |T@[$1_Event_EventHandle]Multiset_63972|) |T@[$1_Event_EventHandle]Multiset_63972|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemBlockcvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemBlockcvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemBlockcvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemBlockcvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemBlockcvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemBlockcvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemBlockcvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemBlockcvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemBlockcvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |DiemBlockcvc4bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemBlockcvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemBlockcvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemBlockcvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemBlockcvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |DiemBlockcvc4bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemBlockcvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemBlockcvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemBlockcvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemBlockcvc4bpl.950:13|
 :skolemid |25|
))))
 :qid |DiemBlockcvc4bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemBlockcvc4bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemBlockcvc4bpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemBlockcvc4bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemBlockcvc4bpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemBlockcvc4bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemBlockcvc4bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemBlockcvc4bpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemBlockcvc4bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemBlockcvc4bpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemBlockcvc4bpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemBlockcvc4bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemBlockcvc4bpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemBlockcvc4bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemBlockcvc4bpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemBlockcvc4bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemBlockcvc4bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemBlockcvc4bpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemBlockcvc4bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemBlockcvc4bpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemBlockcvc4bpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemBlockcvc4bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemBlockcvc4bpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemBlockcvc4bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemBlockcvc4bpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemBlockcvc4bpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemBlockcvc4bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemBlockcvc4bpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemBlockcvc4bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemBlockcvc4bpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemBlockcvc4bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemBlockcvc4bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemBlockcvc4bpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemBlockcvc4bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |DiemBlockcvc4bpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemBlockcvc4bpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemBlockcvc4bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemBlockcvc4bpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemBlockcvc4bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemBlockcvc4bpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemBlockcvc4bpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemBlockcvc4bpl.2479:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemBlockcvc4bpl.2482:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63972| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream) v@@24) 0)
 :qid |DiemBlockcvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemBlockcvc4bpl.2543:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemBlockcvc4bpl.2584:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemBlockcvc4bpl.2590:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemBlockcvc4bpl.2640:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemBlockcvc4bpl.2646:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemBlockcvc4bpl.2696:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemBlockcvc4bpl.2702:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemBlockcvc4bpl.2752:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemBlockcvc4bpl.2758:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemBlockcvc4bpl.2808:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemBlockcvc4bpl.2814:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemBlockcvc4bpl.2864:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemBlockcvc4bpl.2870:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemBlockcvc4bpl.2920:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemBlockcvc4bpl.2926:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemBlockcvc4bpl.2976:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemBlockcvc4bpl.2982:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemBlockcvc4bpl.3032:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemBlockcvc4bpl.3038:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemBlockcvc4bpl.3088:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemBlockcvc4bpl.3094:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemBlockcvc4bpl.3144:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemBlockcvc4bpl.3150:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemBlockcvc4bpl.3200:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemBlockcvc4bpl.3206:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemBlockcvc4bpl.3256:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemBlockcvc4bpl.3262:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemBlockcvc4bpl.3312:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemBlockcvc4bpl.3318:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemBlockcvc4bpl.3368:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemBlockcvc4bpl.3374:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemBlockcvc4bpl.3424:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemBlockcvc4bpl.3430:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemBlockcvc4bpl.3480:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemBlockcvc4bpl.3486:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemBlockcvc4bpl.3540:15|
 :skolemid |105|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemBlockcvc4bpl.3549:15|
 :skolemid |106|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemBlockcvc4bpl.3574:61|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemBlockcvc4bpl.4130:36|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemBlockcvc4bpl.4149:71|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |DiemBlockcvc4bpl.4213:46|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |DiemBlockcvc4bpl.4226:64|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |DiemBlockcvc4bpl.4239:75|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |DiemBlockcvc4bpl.4252:72|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |DiemBlockcvc4bpl.4281:55|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |DiemBlockcvc4bpl.4303:46|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |DiemBlockcvc4bpl.4321:49|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |DiemBlockcvc4bpl.4396:71|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |DiemBlockcvc4bpl.4410:91|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |DiemBlockcvc4bpl.4424:113|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |DiemBlockcvc4bpl.4438:75|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |DiemBlockcvc4bpl.4452:73|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |DiemBlockcvc4bpl.4472:48|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |DiemBlockcvc4bpl.4488:57|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |DiemBlockcvc4bpl.4502:83|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |DiemBlockcvc4bpl.4516:103|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |DiemBlockcvc4bpl.4530:125|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |DiemBlockcvc4bpl.4544:87|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |DiemBlockcvc4bpl.4558:85|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |DiemBlockcvc4bpl.4572:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |DiemBlockcvc4bpl.4599:45|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |DiemBlockcvc4bpl.4613:51|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |DiemBlockcvc4bpl.4636:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |DiemBlockcvc4bpl.4942:49|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |DiemBlockcvc4bpl.4955:65|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |DiemBlockcvc4bpl.5459:45|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |DiemBlockcvc4bpl.5472:45|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |DiemBlockcvc4bpl.5485:55|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |DiemBlockcvc4bpl.5499:55|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |DiemBlockcvc4bpl.5519:38|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |DiemBlockcvc4bpl.5540:44|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |DiemBlockcvc4bpl.5591:53|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |DiemBlockcvc4bpl.5653:53|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |DiemBlockcvc4bpl.5679:55|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |DiemBlockcvc4bpl.5693:55|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |DiemBlockcvc4bpl.5710:38|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |DiemBlockcvc4bpl.5724:48|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |DiemBlockcvc4bpl.5738:48|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |DiemBlockcvc4bpl.5758:41|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |DiemBlockcvc4bpl.5773:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |DiemBlockcvc4bpl.5787:53|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |DiemBlockcvc4bpl.5804:60|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |DiemBlockcvc4bpl.5821:60|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |DiemBlockcvc4bpl.5838:57|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |DiemBlockcvc4bpl.8039:68|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |DiemBlockcvc4bpl.8061:66|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |DiemBlockcvc4bpl.8087:66|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |DiemBlockcvc4bpl.8116:56|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |DiemBlockcvc4bpl.8146:56|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |DiemBlockcvc4bpl.8480:31|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |DiemBlockcvc4bpl.8824:31|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |DiemBlockcvc4bpl.8843:35|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |DiemBlockcvc4bpl.9264:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |DiemBlockcvc4bpl.9283:50|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |DiemBlockcvc4bpl.9298:52|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |DiemBlockcvc4bpl.9322:38|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |DiemBlockcvc4bpl.9336:39|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |DiemBlockcvc4bpl.9363:65|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |DiemBlockcvc4bpl.9748:60|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |DiemBlockcvc4bpl.9765:66|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |DiemBlockcvc4bpl.9794:50|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |DiemBlockcvc4bpl.9813:45|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |DiemBlockcvc4bpl.10132:87|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |DiemBlockcvc4bpl.10344:47|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |DiemBlockcvc4bpl.10364:58|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |DiemBlockcvc4bpl.10379:39|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |DiemBlockcvc4bpl.10401:58|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |DiemBlockcvc4bpl.10418:58|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |DiemBlockcvc4bpl.10433:51|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |DiemBlockcvc4bpl.10450:60|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |DiemBlockcvc4bpl.10748:47|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |DiemBlockcvc4bpl.10770:63|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |DiemBlockcvc4bpl.10785:57|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@76)))
 :qid |DiemBlockcvc4bpl.10798:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@77)))
 :qid |DiemBlockcvc4bpl.10812:55|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |DiemBlockcvc4bpl.10829:54|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |DiemBlockcvc4bpl.10843:55|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |DiemBlockcvc4bpl.10857:57|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |DiemBlockcvc4bpl.10879:56|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |DiemBlockcvc4bpl.10904:52|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |DiemBlockcvc4bpl.10920:54|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |DiemBlockcvc4bpl.11797:47|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |DiemBlockcvc4bpl.11821:47|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |DiemBlockcvc4bpl.13040:49|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |DiemBlockcvc4bpl.13083:49|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |DiemBlockcvc4bpl.13112:48|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |DiemBlockcvc4bpl.13407:47|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_57869 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57869 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_56884 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56884 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_57081 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57081 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_57278 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57278 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_58066 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_58066 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_57672 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57672 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_57475 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57475 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_56687 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |DiemBlockcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |DiemBlockcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56687 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |DiemBlockcvc4bpl.245:54|
 :skolemid |289|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63972|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63972|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| |l#1| handle@@0))))
(Multiset_63972 (|lambda#3| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| |l#0@@0| handle@@0)) (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemBlockcvc4bpl.2553:13|
 :skolemid |290|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |DiemBlockcvc4bpl.124:29|
 :skolemid |291|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_93458)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_93458)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_92963)
(declare-fun $1_DiemBlock_BlockMetadata_$memory () T@$Memory_94407)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_92963)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int T@$1_DiemTimestamp_CurrentTimeMicroseconds) |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemTimestamp_CurrentTimeMicroseconds)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| ?x0 ?y1))) :weight 0)))
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
(declare-fun $t14 () T@$Mutation_93458)
(declare-fun $t14@0 () T@$Mutation_93458)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_93458)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201330) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_93458| $t14@1) (seq.++ (|p#$Mutation_93458| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_93458| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_93458 (|l#$Mutation_93458| $t14@1) (|p#$Mutation_93458| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_92963 (|Store__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_93458| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_93458| $t14@2)) (|v#$Mutation_93458| $t14@2)))))) (and (=> (= (ControlFlow 0 146469) (- 0 201952)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 146469) (- 0 201977)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 146469) (- 0 201987)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 146469) (- 0 202001)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 146469) (- 0 202025)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 146527) 146469)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 146327) 146469)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 146323) (- 0 202069)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 146323) (- 0 202106)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 146523) 146323))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 146507) 146527) anon25_Then_correct) (=> (= (ControlFlow 0 146507) 146523) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 146207) 146323))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 146191) 146327) anon26_Then_correct) (=> (= (ControlFlow 0 146191) 146207) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 146155) 146191)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 146161) 146155)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_93458| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_93458| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 146109) 146507) anon24_Then_correct) (=> (= (ControlFlow 0 146109) 146161) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 146541) 146323))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 146593) 146541) anon23_Then_correct) (=> (= (ControlFlow 0 146593) 146109) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 146591) 146593)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_93458 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 146063) 146541) anon23_Then_correct) (=> (= (ControlFlow 0 146063) 146109) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 146041) (- 0 201628)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 146041) 146591) anon22_Then_correct) (=> (= (ControlFlow 0 146041) 146063) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 146623) 146323))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 146021) 146623) anon21_Then_correct) (=> (= (ControlFlow 0 146021) 146041) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 146649) 146323))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemBlockcvc4bpl.3763:20|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 145999) 146649) anon20_Then_correct) (=> (= (ControlFlow 0 145999) 146021) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63972| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@0) v@@35) 0)
 :qid |DiemBlockcvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemBlockcvc4bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 145887) 145999)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_93458| $t7)) 0) (= (seq.len (|p#$Mutation_93458| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 145897) 145887))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 201330) 145897) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_DiemBlock_is_initialized$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202352) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1 () Bool)
(declare-fun $1_DiemBlock_BlockMetadata_$memory@0 () T@$Memory_94407)
(declare-fun $t22@2 () T@$Mutation_127278)
(declare-fun |Store__T@[Int]$1_DiemBlock_BlockMetadata_| (|T@[Int]$1_DiemBlock_BlockMetadata| Int T@$1_DiemBlock_BlockMetadata) |T@[Int]$1_DiemBlock_BlockMetadata|)
(declare-fun |Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|T@[Int]$1_DiemBlock_BlockMetadata| Int) T@$1_DiemBlock_BlockMetadata)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemBlock_BlockMetadata|) ( ?x1 Int) ( ?x2 T@$1_DiemBlock_BlockMetadata)) (! (= (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|Store__T@[Int]$1_DiemBlock_BlockMetadata_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemBlock_BlockMetadata|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemBlock_BlockMetadata)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|Store__T@[Int]$1_DiemBlock_BlockMetadata_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2 () T@$Memory_92963)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t4 () Int)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_96217)
(declare-fun _$t2@@0 () Int)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t9@@0 () T@$1_Event_EventHandle)
(declare-fun $t10@@0 () T@$1_DiemBlock_NewBlockEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_63972_| (|T@[$1_Event_EventHandle]Multiset_63972| T@$1_Event_EventHandle T@Multiset_63972) |T@[$1_Event_EventHandle]Multiset_63972|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_63972|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_63972)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|Store__T@[$1_Event_EventHandle]Multiset_63972_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_63972|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_63972)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|Store__T@[$1_Event_EventHandle]Multiset_63972_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_63972_| ?x0 ?y1))) :weight 0)))
(declare-fun $t12@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemBlock_NewBlockEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t30@0 () T@$Mutation_86747)
(declare-fun $t31@0 () T@$1_DiemBlock_NewBlockEvent)
(declare-fun $t29@0 () T@$Mutation_12329)
(declare-fun $t22@1 () T@$Mutation_127278)
(declare-fun $t29@1 () T@$Mutation_12329)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun _$t3 () (Seq Int))
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t25@@0 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@1 () T@$Memory_92963)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0@@0 () T@$Memory_92963)
(declare-fun |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0@@0| () T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $t24@@0 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun |$temp_0'$1_DiemBlock_BlockMetadata'@0| () T@$1_DiemBlock_BlockMetadata)
(declare-fun $t23@@0 () Int)
(declare-fun $t22 () T@$Mutation_127278)
(declare-fun $t22@0 () T@$Mutation_127278)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t18 () Bool)
(declare-fun $t17 () Bool)
(declare-fun $t15@0@@0 () Bool)
(declare-fun $t13 () Bool)
(declare-fun $t11@@0 () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_96688)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_96298)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_96379)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_96460)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_96541)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_98180)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_94788)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $t8 () T@$Mutation_127278)
(declare-fun $t29 () T@$Mutation_12329)
(declare-fun $t30 () T@$Mutation_86747)
(push 1)
(set-info :boogie-vc-id $1_DiemBlock_block_prologue$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202458) (let ((anon38_Else_correct  (=> (and (not $abort_flag@1) (= $1_DiemBlock_BlockMetadata_$memory@0 ($Memory_94407 (|Store__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) (|a#$Global| (|l#$Mutation_127278| $t22@2)) true) (|Store__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) (|a#$Global| (|l#$Mutation_127278| $t22@2)) (|v#$Mutation_127278| $t22@2))))) (and (=> (= (ControlFlow 0 148348) (- 0 204045)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory@0) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory@0) 173345816)) (and (=> (= (ControlFlow 0 148348) (- 0 204059)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 148348) (- 0 204069)) (not (not (= (|$addr#$signer| _$t0@@0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 0))) (and (=> (= (ControlFlow 0 148348) (- 0 204083)) (not (and (not (= _$t4 0)) (not (let (($range_0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@0))))))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((v@@36 (seq.nth $range_0 $i_1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@36) _$t4)))
 :qid |DiemBlockcvc4bpl.4581:125|
 :skolemid |131|
))))))) (=> (not (and (not (= _$t4 0)) (not (let (($range_0@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@1))))))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((v@@37 (seq.nth $range_0@@0 $i_1@@0)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@37) _$t4)))
 :qid |DiemBlockcvc4bpl.4581:125|
 :skolemid |131|
)))))) (and (=> (= (ControlFlow 0 148348) (- 0 204103)) (not (> (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1) 18446744073709551615))) (=> (not (> (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1) 18446744073709551615)) (and (=> (= (ControlFlow 0 148348) (- 0 204119)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2) 173345816)) _$t2@@0)) (=> (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2) 173345816)) _$t2@@0) (and (=> (= (ControlFlow 0 148348) (- 0 204128)) (= (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory@0) 173345816)) (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1))) (=> (= (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory@0) 173345816)) (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1)) (and (=> (= (ControlFlow 0 148348) (- 0 204143)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) $t9@@0)))
(let ((stream_new (let ((len (|l#Multiset_63972| stream@@1)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@1) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t10@@0))))
(Multiset_63972 (|Store__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@1) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t10@@0) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) $t9@@0 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| expected) handle@@2)) (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| actual) handle@@2))) (forall ((v@@38 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| expected) handle@@2)) v@@38) (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| actual) handle@@2)) v@@38))
 :qid |DiemBlockcvc4bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemBlockcvc4bpl.2559:13|
 :skolemid |70|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) $t9@@0)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_63972| stream@@2)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@2) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t10@@0))))
(Multiset_63972 (|Store__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@2) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t10@@0) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) $t9@@0 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| expected@@0) handle@@3)) (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| actual@@0) handle@@3))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| expected@@0) handle@@3)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| actual@@0) handle@@3)) v@@39))
 :qid |DiemBlockcvc4bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemBlockcvc4bpl.2559:13|
 :skolemid |70|
))))) (=> (= (ControlFlow 0 148348) (- 0 204168)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) $t9@@0)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_63972| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@3) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t10@@0))))
(Multiset_63972 (|Store__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@3) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t10@@0) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $EmptyEventStore) $t9@@0 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| actual@@1) handle@@4)) (|l#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| expected@@1) handle@@4))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| actual@@1) handle@@4)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| expected@@1) handle@@4)) v@@40))
 :qid |DiemBlockcvc4bpl.134:13|
 :skolemid |3|
)))
 :qid |DiemBlockcvc4bpl.2559:13|
 :skolemid |70|
)))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 147740) (- 0 203896)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0@@0) 0))) (and (not (= _$t4 0)) (not (let (($range_0@@1 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@2))))))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@1))) (let ((v@@41 (seq.nth $range_0@@1 $i_1@@1)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@41) _$t4)))
 :qid |DiemBlockcvc4bpl.4581:125|
 :skolemid |131|
)))))) (> (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1) 18446744073709551615))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0@@0) 0))) (and (not (= _$t4 0)) (not (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@3))))))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@2))) (let ((v@@42 (seq.nth $range_0@@2 $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@42) _$t4)))
 :qid |DiemBlockcvc4bpl.4581:125|
 :skolemid |131|
)))))) (> (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1) 18446744073709551615)) (=> (= (ControlFlow 0 147740) (- 0 203942)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t12@0)) (and (not (= (|$addr#$signer| _$t0@@0) 0)) (= 2 $t12@0))) (and (and (not (= _$t4 0)) (not (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@4))))))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let ((v@@43 (seq.nth $range_0@@3 $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@43) _$t4)))
 :qid |DiemBlockcvc4bpl.4581:125|
 :skolemid |131|
))))) (= 2 $t12@0))) (and (> (+ (|$height#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) 1) 18446744073709551615) (= (- 0 1) $t12@0))))))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t12@0 $abort_code@2) (= (ControlFlow 0 148362) 147740))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemBlock_NewBlockEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemBlock_NewBlockEvent'$0$handle@1| (|v#$Mutation_86747| $t30@0)) (= $es@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemBlock_NewBlockEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_63972| stream@@4)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@4) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t31@0))))
(Multiset_63972 (|Store__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@4) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| $t31@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemBlock_NewBlockEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 148164) 148362) anon38_Then_correct) (=> (= (ControlFlow 0 148164) 148348) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t29@0 ($Mutation_12329 (|l#$Mutation_127278| $t22@1) (seq.++ (|p#$Mutation_127278| $t22@1) (seq.unit 0)) (|$height#$1_DiemBlock_BlockMetadata| (|v#$Mutation_127278| $t22@1)))) (= $t29@1 ($Mutation_12329 (|l#$Mutation_12329| $t29@0) (|p#$Mutation_12329| $t29@0) inline$$AddU64$0$dst@2))) (=> (and (and (= $t22@2 ($Mutation_127278 (|l#$Mutation_127278| $t22@1) (|p#$Mutation_127278| $t22@1) ($1_DiemBlock_BlockMetadata (|v#$Mutation_12329| $t29@1) (|$new_block_events#$1_DiemBlock_BlockMetadata| (|v#$Mutation_127278| $t22@1))))) (= $t30@0 ($Mutation_86747 (|l#$Mutation_127278| $t22@2) (seq.++ (|p#$Mutation_127278| $t22@2) (seq.unit 1)) (|$new_block_events#$1_DiemBlock_BlockMetadata| (|v#$Mutation_127278| $t22@2))))) (and (= $t31@0 ($1_DiemBlock_NewBlockEvent _$t1@@0 _$t4 _$t3 _$t2@@0)) (= (ControlFlow 0 148170) 148164))) |inline$$1_Event_emit_event'$1_DiemBlock_NewBlockEvent'$0$anon0_correct|)))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t12@0 $abort_code@2) (= (ControlFlow 0 148376) 147740))) L7_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 148021) 148376) anon37_Then_correct) (=> (= (ControlFlow 0 148021) 148170) anon37_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t26@0 1) $MAX_U64) (= (ControlFlow 0 148019) 148021)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t26@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t26@0 1)) (= $abort_flag@1 $abort_flag@0@@0)) (and (= $abort_code@2 $abort_code@1@@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 147967) 148376) anon37_Then_correct) (=> (= (ControlFlow 0 147967) 148170) anon37_Else_correct))))))
(let ((anon21_correct  (=> (and (and (= $t25@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2) 173345816))) (= $t25@@0 _$t2@@0)) (and (= $t26@0 (|$height#$1_DiemBlock_BlockMetadata| (|v#$Mutation_127278| $t22@1))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 148027) 148019) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 148027) 147967) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@1 ($Memory_92963 (|Store__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816 false) (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory)))) (and (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2 $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@1) (= (ControlFlow 0 147844) 148027))) anon21_correct)))
(let ((anon36_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0@@0 ($Memory_92963 (|Store__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816 true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816 |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0@@0|)))) (and (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@2 $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0@@0) (= (ControlFlow 0 148388) 148027))) anon21_correct)))
(let ((anon35_Else_correct  (=> (not $t24@@0) (and (=> (= (ControlFlow 0 147832) 148388) anon36_Then_correct) (=> (= (ControlFlow 0 147832) 147844) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> $t24@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t12@@0)) (and (not (= (|$addr#$signer| _$t0@@0) 0)) (= 2 $t12@@0))) (= $t12@@0 $t12@@0)) (and (= $t12@0 $t12@@0) (= (ControlFlow 0 148434) 147740))) L7_correct))))
(let ((anon34_Else_correct  (=> (not $abort_flag@0@@0) (=> (and (and (= |$temp_0'$1_DiemBlock_BlockMetadata'@0| (|v#$Mutation_127278| $t22@1)) (= |$temp_0'$1_DiemBlock_BlockMetadata'@0| |$temp_0'$1_DiemBlock_BlockMetadata'@0|)) (and (= $t23@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t24@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0@@0) 0)))))) (and (=> (= (ControlFlow 0 147826) 148434) anon35_Then_correct) (=> (= (ControlFlow 0 147826) 147832) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t12@0 $abort_code@1@@0) (= (ControlFlow 0 148448) 147740))) L7_correct)))
(let ((anon33_Then$1_correct  (=> (= $t22@1 $t22) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 148500) 148448) anon34_Then_correct) (=> (= (ControlFlow 0 148500) 147826) anon34_Else_correct))))))
(let ((anon33_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816)) (= (ControlFlow 0 148498) 148500)) anon33_Then$1_correct)))
(let ((anon33_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816) (=> (and (and (= $t22@0 ($Mutation_127278 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (= $t22@1 $t22@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 147772) 148448) anon34_Then_correct) (=> (= (ControlFlow 0 147772) 147826) anon34_Else_correct))))))
(let ((anon32_Then_correct  (=> (and $t7@0 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 147750) 148498) anon33_Then_correct) (=> (= (ControlFlow 0 147750) 147772) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (and (not $t7@0) (= $t20@@0 $t20@@0)) (and (= $t12@0 $t20@@0) (= (ControlFlow 0 147594) 147740))) L7_correct)))
(let ((L3_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 2)) (and (= $t20@@0 $t20@@0) (= $t7@0 $t7@0))) (and (=> (= (ControlFlow 0 147578) 147750) anon32_Then_correct) (=> (= (ControlFlow 0 147578) 147594) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (not $t18) (=> (and (and (= $t17 (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@5))))))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let ((v@@44 (seq.nth $range_0@@4 $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@44) _$t4)))
 :qid |DiemBlockcvc4bpl.4581:125|
 :skolemid |131|
)))) (= $t17 $t17)) (and (= $t7@0 $t17) (= (ControlFlow 0 147544) 147578))) L3_correct))))
(let ((anon30_Then_correct  (=> (and (and $t15@0@@0 (= true true)) (and (= $t7@0 true) (= (ControlFlow 0 148546) 147578))) L3_correct)))
(let ((anon31_Then_correct  (=> $t18 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t12@@0)) (= $t12@@0 $t12@@0)) (and (= $t12@0 $t12@@0) (= (ControlFlow 0 148528) 147740))) L7_correct))))
(let ((anon30_Else_correct  (=> (and (not $t15@0@@0) (= $t18  (not (|Select__T@[Int]Bool_| (|domain#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 147516) 148528) anon31_Then_correct) (=> (= (ControlFlow 0 147516) 147544) anon31_Else_correct)))))
(let ((anon29_Else_correct  (=> (not $t13) (=> (and (|$IsValid'address'| 0) (= $t15@0@@0 (= _$t4 0))) (and (=> (= (ControlFlow 0 147498) 148546) anon30_Then_correct) (=> (= (ControlFlow 0 147498) 147516) anon30_Else_correct))))))
(let ((anon29_Then_correct  (=> $t13 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@0) 0)) (= 2 $t12@@0)) (= $t12@@0 $t12@@0)) (and (= $t12@0 $t12@@0) (= (ControlFlow 0 148576) 147740))) L7_correct))))
(let ((anon28_Else_correct  (=> (and (not $t11@@0) (= $t13  (not (= (|$addr#$signer| _$t0@@0) 0)))) (and (=> (= (ControlFlow 0 147478) 148576) anon29_Then_correct) (=> (= (ControlFlow 0 147478) 147498) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> $t11@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t12@@0)) (= $t12@@0 $t12@@0)) (and (= $t12@0 $t12@@0) (= (ControlFlow 0 148602) 147740))) L7_correct))))
(let ((anon0$1_correct@@0  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_96688| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |DiemBlockcvc4bpl.11974:24|
 :skolemid |196|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96298| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |DiemBlockcvc4bpl.11974:243|
 :skolemid |197|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96379| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |DiemBlockcvc4bpl.11974:483|
 :skolemid |198|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96460| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |DiemBlockcvc4bpl.11974:745|
 :skolemid |199|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_96541| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |DiemBlockcvc4bpl.11974:969|
 :skolemid |200|
))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_98180| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@5 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@6 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@6))))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i1 $i_1@@5))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_94788| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94788| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@7 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@7)))) i1)))) 3))))
 :qid |DiemBlockcvc4bpl.11982:151|
 :skolemid |201|
)))) (and (let (($range_0@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@8 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@8))))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i1@@0 $i_1@@6))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@9 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@9)))) i1@@0)) 1)))
 :qid |DiemBlockcvc4bpl.11987:151|
 :skolemid |202|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816))))) (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (|$IsValid'u64'| _$t1@@0)) (and (|$IsValid'u64'| _$t2@@0) (|$IsValid'vec'address''| _$t3))) (and (and (|$IsValid'address'| _$t4) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemBlockcvc4bpl.12010:20|
 :skolemid |203|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@1) (let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@1))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@1))))))
(forall (($i_3 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1 $i_3) (=> ($InRange $range_2 $i_4) (let ((i@@40 $i_3))
(let ((j@@9 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@1)) i@@40)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@1)) j@@9))) (= i@@40 j@@9))))))
 :qid |DiemBlockcvc4bpl.12015:367|
 :skolemid |204|
))))))
 :qid |DiemBlockcvc4bpl.12014:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_96217| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) $a_0@@2)))
(|$IsValid'$1_DiemBlock_BlockMetadata'| $rsc@@2))
 :qid |DiemBlockcvc4bpl.12020:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) $a_0@@2))
))))) (and (and (and (= $t9@@0 (|$new_block_events#$1_DiemBlock_BlockMetadata| (|Select__T@[Int]$1_DiemBlock_BlockMetadata_| (|contents#$Memory_94407| $1_DiemBlock_BlockMetadata_$memory) 173345816))) (= $t10@@0 ($1_DiemBlock_NewBlockEvent _$t1@@0 _$t4 _$t3 _$t2@@0))) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= _$t4 _$t4) (= $t11@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_92963| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 147456) 148602) anon28_Then_correct) (=> (= (ControlFlow 0 147456) 147478) anon28_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_63972_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_63972| stream@@5) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63972| stream@@5) v@@45) 0)
 :qid |DiemBlockcvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |DiemBlockcvc4bpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 146930) 147456)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_127278| $t8)) 0) (=> (and (and (= (seq.len (|p#$Mutation_127278| $t22)) 0) (= (seq.len (|p#$Mutation_12329| $t29)) 0)) (and (= (seq.len (|p#$Mutation_86747| $t30)) 0) (= (ControlFlow 0 146940) 146930))) inline$$InitEventStore$0$anon0_correct@@0))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 202458) 146940) anon0_correct@@0)))
PreconditionGeneratedEntry_correct@@0)))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
