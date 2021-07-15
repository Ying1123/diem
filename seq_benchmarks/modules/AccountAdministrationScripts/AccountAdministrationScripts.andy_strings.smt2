(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_102372 0)) ((($Memory_102372 (|domain#$Memory_102372| |T@[Int]Bool|) (|contents#$Memory_102372| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_165048 0)) ((($Memory_165048 (|domain#$Memory_165048| |T@[Int]Bool|) (|contents#$Memory_165048| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_143167 0)) ((($Memory_143167 (|domain#$Memory_143167| |T@[Int]Bool|) (|contents#$Memory_143167| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_140960 0)) ((($Memory_140960 (|domain#$Memory_140960| |T@[Int]Bool|) (|contents#$Memory_140960| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_141273 0)) ((($Memory_141273 (|domain#$Memory_141273| |T@[Int]Bool|) (|contents#$Memory_141273| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_140927 0)) ((($Memory_140927 (|domain#$Memory_140927| |T@[Int]Bool|) (|contents#$Memory_140927| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_140712 0)) ((($Memory_140712 (|domain#$Memory_140712| |T@[Int]Bool|) (|contents#$Memory_140712| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_136357 0)) ((($Memory_136357 (|domain#$Memory_136357| |T@[Int]Bool|) (|contents#$Memory_136357| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_136293 0)) ((($Memory_136293 (|domain#$Memory_136293| |T@[Int]Bool|) (|contents#$Memory_136293| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_134871 0)) ((($Memory_134871 (|domain#$Memory_134871| |T@[Int]Bool|) (|contents#$Memory_134871| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_134807 0)) ((($Memory_134807 (|domain#$Memory_134807| |T@[Int]Bool|) (|contents#$Memory_134807| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_133981 0)) ((($Memory_133981 (|domain#$Memory_133981| |T@[Int]Bool|) (|contents#$Memory_133981| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_133917 0)) ((($Memory_133917 (|domain#$Memory_133917| |T@[Int]Bool|) (|contents#$Memory_133917| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_130796 0)) ((($Memory_130796 (|domain#$Memory_130796| |T@[Int]Bool|) (|contents#$Memory_130796| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_130577 0)) ((($Memory_130577 (|domain#$Memory_130577| |T@[Int]Bool|) (|contents#$Memory_130577| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_142865 0)) ((($Memory_142865 (|domain#$Memory_142865| |T@[Int]Bool|) (|contents#$Memory_142865| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123421 0)) ((($Memory_123421 (|domain#$Memory_123421| |T@[Int]Bool|) (|contents#$Memory_123421| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123334 0)) ((($Memory_123334 (|domain#$Memory_123334| |T@[Int]Bool|) (|contents#$Memory_123334| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118701 0)) ((($Memory_118701 (|domain#$Memory_118701| |T@[Int]Bool|) (|contents#$Memory_118701| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118614 0)) ((($Memory_118614 (|domain#$Memory_118614| |T@[Int]Bool|) (|contents#$Memory_118614| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_143000 0)) ((($Memory_143000 (|domain#$Memory_143000| |T@[Int]Bool|) (|contents#$Memory_143000| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_123685 0)) ((($Memory_123685 (|domain#$Memory_123685| |T@[Int]Bool|) (|contents#$Memory_123685| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_132629 0)) ((($Memory_132629 (|domain#$Memory_132629| |T@[Int]Bool|) (|contents#$Memory_132629| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_124011 0)) ((($Memory_124011 (|domain#$Memory_124011| |T@[Int]Bool|) (|contents#$Memory_124011| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123594 0)) ((($Memory_123594 (|domain#$Memory_123594| |T@[Int]Bool|) (|contents#$Memory_123594| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_135227 0)) ((($Memory_135227 (|domain#$Memory_135227| |T@[Int]Bool|) (|contents#$Memory_135227| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_123912 0)) ((($Memory_123912 (|domain#$Memory_123912| |T@[Int]Bool|) (|contents#$Memory_123912| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_118334 0)) ((($Memory_118334 (|domain#$Memory_118334| |T@[Int]Bool|) (|contents#$Memory_118334| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_118198 0)) ((($Memory_118198 (|domain#$Memory_118198| |T@[Int]Bool|) (|contents#$Memory_118198| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_118134 0)) ((($Memory_118134 (|domain#$Memory_118134| |T@[Int]Bool|) (|contents#$Memory_118134| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_114207 0)) ((($Memory_114207 (|domain#$Memory_114207| |T@[Int]Bool|) (|contents#$Memory_114207| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_114120 0)) ((($Memory_114120 (|domain#$Memory_114120| |T@[Int]Bool|) (|contents#$Memory_114120| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_114033 0)) ((($Memory_114033 (|domain#$Memory_114033| |T@[Int]Bool|) (|contents#$Memory_114033| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_113946 0)) ((($Memory_113946 (|domain#$Memory_113946| |T@[Int]Bool|) (|contents#$Memory_113946| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_113859 0)) ((($Memory_113859 (|domain#$Memory_113859| |T@[Int]Bool|) (|contents#$Memory_113859| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_114472 0)) ((($Memory_114472 (|domain#$Memory_114472| |T@[Int]Bool|) (|contents#$Memory_114472| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_112985 0)) ((($Memory_112985 (|domain#$Memory_112985| |T@[Int]Bool|) (|contents#$Memory_112985| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_113051 0)) ((($Memory_113051 (|domain#$Memory_113051| |T@[Int]Bool|) (|contents#$Memory_113051| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_112904 0)) ((($Memory_112904 (|domain#$Memory_112904| |T@[Int]Bool|) (|contents#$Memory_112904| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_112823 0)) ((($Memory_112823 (|domain#$Memory_112823| |T@[Int]Bool|) (|contents#$Memory_112823| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_112742 0)) ((($Memory_112742 (|domain#$Memory_112742| |T@[Int]Bool|) (|contents#$Memory_112742| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_112661 0)) ((($Memory_112661 (|domain#$Memory_112661| |T@[Int]Bool|) (|contents#$Memory_112661| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_112161 0)) ((($Memory_112161 (|domain#$Memory_112161| |T@[Int]Bool|) (|contents#$Memory_112161| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_148613 0)) ((($Memory_148613 (|domain#$Memory_148613| |T@[Int]Bool|) (|contents#$Memory_148613| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (Seq Int)) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_146906 0)) ((($Memory_146906 (|domain#$Memory_146906| |T@[Int]Bool|) (|contents#$Memory_146906| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_141914 0)) ((($Memory_141914 (|domain#$Memory_141914| |T@[Int]Bool|) (|contents#$Memory_141914| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_112580 0)) ((($Memory_112580 (|domain#$Memory_112580| |T@[Int]Bool|) (|contents#$Memory_112580| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_111627 0)) ((($Memory_111627 (|domain#$Memory_111627| |T@[Int]Bool|) (|contents#$Memory_111627| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_110774 0)) ((($Memory_110774 (|domain#$Memory_110774| |T@[Int]Bool|) (|contents#$Memory_110774| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_109617 0)) ((($Memory_109617 (|domain#$Memory_109617| |T@[Int]Bool|) (|contents#$Memory_109617| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_109124 0)) ((($Memory_109124 (|domain#$Memory_109124| |T@[Int]Bool|) (|contents#$Memory_109124| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_78055 0)) (((Multiset_78055 (|v#Multiset_78055| |T@[$EventRep]Int|) (|l#Multiset_78055| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_78055| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_78055|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_150503 0)) ((($Mutation_150503 (|l#$Mutation_150503| T@$Location) (|p#$Mutation_150503| (Seq Int)) (|v#$Mutation_150503| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_147076 0)) ((($Mutation_147076 (|l#$Mutation_147076| T@$Location) (|p#$Mutation_147076| (Seq Int)) (|v#$Mutation_147076| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_144555 0)) ((($Mutation_144555 (|l#$Mutation_144555| T@$Location) (|p#$Mutation_144555| (Seq Int)) (|v#$Mutation_144555| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_144511 0)) ((($Mutation_144511 (|l#$Mutation_144511| T@$Location) (|p#$Mutation_144511| (Seq Int)) (|v#$Mutation_144511| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_137675 0)) ((($Mutation_137675 (|l#$Mutation_137675| T@$Location) (|p#$Mutation_137675| (Seq Int)) (|v#$Mutation_137675| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_34963 0)) ((($Mutation_34963 (|l#$Mutation_34963| T@$Location) (|p#$Mutation_34963| (Seq Int)) (|v#$Mutation_34963| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_129200 0)) ((($Mutation_129200 (|l#$Mutation_129200| T@$Location) (|p#$Mutation_129200| (Seq Int)) (|v#$Mutation_129200| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_116887 0)) ((($Mutation_116887 (|l#$Mutation_116887| T@$Location) (|p#$Mutation_116887| (Seq Int)) (|v#$Mutation_116887| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_103000 0)) ((($Mutation_103000 (|l#$Mutation_103000| T@$Location) (|p#$Mutation_103000| (Seq Int)) (|v#$Mutation_103000| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_98368 0)) ((($Mutation_98368 (|l#$Mutation_98368| T@$Location) (|p#$Mutation_98368| (Seq Int)) (|v#$Mutation_98368| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_97622 0)) ((($Mutation_97622 (|l#$Mutation_97622| T@$Location) (|p#$Mutation_97622| (Seq Int)) (|v#$Mutation_97622| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_96182 0)) ((($Mutation_96182 (|l#$Mutation_96182| T@$Location) (|p#$Mutation_96182| (Seq Int)) (|v#$Mutation_96182| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_95436 0)) ((($Mutation_95436 (|l#$Mutation_95436| T@$Location) (|p#$Mutation_95436| (Seq Int)) (|v#$Mutation_95436| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_93996 0)) ((($Mutation_93996 (|l#$Mutation_93996| T@$Location) (|p#$Mutation_93996| (Seq Int)) (|v#$Mutation_93996| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_93250 0)) ((($Mutation_93250 (|l#$Mutation_93250| T@$Location) (|p#$Mutation_93250| (Seq Int)) (|v#$Mutation_93250| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_91810 0)) ((($Mutation_91810 (|l#$Mutation_91810| T@$Location) (|p#$Mutation_91810| (Seq Int)) (|v#$Mutation_91810| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_91064 0)) ((($Mutation_91064 (|l#$Mutation_91064| T@$Location) (|p#$Mutation_91064| (Seq Int)) (|v#$Mutation_91064| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_89624 0)) ((($Mutation_89624 (|l#$Mutation_89624| T@$Location) (|p#$Mutation_89624| (Seq Int)) (|v#$Mutation_89624| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_88878 0)) ((($Mutation_88878 (|l#$Mutation_88878| T@$Location) (|p#$Mutation_88878| (Seq Int)) (|v#$Mutation_88878| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_87438 0)) ((($Mutation_87438 (|l#$Mutation_87438| T@$Location) (|p#$Mutation_87438| (Seq Int)) (|v#$Mutation_87438| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_86692 0)) ((($Mutation_86692 (|l#$Mutation_86692| T@$Location) (|p#$Mutation_86692| (Seq Int)) (|v#$Mutation_86692| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_85252 0)) ((($Mutation_85252 (|l#$Mutation_85252| T@$Location) (|p#$Mutation_85252| (Seq Int)) (|v#$Mutation_85252| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_84506 0)) ((($Mutation_84506 (|l#$Mutation_84506| T@$Location) (|p#$Mutation_84506| (Seq Int)) (|v#$Mutation_84506| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_83066 0)) ((($Mutation_83066 (|l#$Mutation_83066| T@$Location) (|p#$Mutation_83066| (Seq Int)) (|v#$Mutation_83066| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_82320 0)) ((($Mutation_82320 (|l#$Mutation_82320| T@$Location) (|p#$Mutation_82320| (Seq Int)) (|v#$Mutation_82320| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_80842 0)) ((($Mutation_80842 (|l#$Mutation_80842| T@$Location) (|p#$Mutation_80842| (Seq Int)) (|v#$Mutation_80842| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_80096 0)) ((($Mutation_80096 (|l#$Mutation_80096| T@$Location) (|p#$Mutation_80096| (Seq Int)) (|v#$Mutation_80096| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_78055_| (|T@[$1_Event_EventHandle]Multiset_78055| T@$1_Event_EventHandle) T@Multiset_78055)
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
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnEvent'| (T@$1_Diem_BurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CancelBurnEvent'| (T@$1_Diem_CancelBurnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| (|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| (|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_CurrencyInfo'#0''| (|T@$1_Diem_CurrencyInfo'#0'|) Bool)
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
(declare-fun |$IsValid'$1_DiemAccount_Balance'#0''| (|T@$1_DiemAccount_Balance'#0'|) Bool)
(declare-fun |$IsValid'$1_DiemAccount_CreateAccountEvent'| (T@$1_DiemAccount_CreateAccountEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_DiemWriteSetManager'| (T@$1_DiemAccount_DiemWriteSetManager) Bool)
(declare-fun |$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| (T@$1_DiemAccount_ReceivedPaymentEvent) Bool)
(declare-fun |$IsValid'$1_DiemAccount_SentPaymentEvent'| (T@$1_DiemAccount_SentPaymentEvent) Bool)
(declare-fun $1_Authenticator_spec_ed25519_authentication_key ((Seq Int)) (Seq Int))
(declare-fun |$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| (T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) Bool)
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_13287 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_71202 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_70020 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_70217 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_70414 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_71399 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_70808 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_70611 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_71005 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_69823 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_78055| |T@[$1_Event_EventHandle]Multiset_78055|) |T@[$1_Event_EventHandle]Multiset_78055|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |AccountAdministrationScriptsandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |AccountAdministrationScriptsandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |AccountAdministrationScriptsandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |AccountAdministrationScriptsandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |AccountAdministrationScriptsandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |AccountAdministrationScriptsandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |AccountAdministrationScriptsandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |AccountAdministrationScriptsandybpl.590:13|
 :skolemid |15|
))))
 :qid |AccountAdministrationScriptsandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |AccountAdministrationScriptsandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |AccountAdministrationScriptsandybpl.603:17|
 :skolemid |18|
)))))
 :qid |AccountAdministrationScriptsandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |AccountAdministrationScriptsandybpl.770:13|
 :skolemid |20|
))))
 :qid |AccountAdministrationScriptsandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |AccountAdministrationScriptsandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |AccountAdministrationScriptsandybpl.783:17|
 :skolemid |23|
)))))
 :qid |AccountAdministrationScriptsandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |AccountAdministrationScriptsandybpl.950:13|
 :skolemid |25|
))))
 :qid |AccountAdministrationScriptsandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |AccountAdministrationScriptsandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |AccountAdministrationScriptsandybpl.963:17|
 :skolemid |28|
)))))
 :qid |AccountAdministrationScriptsandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |AccountAdministrationScriptsandybpl.1130:13|
 :skolemid |30|
))))
 :qid |AccountAdministrationScriptsandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |AccountAdministrationScriptsandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |AccountAdministrationScriptsandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |AccountAdministrationScriptsandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |AccountAdministrationScriptsandybpl.1310:13|
 :skolemid |35|
))))
 :qid |AccountAdministrationScriptsandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountAdministrationScriptsandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountAdministrationScriptsandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |AccountAdministrationScriptsandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |AccountAdministrationScriptsandybpl.1490:13|
 :skolemid |40|
))))
 :qid |AccountAdministrationScriptsandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountAdministrationScriptsandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountAdministrationScriptsandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |AccountAdministrationScriptsandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@16 i@@18)))
 :qid |AccountAdministrationScriptsandybpl.1670:13|
 :skolemid |45|
))))
 :qid |AccountAdministrationScriptsandybpl.1668:50|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_VASPDomain_VASPDomain)) (e@@5 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@19 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountAdministrationScriptsandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountAdministrationScriptsandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |AccountAdministrationScriptsandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |AccountAdministrationScriptsandybpl.1850:13|
 :skolemid |50|
))))
 :qid |AccountAdministrationScriptsandybpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountAdministrationScriptsandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountAdministrationScriptsandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |AccountAdministrationScriptsandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |AccountAdministrationScriptsandybpl.2030:13|
 :skolemid |55|
))))
 :qid |AccountAdministrationScriptsandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |AccountAdministrationScriptsandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |AccountAdministrationScriptsandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |AccountAdministrationScriptsandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |AccountAdministrationScriptsandybpl.2210:13|
 :skolemid |60|
))))
 :qid |AccountAdministrationScriptsandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |AccountAdministrationScriptsandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |AccountAdministrationScriptsandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |AccountAdministrationScriptsandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |AccountAdministrationScriptsandybpl.2390:13|
 :skolemid |65|
))))
 :qid |AccountAdministrationScriptsandybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |AccountAdministrationScriptsandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |AccountAdministrationScriptsandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |AccountAdministrationScriptsandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountAdministrationScriptsandybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountAdministrationScriptsandybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountAdministrationScriptsandybpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountAdministrationScriptsandybpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_78055| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream) v@@26) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountAdministrationScriptsandybpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |AccountAdministrationScriptsandybpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountAdministrationScriptsandybpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |AccountAdministrationScriptsandybpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountAdministrationScriptsandybpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |AccountAdministrationScriptsandybpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountAdministrationScriptsandybpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |AccountAdministrationScriptsandybpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountAdministrationScriptsandybpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |AccountAdministrationScriptsandybpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountAdministrationScriptsandybpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |AccountAdministrationScriptsandybpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountAdministrationScriptsandybpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |AccountAdministrationScriptsandybpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountAdministrationScriptsandybpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |AccountAdministrationScriptsandybpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountAdministrationScriptsandybpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |AccountAdministrationScriptsandybpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountAdministrationScriptsandybpl.3263:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |AccountAdministrationScriptsandybpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountAdministrationScriptsandybpl.3319:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |AccountAdministrationScriptsandybpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountAdministrationScriptsandybpl.3375:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |AccountAdministrationScriptsandybpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountAdministrationScriptsandybpl.3431:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |AccountAdministrationScriptsandybpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountAdministrationScriptsandybpl.3487:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |AccountAdministrationScriptsandybpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountAdministrationScriptsandybpl.3543:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |AccountAdministrationScriptsandybpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountAdministrationScriptsandybpl.3599:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |AccountAdministrationScriptsandybpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountAdministrationScriptsandybpl.3655:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |AccountAdministrationScriptsandybpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |AccountAdministrationScriptsandybpl.3745:61|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |AccountAdministrationScriptsandybpl.3952:36|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |AccountAdministrationScriptsandybpl.4407:71|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |AccountAdministrationScriptsandybpl.4549:46|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |AccountAdministrationScriptsandybpl.4562:64|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |AccountAdministrationScriptsandybpl.4575:75|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |AccountAdministrationScriptsandybpl.4588:72|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |AccountAdministrationScriptsandybpl.4617:55|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |AccountAdministrationScriptsandybpl.4639:46|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((account Int) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountAdministrationScriptsandybpl.4650:15|
 :skolemid |119|
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |AccountAdministrationScriptsandybpl.4663:49|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |AccountAdministrationScriptsandybpl.4879:71|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |AccountAdministrationScriptsandybpl.4893:91|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |AccountAdministrationScriptsandybpl.4907:113|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |AccountAdministrationScriptsandybpl.4921:75|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |AccountAdministrationScriptsandybpl.4935:73|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |AccountAdministrationScriptsandybpl.4955:48|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |AccountAdministrationScriptsandybpl.4971:57|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |AccountAdministrationScriptsandybpl.4985:83|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |AccountAdministrationScriptsandybpl.4999:103|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |AccountAdministrationScriptsandybpl.5013:125|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |AccountAdministrationScriptsandybpl.5027:87|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |AccountAdministrationScriptsandybpl.5041:85|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |AccountAdministrationScriptsandybpl.5055:48|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |AccountAdministrationScriptsandybpl.5076:45|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |AccountAdministrationScriptsandybpl.5090:51|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |AccountAdministrationScriptsandybpl.5113:48|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |AccountAdministrationScriptsandybpl.5419:49|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |AccountAdministrationScriptsandybpl.5432:65|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |AccountAdministrationScriptsandybpl.5941:45|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |AccountAdministrationScriptsandybpl.5954:45|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@29)))
 :qid |AccountAdministrationScriptsandybpl.5967:37|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |AccountAdministrationScriptsandybpl.5980:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |AccountAdministrationScriptsandybpl.5994:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |AccountAdministrationScriptsandybpl.6014:38|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |AccountAdministrationScriptsandybpl.6035:44|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |AccountAdministrationScriptsandybpl.6086:53|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |AccountAdministrationScriptsandybpl.6148:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@36))))
 :qid |AccountAdministrationScriptsandybpl.6210:45|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |AccountAdministrationScriptsandybpl.6236:55|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |AccountAdministrationScriptsandybpl.6250:55|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |AccountAdministrationScriptsandybpl.6267:38|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |AccountAdministrationScriptsandybpl.6281:48|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |AccountAdministrationScriptsandybpl.6295:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |AccountAdministrationScriptsandybpl.6315:41|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@43)))
 :qid |AccountAdministrationScriptsandybpl.6330:53|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@44)))
 :qid |AccountAdministrationScriptsandybpl.6344:53|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45))))
 :qid |AccountAdministrationScriptsandybpl.6361:60|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46))))
 :qid |AccountAdministrationScriptsandybpl.6378:60|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |AccountAdministrationScriptsandybpl.6395:57|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |AccountAdministrationScriptsandybpl.8666:68|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |AccountAdministrationScriptsandybpl.8688:66|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |AccountAdministrationScriptsandybpl.8714:66|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@51) true)
 :qid |AccountAdministrationScriptsandybpl.9047:31|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@51))
)))
(assert (forall ((s@@52 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@52) true)
 :qid |AccountAdministrationScriptsandybpl.9391:31|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@53)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@53)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@53))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@53))))
 :qid |AccountAdministrationScriptsandybpl.9410:35|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@54) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@54)))
 :qid |AccountAdministrationScriptsandybpl.9836:45|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@55)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@55))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@55))))
 :qid |AccountAdministrationScriptsandybpl.9855:50|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@56) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@56)))
 :qid |AccountAdministrationScriptsandybpl.9870:52|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@57) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@57)))
 :qid |AccountAdministrationScriptsandybpl.9884:46|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |AccountAdministrationScriptsandybpl.10106:38|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |AccountAdministrationScriptsandybpl.10120:39|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |AccountAdministrationScriptsandybpl.10147:65|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |AccountAdministrationScriptsandybpl.10532:60|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |AccountAdministrationScriptsandybpl.10549:66|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |AccountAdministrationScriptsandybpl.10578:50|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |AccountAdministrationScriptsandybpl.10597:45|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |AccountAdministrationScriptsandybpl.11457:87|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |AccountAdministrationScriptsandybpl.11669:47|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |AccountAdministrationScriptsandybpl.11689:58|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |AccountAdministrationScriptsandybpl.11704:39|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |AccountAdministrationScriptsandybpl.11731:58|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |AccountAdministrationScriptsandybpl.11748:58|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |AccountAdministrationScriptsandybpl.11763:51|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |AccountAdministrationScriptsandybpl.11780:60|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |AccountAdministrationScriptsandybpl.12093:47|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |AccountAdministrationScriptsandybpl.12115:63|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |AccountAdministrationScriptsandybpl.12130:57|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@76) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@76)))
 :qid |AccountAdministrationScriptsandybpl.12143:47|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@77)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@77)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@77))))
 :qid |AccountAdministrationScriptsandybpl.12160:54|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@78) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@78)))
 :qid |AccountAdministrationScriptsandybpl.12174:55|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@79) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@79)))
 :qid |AccountAdministrationScriptsandybpl.12188:57|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@80)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@80)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@80))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@80))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@80))))
 :qid |AccountAdministrationScriptsandybpl.12210:56|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@81))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@81))))
 :qid |AccountAdministrationScriptsandybpl.12235:52|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@82) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@82)))
 :qid |AccountAdministrationScriptsandybpl.12251:54|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@82))
)))
(assert (forall ((public_key (Seq Int)) ) (! (let (($$res@@0 ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountAdministrationScriptsandybpl.13430:15|
 :skolemid |195|
)))
(assert (forall ((s@@83 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@83)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@83)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@83))))
 :qid |AccountAdministrationScriptsandybpl.13448:69|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@83))
)))
(assert (forall ((s@@84 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@84) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@84)))
 :qid |AccountAdministrationScriptsandybpl.14010:55|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |AccountAdministrationScriptsandybpl.17365:47|
 :skolemid |314|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |AccountAdministrationScriptsandybpl.17389:47|
 :skolemid |315|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@87)))
 :qid |AccountAdministrationScriptsandybpl.17630:49|
 :skolemid |316|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@88)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@88))))
 :qid |AccountAdministrationScriptsandybpl.17673:49|
 :skolemid |317|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@89)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@89))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@89))))
 :qid |AccountAdministrationScriptsandybpl.17702:48|
 :skolemid |318|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@90)))
 :qid |AccountAdministrationScriptsandybpl.17997:47|
 :skolemid |319|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_71202 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_71202 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_70020 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_70020 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_70217 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_70217 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_70414 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_70414 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_71399 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_71399 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_70808 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_70808 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_70611 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_70611 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@8 (ReverseVec_71005 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_71005 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_69823 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_69823 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |AccountAdministrationScriptsandybpl.245:54|
 :skolemid |376|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_78055|) (|l#1| |T@[$1_Event_EventHandle]Multiset_78055|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_78055| (|Select__T@[$1_Event_EventHandle]Multiset_78055_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_78055| (|Select__T@[$1_Event_EventHandle]Multiset_78055_| |l#1| handle@@0))))
(Multiset_78055 (|lambda#3| (|v#Multiset_78055| (|Select__T@[$1_Event_EventHandle]Multiset_78055_| |l#0@@0| handle@@0)) (|v#Multiset_78055| (|Select__T@[$1_Event_EventHandle]Multiset_78055_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountAdministrationScriptsandybpl.2728:13|
 :skolemid |377|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |AccountAdministrationScriptsandybpl.124:29|
 :skolemid |378|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_141914)
(declare-fun $t5 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun _$t0 () Int)
(declare-fun $t4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t1 () (Seq Int))
(declare-fun $t8@0 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5 () T@$Memory_141914)
(declare-fun $t3 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_141914)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_141914)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t1@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_141914)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_141914)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_141914)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 () T@$Mutation_144511)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_109617)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_140960)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_143000)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_109124)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t6 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 273258) (let ((L2_correct  (and (=> (= (ControlFlow 0 183289) (- 0 275836)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t5)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (not (= (seq.len _$t1) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t5)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (not (= (seq.len _$t1) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0)) (=> (= (ControlFlow 0 183289) (- 0 275881)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t5)) (= 5 $t8@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0) (= 1 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4))) (= 5 $t8@0))) (and (not (= (seq.len _$t1) 32)) (= 7 $t8@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0) (= 1 $t8@0))) (= 1 $t8@0)) (= 7 $t8@0)))))))
(let ((anon10_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= $t8@0 $abort_code@8) (= (ControlFlow 0 183121) 183289))) L2_correct)))
(let ((anon9_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= $t8@0 $abort_code@6) (= (ControlFlow 0 183303) 183289))) L2_correct)))
(let ((anon8_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t8@0 $abort_code@4) (= (ControlFlow 0 183317) 183289))) L2_correct)))
(let ((anon10_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 183107) (- 0 275749)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t5))) (and (=> (= (ControlFlow 0 183107) (- 0 275761)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0)) (and (=> (= (ControlFlow 0 183107) (- 0 275772)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (and (=> (= (ControlFlow 0 183107) (- 0 275786)) (not (not (= (seq.len _$t1) 32)))) (=> (not (not (= (seq.len _$t1) 32))) (and (=> (= (ControlFlow 0 183107) (- 0 275800)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0)))) 0)) (=> (= (ControlFlow 0 183107) (- 0 275811)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@5) $t3)) _$t1)))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1) (|p#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)) (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)))) (= $abort_code@8 $abort_code@7)) (and (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@4) (= $abort_flag@7 $abort_flag@6)))) (and (=> (= (ControlFlow 0 182909) 183121) anon10_Then_correct) (=> (= (ControlFlow 0 182909) 183107) anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct  (=> (= $abort_code@8 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1) (=> (and (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@3) (= $abort_flag@7 true)) (and (=> (= (ControlFlow 0 182755) 183121) anon10_Then_correct) (=> (= (ControlFlow 0 182755) 183107) anon10_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 182935) 182755))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1))) 0))))) (and (=> (= (ControlFlow 0 182827) 182935) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct) (=> (= (ControlFlow 0 182827) 182909) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 $abort_code@7) (= (ControlFlow 0 182949) 182755))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct  (=> (= $abort_flag@6 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0)) (and (=> (= (ControlFlow 0 183001) 182949) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct) (=> (= (ControlFlow 0 183001) 182827) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1)) (= (ControlFlow 0 182999) 183001)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1 ($Mutation_144511 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1))) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@7 $abort_code@6) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1))) (and (=> (= (ControlFlow 0 182785) 182949) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct) (=> (= (ControlFlow 0 182785) 182827) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1))) (and (=> (= (ControlFlow 0 182763) 182999) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct) (=> (= (ControlFlow 0 182763) 182785) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 182749) 182755))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct  (=> (and (not $abort_flag@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_exists_at$3$$t1@1 inline$$1_DiemAccount_exists_at$3$$t1@1))) (and (=> (= (ControlFlow 0 182733) 182763) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct) (=> (= (ControlFlow 0 182733) 182749) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 $abort_code@6) (= (ControlFlow 0 183015) 182755))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1)) (= inline$$1_DiemAccount_exists_at$3$$t1@1 inline$$1_DiemAccount_exists_at$3$$t1@1)) (and (=> (= (ControlFlow 0 182691) 183015) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 182691) 182733) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t1@0)) 0) (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 182697) 182691))) inline$$1_DiemAccount_exists_at$3$anon0_correct))))
(let ((anon9_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 183019) 182697)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 ($Mutation_98368 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 ($Mutation_98368 (|l#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) _$t1)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)))) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@2)) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)))) (and (=> (= (ControlFlow 0 181996) 183303) anon9_Then_correct) (=> (= (ControlFlow 0 181996) 183019) anon9_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct  (=> (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@1) (=> (and (= $abort_code@6 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 181792) 183303) anon9_Then_correct) (=> (= (ControlFlow 0 181792) 183019) anon9_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= (ControlFlow 0 181946) 181792))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct  (=> (and (and (and (not $abort_flag@4) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= |inline$$1_Vector_length'u8'$0$l@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1)))) (and (=> (= (ControlFlow 0 181930) 181996) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct) (=> (= (ControlFlow 0 181930) 181946) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 182010) 181792))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t1)) (and (=> (= (ControlFlow 0 181872) 182010) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct) (=> (= (ControlFlow 0 181872) 181930) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct  (=> (and (and (not $abort_flag@4) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= (ControlFlow 0 181878) 181872))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 182024) 181792))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) (and (=> (= (ControlFlow 0 182076) 182024) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 182076) 181878) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1)) (= (ControlFlow 0 182074) 182076)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 ($Mutation_144511 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1))) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1))) (and (=> (= (ControlFlow 0 181822) 182024) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 181822) 181878) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1))) (and (=> (= (ControlFlow 0 181800) 182074) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct) (=> (= (ControlFlow 0 181800) 181822) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= (ControlFlow 0 181786) 181792))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 181770) 181800) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct) (=> (= (ControlFlow 0 181770) 181786) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 182090) 181792))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 181728) 182090) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct) (=> (= (ControlFlow 0 181728) 181770) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0)) 0) (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) 0) (= (seq.len (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= _$t1 _$t1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 181734) 181728))) inline$$1_DiemAccount_exists_at$2$anon0_correct)))))
(let ((anon8_Else_correct  (=> (not $abort_flag@3) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= (ControlFlow 0 182094) 181734)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0))) (and (and (= $abort_code@4 $abort_code@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0)) (and (= $abort_flag@3 $abort_flag@2) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0)))) (and (=> (= (ControlFlow 0 180932) 183317) anon8_Then_correct) (=> (= (ControlFlow 0 180932) 182094) anon8_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct  (=> (and (and (= $abort_code@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0)) (and (= $abort_flag@3 true) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 180609) 183317) anon8_Then_correct) (=> (= (ControlFlow 0 180609) 182094) anon8_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0) (= (ControlFlow 0 180958) 180609))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0)))) (and (=> (= (ControlFlow 0 180840) 180958) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 180840) 180932) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@3) (= (ControlFlow 0 180972) 180609))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 181024) 180972) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 181024) 180840) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 181022) 181024)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 ($Mutation_144511 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 180794) 180972) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 180794) 180840) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct  (=> inline$$1_DiemAccount_exists_at$1$$t1@1 (and (=> (= (ControlFlow 0 180772) 181022) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 180772) 180794) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= (ControlFlow 0 180768) 180609))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 180752) 180772) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 180752) 180768) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 181038) 180609))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 180710) 181038) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct) (=> (= (ControlFlow 0 180710) 180752) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 180716) 180710)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= (ControlFlow 0 180603) 180609))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 180587) 180716) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct) (=> (= (ControlFlow 0 180587) 180603) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 180547) 180587)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 180553) 180547)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 181052) 180609))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0))) (and (=> (= (ControlFlow 0 180423) 181052) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 180423) 180553) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct  (=> (= $abort_code@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1) (=> (and (= $abort_flag@1 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 180371) 181052) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 180371) 180553) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 $abort_code@1) (= (ControlFlow 0 180437) 180371))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0)) (and (=> (= (ControlFlow 0 180489) 180437) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 180489) 180423) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 180487) 180489)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 180389) 180437) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 180389) 180423) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 180375) 180487) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct) (=> (= (ControlFlow 0 180375) 180389) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 180365) 180371))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 180349) 180375) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct) (=> (= (ControlFlow 0 180349) 180365) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 180307) 180503) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct) (=> (= (ControlFlow 0 180307) 180349) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 180313) 180307)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0)) 0) (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 _$t0) (= _$t0 _$t0))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 _$t0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 180509) 180313)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct))))
(let ((anon0$1_correct  (=> (and (and (and (and (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr)))) 0)) (= addr (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15122:20|
 :skolemid |203|
)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@0) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@0) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)) (= addr@@0 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@0))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15126:20|
 :skolemid |204|
))) (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@1)))
 :qid |AccountAdministrationScriptsandybpl.15130:20|
 :skolemid |205|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@2)))
 :qid |AccountAdministrationScriptsandybpl.15134:20|
 :skolemid |206|
)))) (and (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@3)))
 :qid |AccountAdministrationScriptsandybpl.15138:20|
 :skolemid |207|
)) (|$IsValid'address'| _$t0)) (and (|$IsValid'vec'u8''| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc))) 1))))
 :qid |AccountAdministrationScriptsandybpl.15147:20|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0))
))))) (and (and (and (= $t3 _$t0) (= $t4 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3))) 0))) (and (= $t5 _$t0) (let ((addr@@4 _$t0))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@4)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@4) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@4)))))))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t6 _$t0) (= (ControlFlow 0 181058) 180509))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct)))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_78055| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@0) v@@38) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 178955) 181058)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 273258) 178955) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17 () Bool)
(declare-fun _$t0@@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_118334)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_143000)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@15 () Int)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_143000)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_143000)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_143000)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| () |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@13 () Int)
(declare-fun $abort_flag@15 () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t3@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@12 () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@7@@0 () Bool)
(declare-fun $abort_code@6@@0 () Int)
(declare-fun $abort_flag@3@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@13 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@8@@0 () Int)
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
(declare-fun $abort_code@7@@0 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@6@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4@@0 () Bool)
(declare-fun $abort_code@4@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t3@1 () Bool)
(declare-fun $abort_code@5@@0 () Int)
(declare-fun $abort_flag@5@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t3@1 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@0 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_110774)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_111627)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_123334)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_123421)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_118614)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_118701)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_123912)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_123594)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_124011)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_123685)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_136293)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_140712)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 276173) (let ((anon4_Else_correct  (=> (not $abort_flag@17) (and (=> (= (ControlFlow 0 188222) (- 0 279342)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 188222) (- 0 279353)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 188222) (- 0 279363)) (not (not (or (or (let ((addr@@5 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@5)) 5))) (let ((addr@@6 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@6)) 6)))) (let ((addr@@7 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@7)) 2))))))) (=> (not (not (or (or (let ((addr@@8 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@8)) 5))) (let ((addr@@9 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@9)) 6)))) (let ((addr@@10 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@10)) 2)))))) (and (=> (= (ControlFlow 0 188222) (- 0 279374)) (not (not (or (or (let ((addr@@11 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@11)) 5))) (let ((addr@@12 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@12)) 6)))) (let ((addr@@13 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@13)) 2))))))) (=> (not (not (or (or (let ((addr@@14 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@14)) 5))) (let ((addr@@15 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@15)) 6)))) (let ((addr@@16 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@16)) 2)))))) (and (=> (= (ControlFlow 0 188222) (- 0 279385)) (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t0@@0) (=> (= (ControlFlow 0 188222) (- 0 279394)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t0@@0) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))))))))))))))))
(let ((anon4_Then_correct  (=> (and $abort_flag@17 (= $abort_code@15 $abort_code@15)) (and (=> (= (ControlFlow 0 188370) (- 0 279221)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (or (or (let ((addr@@17 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@17)) 5))) (let ((addr@@18 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@18)) 6)))) (let ((addr@@19 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@19)) 2)))))) (not (or (or (let ((addr@@20 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@20)) 5))) (let ((addr@@21 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@21)) 6)))) (let ((addr@@22 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@22)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (or (or (let ((addr@@23 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@23)) 5))) (let ((addr@@24 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@24)) 6)))) (let ((addr@@25 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@25)) 2)))))) (not (or (or (let ((addr@@26 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@26)) 5))) (let ((addr@@27 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@27)) 6)))) (let ((addr@@28 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@28)) 2)))))) (=> (= (ControlFlow 0 188370) (- 0 279250)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0) (= 6 $abort_code@15)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $abort_code@15))) (and (not (or (or (let ((addr@@29 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@29)) 5))) (let ((addr@@30 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@30)) 6)))) (let ((addr@@31 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@31)) 2))))) (= 7 $abort_code@15))) (and (not (or (or (let ((addr@@32 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@32)) 5))) (let ((addr@@33 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@33)) 6)))) (let ((addr@@34 _$t0@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@34)) 2))))) (= 7 $abort_code@15))) (= 5 $abort_code@15)) (= 7 $abort_code@15)) (= 6 $abort_code@15))))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16) (= $abort_code@15 $abort_code@14)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@17 $abort_flag@16))) (and (=> (= (ControlFlow 0 188002) 188370) anon4_Then_correct) (=> (= (ControlFlow 0 188002) 188222) anon4_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@15 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@17 true)) (and (=> (= (ControlFlow 0 185091) 188370) anon4_Then_correct) (=> (= (ControlFlow 0 185091) 188222) anon4_Else_correct))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@16 (=> (and (and (= $abort_code@14 $abort_code@14) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@14)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 188016) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@14 $EXEC_FAILURE_CODE) (= $abort_flag@16 true)) (and (=> (= (ControlFlow 0 188066) 188016) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 188066) 188002) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0) (= (ControlFlow 0 188064) 188066)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0)) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_143000 (|Store__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0 true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) _$t0@@0 |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@14 $abort_code@13) (= $abort_flag@16 $abort_flag@15))) (and (=> (= (ControlFlow 0 187992) 188016) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 187992) 188002) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 187974) 188064) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 187974) 187992) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@15 (=> (and (and (= $abort_code@13 $abort_code@13) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@13)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 188080) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@15 $abort_flag@14)) (and (= $abort_code@13 $abort_code@12) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 187926) 188080) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 187926) 187974) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@15 true)) (and (= $abort_code@13 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 187956) 188080) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 187956) 187974) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 187898) 187956) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 187898) 187926) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 187962) 187898)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 187745) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 187729) 187962) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 187729) 187745) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1|)) (= (ControlFlow 0 187693) 187729)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= (ControlFlow 0 187699) 187693)) inline$$Not$0$anon0_correct@@0))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 187653) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 187637) 187699) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 187637) 187653) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@14 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@12)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 188094) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@14 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@12 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 187527) 188094) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 187527) 187637) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 187521) 187527))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@7@@0 (= $abort_code@6@@0 $abort_code@6@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@6@@0) (= (ControlFlow 0 187559) 187527))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@3@@0) (= (ControlFlow 0 187591) 187527))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@14 $abort_flag@13)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@12 $abort_code@11))) (and (=> (= (ControlFlow 0 187507) 188094) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 187507) 187637) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@12) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@11 $abort_code@10)) (and (= $abort_flag@13 $abort_flag@12) (= (ControlFlow 0 187495) 187507))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 187453) 187521) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 187453) 187495) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 187471) 187521) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 187471) 187495) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@8@@0 $abort_code@8@@0) (= $abort_flag@11 true)) (and (= $abort_code@10 $abort_code@8@@0) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 187377) 187471) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 187377) 187453) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t3@1) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t3@1))) (and (=> (= (ControlFlow 0 187313) 187471) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 187313) 187453) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$2$$t3@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@9 $abort_code@8@@0) (= (ControlFlow 0 187359) 187313)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@8@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 187429) 187377) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 187429) 187359) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 187427) 187429)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@8@@0 $abort_code@7@@0)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 187331) 187377) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 187331) 187359) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 187317) 187427) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 187317) 187331) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@10 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t3@1 false)) (and (= $abort_code@9 $abort_code@7@@0) (= (ControlFlow 0 187301) 187313))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 _$t0@@0)) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 187281) 187317) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 187281) 187301) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 187435) 187281)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 187477) 187435)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@11 $abort_code@7@@0)) (and (= $abort_flag@13 $abort_flag@8) (= (ControlFlow 0 187545) 187507))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@7@@0) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@8 $abort_flag@7@@0) (= $abort_code@7@@0 $abort_code@6@@0))) (and (=> (= (ControlFlow 0 186795) 187545) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 186795) 187477) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6@@0) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@7@@0 $abort_flag@6@@0))) (and (=> (= (ControlFlow 0 186753) 187559) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 186753) 186795) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6@@0 (= $abort_code@6@@0 $abort_code@6@@0)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@7@@0 true))) (and (=> (= (ControlFlow 0 186771) 187559) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 186771) 186795) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@4@@0 (=> (and (and (= $abort_code@4@@0 $abort_code@4@@0) (= $abort_code@6@@0 $abort_code@4@@0)) (and (= $abort_flag@6@@0 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 186677) 186771) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 186677) 186753) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t3@1) (= $abort_code@6@@0 $abort_code@5@@0)) (and (= $abort_flag@6@@0 $abort_flag@5@@0) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t3@1))) (and (=> (= (ControlFlow 0 186613) 186771) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 186613) 186753) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4@@0) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@5@@0 $abort_code@4@@0) (= inline$$1_Roles_has_role$1$$t3@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@5@@0 $abort_flag@4@@0) (= (ControlFlow 0 186659) 186613)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@4@@0 true) (=> (and (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 186729) 186677) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 186729) 186659) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 186727) 186729)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@4@@0 $abort_flag@3@@0)) (and (= $abort_code@4@@0 $abort_code@3@@0) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 186631) 186677) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 186631) 186659) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 186617) 186727) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 186617) 186631) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@5@@0 $abort_code@3@@0) (= inline$$1_Roles_has_role$1$$t3@1 false)) (and (= $abort_flag@5@@0 $abort_flag@3@@0) (= (ControlFlow 0 186601) 186613))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 _$t0@@0)) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 186581) 186617) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 186581) 186601) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 186735) 186581)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 186777) 186735)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@8 $abort_flag@3@@0) (= $abort_code@7@@0 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 187577) 187545) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 187577) 187477) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@3@@0) (and (=> (= (ControlFlow 0 186097) 187577) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 186097) 186777) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3@@0 $abort_flag@2@@0))) (and (=> (= (ControlFlow 0 186065) 187591) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 186065) 186097) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@3@@0 true))) (and (=> (= (ControlFlow 0 186083) 187591) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 186083) 186097) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= $abort_code@3@@0 $abort_code@1@@0)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 185989) 186083) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 185989) 186065) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t3@1) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t3@1))) (and (=> (= (ControlFlow 0 185925) 186083) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 185925) 186065) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@0) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2@@0 $abort_code@1@@0) (= inline$$1_Roles_has_role$0$$t3@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1@@0 $abort_flag@0@@0) (= (ControlFlow 0 185971) 185925)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 186041) 185989) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 186041) 185971) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 186039) 186041)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 185943) 185989) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 185943) 185971) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 185929) 186039) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 185929) 185943) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@0) (= inline$$1_Roles_has_role$0$$t3@1 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 185913) 185925))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 _$t0@@0)) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 185893) 185929) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 185893) 185913) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 186047) 185893)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 186089) 186047)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (= (ControlFlow 0 187597) 186089)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 185085) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 185069) 187597) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 185069) 185085) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 188134) 185091))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@0  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 185027) 188108) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 185027) 185069) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= (ControlFlow 0 185033) 185027)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| _$t0@@0)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 184922) 188134) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 184922) 185033) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@0  (=> (and (and (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110774| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@35) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |AccountAdministrationScriptsandybpl.15289:20|
 :skolemid |209|
)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@36) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@36)) 3))))
 :qid |AccountAdministrationScriptsandybpl.15293:20|
 :skolemid |210|
))) (and (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@37) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |AccountAdministrationScriptsandybpl.15297:20|
 :skolemid |211|
)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@38) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@38)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@38)) 3))))
 :qid |AccountAdministrationScriptsandybpl.15301:20|
 :skolemid |212|
)))) (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123334| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15305:21|
 :skolemid |213|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123421| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15305:268|
 :skolemid |214|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118614| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15309:21|
 :skolemid |215|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118701| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15309:231|
 :skolemid |216|
)))) (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_123912| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_123594| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |AccountAdministrationScriptsandybpl.15313:21|
 :skolemid |217|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_124011| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_123685| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |AccountAdministrationScriptsandybpl.15313:292|
 :skolemid |218|
))) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136293| $1_DualAttestation_Credential_$memory) addr1@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@3)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.15321:20|
 :skolemid |219|
)))) (=> (and (and (and (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@39) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@39)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@39)))) 0)) (= addr@@39 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@39))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15325:20|
 :skolemid |220|
)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@40) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@40) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@40)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@40)))) 0)) (= addr@@40 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@40))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15329:20|
 :skolemid |221|
))) (and (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@41) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@41)))
 :qid |AccountAdministrationScriptsandybpl.15333:20|
 :skolemid |222|
)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@42) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@42)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@42)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@42)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.15337:20|
 :skolemid |223|
)))) (and (and (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140712| $1_DesignatedDealer_Dealer_$memory) addr@@43) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@43)) 2))))
 :qid |AccountAdministrationScriptsandybpl.15341:20|
 :skolemid |224|
)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136293| $1_DualAttestation_Credential_$memory) addr@@44) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@44)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@44)) 5)))))
 :qid |AccountAdministrationScriptsandybpl.15345:20|
 :skolemid |225|
))) (and (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@45)))
 :qid |AccountAdministrationScriptsandybpl.15349:20|
 :skolemid |226|
)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@46)))
 :qid |AccountAdministrationScriptsandybpl.15353:20|
 :skolemid |227|
))))) (and (and (and (|$IsValid'address'| _$t0@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |AccountAdministrationScriptsandybpl.15359:20|
 :skolemid |228|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@1) 10000000000))))
 :qid |AccountAdministrationScriptsandybpl.15363:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_118334| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@2)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@2) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1))))
 :qid |AccountAdministrationScriptsandybpl.15367:20|
 :skolemid |230|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@2))
)))) (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@3))
 :qid |AccountAdministrationScriptsandybpl.15371:20|
 :skolemid |231|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@3))
)) (let ((addr@@47 _$t0@@0))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@47)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@47) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@47))))))) (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 188138) 184922))))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_78055| stream@@1) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@1) v@@39) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 183632) 188138)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 276173) 183632) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_148613)
(declare-fun _$t1@@0 () Int)
(declare-fun |Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int) T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_134871)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_134807)
(declare-fun $t5@@0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $t8@0@@0 () Int)
(declare-fun $abort_flag@5@@1 () Bool)
(declare-fun $abort_code@6@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@0 () T@$Memory_141914)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1 () T@$Memory_148613)
(declare-fun $t3@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3 () T@$Mutation_150503)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 () T@$Mutation_150503)
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| () T@$Mutation_82320)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0 () T@$Memory_148613)
(declare-fun |Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int T@$1_RecoveryAddress_RecoveryAddress) |T@[Int]$1_RecoveryAddress_RecoveryAddress|)
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@5@@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1 () T@$Mutation_82320)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1 () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0 () T@$Mutation_150503)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1 () T@$Mutation_150503)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t2@0 () T@$Mutation_82320)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@0 () T@$Mutation_82320)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t10@0 () Int)
(declare-fun $t9 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@0 () T@$Memory_141914)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0 () T@$Mutation_144511)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@0 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t2 () Int)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_recovery_rotation_capability$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279418) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 192504) (- 0 281756)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@1)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0)))))))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@1)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))))))) (=> (= (ControlFlow 0 192504) (- 0 281804)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= 5 $t8@0@@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@1)))) 0) (= 1 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (= 5 $t8@0@@0))) (and (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256) (= 8 $t8@0@@0))) (and (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0)))))) (= 7 $t8@0@@0))) (= 1 $t8@0@@0)) (= 5 $t8@0@@0)) (= 8 $t8@0@@0)) (= 7 $t8@0@@0)))))))
(let ((anon7_Then_correct  (=> (and (and $abort_flag@5@@1 (= $abort_code@6@@1 $abort_code@6@@1)) (and (= $t8@0@@0 $abort_code@6@@1) (= (ControlFlow 0 192308) 192504))) L2_correct@@0)))
(let ((anon6_Then_correct  (=> (and (and $abort_flag@3@@1 (= $abort_code@4@@1 $abort_code@4@@1)) (and (= $t8@0@@0 $abort_code@4@@1) (= (ControlFlow 0 192518) 192504))) L2_correct@@0)))
(let ((anon7_Else_correct  (=> (not $abort_flag@5@@1) (and (=> (= (ControlFlow 0 192294) (- 0 281650)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 192294) (- 0 281662)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@1)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@1)))) 0)) (and (=> (= (ControlFlow 0 192294) (- 0 281673)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (and (=> (= (ControlFlow 0 192294) (- 0 281684)) (not (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256))) (=> (not (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (and (=> (= (ControlFlow 0 192294) (- 0 281701)) (not (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0)))))))) (=> (not (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $t5@@0))))))) (and (=> (= (ControlFlow 0 192294) (- 0 281715)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@0) _$t0@@1)))) 0)) (=> (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@0) _$t0@@1)))) 0) (=> (= (ControlFlow 0 192294) (- 0 281724)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@1) _$t1@@0)) (- (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@1) _$t1@@0))) 1)) $t3@@0)))))))))))))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Else_correct  (=> (and (not $abort_flag@4@@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3 ($Mutation_150503 (|l#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (|p#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) ($1_RecoveryAddress_RecoveryAddress (|v#$Mutation_82320| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1|))))) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0 ($Memory_148613 (|Store__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) (|a#$Global| (|l#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)) true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) (|a#$Global| (|l#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)) (|v#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)))) (= $abort_code@6@@1 $abort_code@5@@1)) (and (= $abort_flag@5@@1 $abort_flag@4@@1) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory@0))) (and (=> (= (ControlFlow 0 192066) 192308) anon7_Then_correct) (=> (= (ControlFlow 0 192066) 192294) anon7_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct  (=> (= $abort_code@6@@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1) (=> (and (= $abort_flag@5@@1 true) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory)) (and (=> (= (ControlFlow 0 191576) 192308) anon7_Then_correct) (=> (= (ControlFlow 0 191576) 192294) anon7_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Then_correct  (=> (and (and $abort_flag@4@@1 (= $abort_code@5@@1 $abort_code@5@@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@1) (= (ControlFlow 0 192080) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| ($Mutation_82320 (|l#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (|p#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (seq.++ (|v#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (seq.unit inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)))) (and (=> (= (ControlFlow 0 192024) 192080) inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Then_correct) (=> (= (ControlFlow 0 192024) 192066) inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 192030) 192024)) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= (ControlFlow 0 191969) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 8)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 191953) 192030) inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Then_correct) (=> (= (ControlFlow 0 191953) 191969) inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| 256)) (= (ControlFlow 0 191913) 191953)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else$1_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else_correct  (=> (not $abort_flag@4@@1) (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 191919) 191913)) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Then_correct  (=> (and (and $abort_flag@4@@1 (= $abort_code@5@@1 $abort_code@5@@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@1) (= (ControlFlow 0 192094) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((|inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| (seq.len inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1)) (and (=> (= (ControlFlow 0 191853) 192094) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Then_correct) (=> (= (ControlFlow 0 191853) 191919) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct  (=> (and (not $abort_flag@4@@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1 ($Mutation_82320 (|l#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (seq.++ (|p#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (seq.unit 0)) (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|v#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2))))) (=> (and (and (= |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| (|v#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1)) (= |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1|)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1 (|v#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1)) (= (ControlFlow 0 191859) 191853))) |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct  (=> (and (and $abort_flag@4@@1 (= $abort_code@5@@1 $abort_code@5@@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@1) (= (ControlFlow 0 192108) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then$1_correct  (=> (= $abort_flag@4@@1 true) (=> (and (= $abort_code@5@@1 $EXEC_FAILURE_CODE) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0)) (and (=> (= (ControlFlow 0 192160) 192108) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct) (=> (= (ControlFlow 0 192160) 191859) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (= (ControlFlow 0 192158) 192160)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0) (=> (and (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1 ($Mutation_150503 ($Global _$t1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (= $abort_flag@4@@1 $abort_flag@3@@1)) (and (= $abort_code@5@@1 $abort_code@4@@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1))) (and (=> (= (ControlFlow 0 191787) 192108) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct) (=> (= (ControlFlow 0 191787) 191859) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Then_correct  (=> inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 (and (=> (= (ControlFlow 0 191765) 192158) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 191765) 191787) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Else_correct  (=> (and (and (not inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= (ControlFlow 0 191761) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Else_correct  (=> (and (and (and (not $abort_flag@3@@1) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)))))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 7)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0)))) (and (=> (= (ControlFlow 0 191745) 191765) inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 191745) 191761) inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Then_correct  (=> (and (and $abort_flag@3@@1 (= $abort_code@4@@1 $abort_code@4@@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@4@@1) (= (ControlFlow 0 192174) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (=> (= (ControlFlow 0 191673) 192174) inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 191673) 191745) inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Then_correct  (=> (and inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 (= (ControlFlow 0 191679) 191673)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= (ControlFlow 0 191570) 191576))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t2@0)) 0) (= (seq.len (|p#$Mutation_150503| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0)) 0)) (and (= (seq.len (|p#$Mutation_82320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@0)) 0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t10@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)))) (=> (and (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0) (= _$t1@@0 _$t1@@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (|$IsValid'u64'| 5))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 5)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1)))) (and (=> (= (ControlFlow 0 191554) 191679) inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 191554) 191570) inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Else_correct))))))
(let ((anon6_Else_correct  (=> (not $abort_flag@3@@1) (=> (and (= $t9 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)) (= (ControlFlow 0 192178) 191554)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon0_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@0  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0) (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@0 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)) (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0))) (and (and (= $abort_code@4@@1 $abort_code@3@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0)) (and (= $abort_flag@3@@1 $abort_flag@2@@1) (= $1_DiemAccount_DiemAccount_$memory@1@@0 $1_DiemAccount_DiemAccount_$memory@0@@0)))) (and (=> (= (ControlFlow 0 190660) 192518) anon6_Then_correct) (=> (= (ControlFlow 0 190660) 192178) anon6_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0  (=> (and (and (= $abort_code@4@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@0)) (and (= $abort_flag@3@@1 true) (= $1_DiemAccount_DiemAccount_$memory@1@@0 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 190337) 192518) anon6_Then_correct) (=> (= (ControlFlow 0 190337) 192178) anon6_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@0  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0) (= (ControlFlow 0 190686) 190337))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0  (=> (and (not $abort_flag@2@@1) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0 (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0))) 0)))) (and (=> (= (ControlFlow 0 190568) 190686) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@0) (=> (= (ControlFlow 0 190568) 190660) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@3@@1) (= (ControlFlow 0 190700) 190337))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0) (=> (and (= $abort_flag@2@@1 true) (= $abort_code@3@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 190752) 190700) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 190752) 190568) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= (ControlFlow 0 190750) 190752)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0 ($Mutation_144511 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= $abort_code@3@@1 $abort_code@2@@1))) (and (=> (= (ControlFlow 0 190522) 190700) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 190522) 190568) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@0  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@0 (and (=> (= (ControlFlow 0 190500) 190750) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@0) (=> (= (ControlFlow 0 190500) 190522) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= (ControlFlow 0 190496) 190337))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@0  (=> (and (not $abort_flag@1@@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 inline$$1_DiemAccount_exists_at$1$$t1@1@@0))) (and (=> (= (ControlFlow 0 190480) 190500) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@0) (=> (= (ControlFlow 0 190480) 190496) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@2@@1) (= (ControlFlow 0 190766) 190337))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 inline$$1_DiemAccount_exists_at$1$$t1@1@@0)) (and (=> (= (ControlFlow 0 190438) 190766) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 190438) 190480) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 190444) 190438)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= (ControlFlow 0 190331) 190337))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@0  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 190315) 190444) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 190315) 190331) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0)) (= (ControlFlow 0 190275) 190315)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0  (=> (and (not $abort_flag@1@@1) (= (ControlFlow 0 190281) 190275)) inline$$Not$0$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@2@@1) (= (ControlFlow 0 190780) 190337))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0  (=> (not $abort_flag@0@@1) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0) (= $abort_code@2@@1 $abort_code@1@@1)) (and (= $abort_flag@1@@1 $abort_flag@0@@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0))) (and (=> (= (ControlFlow 0 190151) 190780) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 190151) 190281) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0  (=> (= $abort_code@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0) (=> (and (= $abort_flag@1@@1 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@0)) (and (=> (= (ControlFlow 0 190099) 190780) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 190099) 190281) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 $abort_code@1@@1) (= (ControlFlow 0 190165) 190099))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@0  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@0)) (and (=> (= (ControlFlow 0 190217) 190165) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 190217) 190151) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= (ControlFlow 0 190215) 190217)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0))) (and (=> (= (ControlFlow 0 190117) 190165) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 190117) 190151) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@0  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (and (=> (= (ControlFlow 0 190103) 190215) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 190103) 190117) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= (ControlFlow 0 190093) 190099))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1))) (and (=> (= (ControlFlow 0 190077) 190103) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@0) (=> (= (ControlFlow 0 190077) 190093) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@0 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 190035) 190231) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 190035) 190077) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@0  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 190041) 190035)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0)) 0) (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@0 _$t0@@1) (= _$t0@@1 _$t0@@1))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 _$t0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 190237) 190041)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@0))))
(let ((anon0$1_correct@@1  (=> (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |AccountAdministrationScriptsandybpl.15487:20|
 :skolemid |232|
)) (=> (and (and (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@48) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@48)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@48)))) 0)) (= addr@@48 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@48))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15491:20|
 :skolemid |233|
)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@49) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@49) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@49)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@49)))) 0)) (= addr@@49 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@49))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15495:20|
 :skolemid |234|
))) (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@50) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@50)))
 :qid |AccountAdministrationScriptsandybpl.15499:20|
 :skolemid |235|
)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@51)))
 :qid |AccountAdministrationScriptsandybpl.15503:20|
 :skolemid |236|
)))) (=> (and (and (and (and (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@52) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@52)))
 :qid |AccountAdministrationScriptsandybpl.15507:20|
 :skolemid |237|
)) (|$IsValid'address'| _$t0@@1)) (and (|$IsValid'address'| _$t1@@0) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |AccountAdministrationScriptsandybpl.15516:20|
 :skolemid |238|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_134871| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |AccountAdministrationScriptsandybpl.15520:20|
 :skolemid |239|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_134871| $1_VASP_ParentVASP_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@6)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@6) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1))))
 :qid |AccountAdministrationScriptsandybpl.15524:20|
 :skolemid |240|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@7)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@7))
 :qid |AccountAdministrationScriptsandybpl.15528:20|
 :skolemid |241|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@7))
)) (= $t2 _$t0@@1)))) (and (and (and (= $t3@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t2))) 0)) (= $t4@@0 _$t0@@1)) (and (= $t5@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| $t3@@0)) (let ((addr@@53 _$t0@@1))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@53)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@53) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@53)))))))) (and (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0)) (and (= $t6@@0 _$t0@@1) (= (ControlFlow 0 190786) 190237))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_78055| stream@@2) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@2) v@@40) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 188572) 190786)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 279418) 188572) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@@1 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $t4@@1 () Int)
(declare-fun $t2@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $t7@0 () Int)
(declare-fun $abort_flag@6@@1 () Bool)
(declare-fun $abort_code@6@@2 () Int)
(declare-fun $abort_flag@3@@2 () Bool)
(declare-fun $abort_code@4@@2 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@1 () T@$Memory_141914)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@3 () T@$Memory_148613)
(declare-fun $t1 () Int)
(declare-fun $abort_flag@5@@2 () Bool)
(declare-fun $abort_code@5@@2 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 () T@$Memory_148613)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t15@1 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@2 () T@$Memory_148613)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0@@0 () T@$Memory_148613)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t25@1 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_flag@4@@2 () Bool)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@0| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0| () T@$Mutation_82320)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| () T@$Mutation_82320)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0| () T@$Mutation_82320)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t23@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t20@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t17@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t11@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t19@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t12@0 () Bool)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t14@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t9@0 () Int)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t10@0 () Int)
(declare-fun $t8 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@1 () T@$Memory_141914)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1 () T@$Mutation_144511)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@1 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@1 () Int)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_create_recovery_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281929) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 196851) (- 0 284359)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@2)))) 0)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t4@@1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@2)))) 0)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t4@@1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1))) (=> (= (ControlFlow 0 196851) (- 0 284403)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= 5 $t7@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@2)))) 0) (= 1 $t7@0))) (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t4@@1))) (= 7 $t7@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1) (= 6 $t7@0))) (and (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)) (= 7 $t7@0))) (= 1 $t7@0)) (= 7 $t7@0)) (= 6 $t7@0)))))))
(let ((anon7_Then_correct@@0  (=> (and (and $abort_flag@6@@1 (= $abort_code@6@@2 $abort_code@6@@2)) (and (= $t7@0 $abort_code@6@@2) (= (ControlFlow 0 196679) 196851))) L2_correct@@1)))
(let ((anon6_Then_correct@@0  (=> (and (and $abort_flag@3@@2 (= $abort_code@4@@2 $abort_code@4@@2)) (and (= $t7@0 $abort_code@4@@2) (= (ControlFlow 0 196865) 196851))) L2_correct@@1)))
(let ((anon7_Else_correct@@0  (=> (not $abort_flag@6@@1) (and (=> (= (ControlFlow 0 196665) (- 0 284242)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 196665) (- 0 284254)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@2)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@2)))) 0)) (and (=> (= (ControlFlow 0 196665) (- 0 284265)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t4@@1))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) $t4@@1)))) (and (=> (= (ControlFlow 0 196665) (- 0 284278)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (and (=> (= (ControlFlow 0 196665) (- 0 284288)) (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)))) (=> (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1))) (and (=> (= (ControlFlow 0 196665) (- 0 284303)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@1) _$t0@@2)))) 0)) (=> (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@1) _$t0@@2)))) 0) (and (=> (= (ControlFlow 0 196665) (- 0 284312)) (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1) (and (=> (= (ControlFlow 0 196665) (- 0 284320)) (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1))) 1)) (=> (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1))) 1) (=> (= (ControlFlow 0 196665) (- 0 284334)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1)) 0) $t2@@0)))))))))))))))))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon25_Else_correct  (=> (and (and (not $abort_flag@5@@2) (= $abort_code@6@@2 $abort_code@5@@2)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@3 $1_RecoveryAddress_RecoveryAddress_$memory@1@@0) (= $abort_flag@6@@1 $abort_flag@5@@2))) (and (=> (= (ControlFlow 0 196449) 196679) anon7_Then_correct@@0) (=> (= (ControlFlow 0 196449) 196665) anon7_Else_correct@@0)))))
(let ((inline$$1_RecoveryAddress_publish$0$L7_correct  (=> (= $abort_code@6@@2 inline$$1_RecoveryAddress_publish$0$$t15@1) (=> (and (= $1_RecoveryAddress_RecoveryAddress_$memory@3 $1_RecoveryAddress_RecoveryAddress_$memory@2) (= $abort_flag@6@@1 true)) (and (=> (= (ControlFlow 0 195745) 196679) anon7_Then_correct@@0) (=> (= (ControlFlow 0 195745) 196665) anon7_Else_correct@@0))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon25_Then_correct  (=> $abort_flag@5@@2 (=> (and (and (= $abort_code@5@@2 $abort_code@5@@2) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@5@@2)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory@1@@0) (= (ControlFlow 0 196463) 195745))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Then$1_correct  (=> (= $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 $1_RecoveryAddress_RecoveryAddress_$memory) (=> (and (= $abort_code@5@@2 $EXEC_FAILURE_CODE) (= $abort_flag@5@@2 true)) (and (=> (= (ControlFlow 0 196513) 196463) inline$$1_RecoveryAddress_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 196513) 196449) inline$$1_RecoveryAddress_publish$0$anon25_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@2) (= (ControlFlow 0 196511) 196513)) inline$$1_RecoveryAddress_publish$0$anon24_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@2)) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0@@0 ($Memory_148613 (|Store__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@2 true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) _$t0@@2 inline$$1_RecoveryAddress_publish$0$$t25@1))) (= $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 $1_RecoveryAddress_RecoveryAddress_$memory@0@@0)) (and (= $abort_code@5@@2 $abort_code@4@@2) (= $abort_flag@5@@2 $abort_flag@4@@2))) (and (=> (= (ControlFlow 0 196439) 196463) inline$$1_RecoveryAddress_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 196439) 196449) inline$$1_RecoveryAddress_publish$0$anon25_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon23_Else_correct  (=> (and (not $abort_flag@4@@2) (= inline$$1_RecoveryAddress_publish$0$$t25@1 ($1_RecoveryAddress_RecoveryAddress |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 196421) 196511) inline$$1_RecoveryAddress_publish$0$anon24_Then_correct) (=> (= (ControlFlow 0 196421) 196439) inline$$1_RecoveryAddress_publish$0$anon24_Else_correct)))))
(let ((inline$$1_RecoveryAddress_publish$0$anon23_Then_correct  (=> $abort_flag@4@@2 (=> (and (and (= $abort_code@4@@2 $abort_code@4@@2) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@4@@2)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 196527) 195745))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|  (=> (and (= $abort_flag@4@@2 true) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 196387) 196527) inline$$1_RecoveryAddress_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 196387) 196421) inline$$1_RecoveryAddress_publish$0$anon23_Else_correct)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|  (=> $abort_flag@3@@2 (=> (and (= $abort_code@4@@2 $abort_code@4@@2) (= (ControlFlow 0 196381) 196387)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|  (=> $abort_flag@3@@2 (=> (and (= $abort_code@4@@2 $abort_code@4@@2) (= (ControlFlow 0 196401) 196387)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|  (=> (not $abort_flag@3@@2) (=> (and (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| (|v#$Mutation_82320| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0|)) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|)) (and (= $abort_flag@4@@2 $abort_flag@3@@2) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|))) (and (=> (= (ControlFlow 0 196367) 196527) inline$$1_RecoveryAddress_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 196367) 196421) inline$$1_RecoveryAddress_publish$0$anon23_Else_correct))))))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0| ($Mutation_82320 (|l#$Mutation_82320| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (|p#$Mutation_82320| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.++ (|v#$Mutation_82320| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.unit inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1)))) (and (=> (= (ControlFlow 0 196335) 196381) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 196335) 196367) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|  (=> (and (and (not $abort_flag@3@@2) (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| ($Mutation_82320 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (= (ControlFlow 0 196341) 196335))) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|)))
(let ((|inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| (as seq.empty (Seq T@$1_DiemAccount_KeyRotationCapability))) (and (=> (= (ControlFlow 0 196252) 196401) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 196252) 196341) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_82320| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0|)) 0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (= (ControlFlow 0 196258) 196252)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((inline$$1_RecoveryAddress_publish$0$anon22_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 196407) 196258)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((inline$$1_RecoveryAddress_publish$0$anon22_Else_correct  (=> (not inline$$Not$1$dst@1) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t23@0 inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t23@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 196002) 195745))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Then$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$1_RecoveryAddress_publish$0$$t23@0 6)) (and (= inline$$1_RecoveryAddress_publish$0$$t23@0 inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 195986) 196407) inline$$1_RecoveryAddress_publish$0$anon22_Then_correct) (=> (= (ControlFlow 0 195986) 196002) inline$$1_RecoveryAddress_publish$0$anon22_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_RecoveryAddress_publish$0$$t20@1)) (= (ControlFlow 0 195950) 195986)) inline$$1_RecoveryAddress_publish$0$anon21_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Then_correct  (=> inline$$1_RecoveryAddress_publish$0$$t17@1 (=> (and (= inline$$1_RecoveryAddress_publish$0$$t20@1 (|Select__T@[Int]Bool_| (|domain#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0)) (= (ControlFlow 0 195956) 195950)) inline$$Not$1$anon0_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Else_correct  (=> (not inline$$1_RecoveryAddress_publish$0$$t17@1) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t19@0 inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t19@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 195910) 195745))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon20_Else_correct  (=> (not $abort_flag@3@@2) (=> (and (= inline$$1_RecoveryAddress_publish$0$$t17@1 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_RecoveryAddress_publish$0$$t11@0)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t19@0 7)) (and (= inline$$1_RecoveryAddress_publish$0$$t19@0 inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t17@1 inline$$1_RecoveryAddress_publish$0$$t17@1))) (and (=> (= (ControlFlow 0 195894) 195956) inline$$1_RecoveryAddress_publish$0$anon21_Then_correct) (=> (= (ControlFlow 0 195894) 195910) inline$$1_RecoveryAddress_publish$0$anon21_Else_correct)))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon20_Then_correct  (=> $abort_flag@3@@2 (=> (and (and (= $abort_code@4@@2 $abort_code@4@@2) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@4@@2)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 196541) 195745))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 195842) 196541) inline$$1_RecoveryAddress_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 195842) 195894) inline$$1_RecoveryAddress_publish$0$anon20_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon19_Then_correct  (=> (and inline$$1_RecoveryAddress_publish$0$$t12@0 (= (ControlFlow 0 195848) 195842)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0)))
(let ((inline$$1_RecoveryAddress_publish$0$anon19_Else_correct  (=> (not inline$$1_RecoveryAddress_publish$0$$t12@0) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t14@0 inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t14@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 195739) 195745))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon0_correct  (=> (= inline$$1_RecoveryAddress_publish$0$$t9@0 _$t0@@2) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t10@0 _$t0@@2) (= _$t0@@2 _$t0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (|$IsValid'address'| inline$$1_RecoveryAddress_publish$0$$t11@0))) (=> (and (and (and (= inline$$1_RecoveryAddress_publish$0$$t11@0 _$t0@@2) (= inline$$1_RecoveryAddress_publish$0$$t11@0 inline$$1_RecoveryAddress_publish$0$$t11@0)) (and (= inline$$1_RecoveryAddress_publish$0$$t12@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t14@0 7)) (and (= inline$$1_RecoveryAddress_publish$0$$t14@0 inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t12@0 inline$$1_RecoveryAddress_publish$0$$t12@0)))) (and (=> (= (ControlFlow 0 195723) 195848) inline$$1_RecoveryAddress_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 195723) 195739) inline$$1_RecoveryAddress_publish$0$anon19_Else_correct)))))))
(let ((anon6_Else_correct@@0  (=> (and (and (not $abort_flag@3@@2) (= $t8 _$t0@@2)) (and (= $t9@@0 _$t0@@2) (= (ControlFlow 0 196545) 195723))) inline$$1_RecoveryAddress_publish$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@1  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1) (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@1 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)) (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1))) (and (and (= $abort_code@4@@2 $abort_code@3@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1)) (and (= $abort_flag@3@@2 $abort_flag@2@@2) (= $1_DiemAccount_DiemAccount_$memory@1@@1 $1_DiemAccount_DiemAccount_$memory@0@@1)))) (and (=> (= (ControlFlow 0 194897) 196865) anon6_Then_correct@@0) (=> (= (ControlFlow 0 194897) 196545) anon6_Else_correct@@0))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1  (=> (and (and (= $abort_code@4@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@1)) (and (= $abort_flag@3@@2 true) (= $1_DiemAccount_DiemAccount_$memory@1@@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 194574) 196865) anon6_Then_correct@@0) (=> (= (ControlFlow 0 194574) 196545) anon6_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@1  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1) (= (ControlFlow 0 194923) 194574))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1  (=> (and (not $abort_flag@2@@2) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1 (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1))) 0)))) (and (=> (= (ControlFlow 0 194805) 194923) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@1) (=> (= (ControlFlow 0 194805) 194897) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1  (=> (and (and $abort_flag@2@@2 (= $abort_code@3@@2 $abort_code@3@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@3@@2) (= (ControlFlow 0 194937) 194574))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1) (=> (and (= $abort_flag@2@@2 true) (= $abort_code@3@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 194989) 194937) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1) (=> (= (ControlFlow 0 194989) 194805) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= (ControlFlow 0 194987) 194989)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1 ($Mutation_144511 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1)) (and (= $abort_flag@2@@2 $abort_flag@1@@2) (= $abort_code@3@@2 $abort_code@2@@2))) (and (=> (= (ControlFlow 0 194759) 194937) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1) (=> (= (ControlFlow 0 194759) 194805) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@1  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@1 (and (=> (= (ControlFlow 0 194737) 194987) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@1) (=> (= (ControlFlow 0 194737) 194759) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= (ControlFlow 0 194733) 194574))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@1  (=> (and (not $abort_flag@1@@2) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 inline$$1_DiemAccount_exists_at$1$$t1@1@@1))) (and (=> (= (ControlFlow 0 194717) 194737) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@1) (=> (= (ControlFlow 0 194717) 194733) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@1  (=> (and (and $abort_flag@1@@2 (= $abort_code@2@@2 $abort_code@2@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@2@@2) (= (ControlFlow 0 195003) 194574))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 inline$$1_DiemAccount_exists_at$1$$t1@1@@1)) (and (=> (= (ControlFlow 0 194675) 195003) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@1) (=> (= (ControlFlow 0 194675) 194717) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@2 (= (ControlFlow 0 194681) 194675)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= (ControlFlow 0 194568) 194574))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@1  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 194552) 194681) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@1) (=> (= (ControlFlow 0 194552) 194568) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1)) (= (ControlFlow 0 194512) 194552)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1  (=> (and (not $abort_flag@1@@2) (= (ControlFlow 0 194518) 194512)) inline$$Not$0$anon0_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1  (=> (and (and $abort_flag@1@@2 (= $abort_code@2@@2 $abort_code@2@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@2@@2) (= (ControlFlow 0 195017) 194574))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1  (=> (not $abort_flag@0@@2) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1) (= $abort_code@2@@2 $abort_code@1@@2)) (and (= $abort_flag@1@@2 $abort_flag@0@@2) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1))) (and (=> (= (ControlFlow 0 194388) 195017) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 194388) 194518) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1  (=> (= $abort_code@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1) (=> (and (= $abort_flag@1@@2 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@1)) (and (=> (= (ControlFlow 0 194336) 195017) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 194336) 194518) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 $abort_code@1@@2) (= (ControlFlow 0 194402) 194336))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@1  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@1)) (and (=> (= (ControlFlow 0 194454) 194402) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 194454) 194388) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= (ControlFlow 0 194452) 194454)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1))) (and (=> (= (ControlFlow 0 194354) 194402) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 194354) 194388) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@1  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@2 (and (=> (= (ControlFlow 0 194340) 194452) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 194340) 194354) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@2) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= (ControlFlow 0 194330) 194336))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 inline$$1_DiemAccount_exists_at$0$$t1@1@@2))) (and (=> (= (ControlFlow 0 194314) 194340) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@1) (=> (= (ControlFlow 0 194314) 194330) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@1 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 inline$$1_DiemAccount_exists_at$0$$t1@1@@2)) (and (=> (= (ControlFlow 0 194272) 194468) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 194272) 194314) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@1  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 194278) 194272)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@1)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1)) 0) (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@1)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@1 _$t0@@2) (= _$t0@@2 _$t0@@2))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 _$t0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 194474) 194278)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@1))))
(let ((anon0$1_correct@@2  (=> (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_134807| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_134871| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |AccountAdministrationScriptsandybpl.15688:20|
 :skolemid |242|
)) (=> (and (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@54) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@54)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@54)))) 0)) (= addr@@54 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@54))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15692:20|
 :skolemid |243|
)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@55) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@55) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@55)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@55)))) 0)) (= addr@@55 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@55))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.15696:20|
 :skolemid |244|
))) (=> (and (and (and (and (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@56) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@56)))
 :qid |AccountAdministrationScriptsandybpl.15700:20|
 :skolemid |245|
)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@57)))
 :qid |AccountAdministrationScriptsandybpl.15704:20|
 :skolemid |246|
))) (and (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@58)))
 :qid |AccountAdministrationScriptsandybpl.15708:20|
 :skolemid |247|
)) (|$IsValid'address'| _$t0@@2))) (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $a_0@@8)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@8))
 :qid |AccountAdministrationScriptsandybpl.15714:20|
 :skolemid |248|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_134807| $1_VASP_ChildVASP_$memory) $a_0@@8))
)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_134871| $1_VASP_ParentVASP_$memory) $a_0@@9)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@9))
 :qid |AccountAdministrationScriptsandybpl.15718:20|
 :skolemid |249|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_134871| $1_VASP_ParentVASP_$memory) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@10)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@10) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@10))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@10))) 1))))
 :qid |AccountAdministrationScriptsandybpl.15722:20|
 :skolemid |250|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@11)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@11))
 :qid |AccountAdministrationScriptsandybpl.15726:20|
 :skolemid |251|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_148613| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@11))
))))) (and (and (and (= $t1 _$t0@@2) (= $t2@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t1))) 0))) (and (= $t3@@1 _$t0@@2) (= $t4@@1 _$t0@@2))) (and (and (let ((addr@@59 _$t0@@2))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@59)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@59) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@59)))))) (= _$t0@@2 _$t0@@2)) (and (= $t5@@1 _$t0@@2) (= (ControlFlow 0 195023) 194474))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@1)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_78055| stream@@3) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@3) v@@41) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 192819) 195023)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 281929) 192819) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun $t2@@1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_133917)
(declare-fun $t1@@0 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@3 () T@$Memory_133917)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_133917)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@2 () T@$Memory_133917)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_133917)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 () T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 () Bool)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 () Int)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 () Int)
(declare-fun $t3@@2 () Int)
(declare-fun $t4@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_create_vasp_domains$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284517) (let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct true))
(let ((anon4_Else_correct@@0  (=> (not $abort_flag@1@@3) (and (=> (= (ControlFlow 0 198786) (- 0 285821)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 198786) (- 0 285833)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 198786) (- 0 285851)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $t1@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $t1@@0)) (and (=> (= (ControlFlow 0 198786) (- 0 285861)) (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0) (=> (= (ControlFlow 0 198786) (- 0 285869)) (= (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_133917| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0))) 0)))))))))))))
(let ((anon4_Then_correct@@0  (=> (and $abort_flag@1@@3 (= $abort_code@2@@3 $abort_code@2@@3)) (and (=> (= (ControlFlow 0 198910) (- 0 285714)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $t1@@0))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $t1@@0)) (=> (= (ControlFlow 0 198910) (- 0 285743)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $abort_code@2@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $abort_code@2@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $t1@@0) (= 6 $abort_code@2@@3))) (= 6 $abort_code@2@@3)) (= 3 $abort_code@2@@3))))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct  (=> (and (and (not $abort_flag@0@@3) (= $abort_flag@1@@3 $abort_flag@0@@3)) (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@1) (= $abort_code@2@@3 $abort_code@1@@3))) (and (=> (= (ControlFlow 0 198582) 198910) anon4_Then_correct@@0) (=> (= (ControlFlow 0 198582) 198786) anon4_Else_correct@@0)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct  (=> (= $abort_flag@1@@3 true) (=> (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@2) (= $abort_code@2@@3 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1)) (and (=> (= (ControlFlow 0 198508) 198910) anon4_Then_correct@@0) (=> (= (ControlFlow 0 198508) 198786) anon4_Else_correct@@0))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct  (=> $abort_flag@0@@3 (=> (and (and (= $abort_code@1@@3 $abort_code@1@@3) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@1@@3) (= (ControlFlow 0 198596) 198508))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct  (=> (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 198646) 198596) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 198646) 198582) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) _$t0@@3) (= (ControlFlow 0 198644) 198646)) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) _$t0@@3)) (=> (and (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_133917 (|Store__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) _$t0@@3 true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) _$t0@@3 inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1))) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 198572) 198596) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 198572) 198582) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct  (=> (and (not false) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 ($1_VASPDomain_VASPDomains |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1|))) (and (=> (= (ControlFlow 0 198554) 198644) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct) (=> (= (ControlFlow 0 198554) 198572) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct)))))
(let ((|inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| (as seq.empty (Seq T@$1_VASPDomain_VASPDomain))) (and (=> (= (ControlFlow 0 198534) 198660) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct) (=> (= (ControlFlow 0 198534) 198554) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct  (=> (and inline$$Not$0$dst@1@@3 (= (ControlFlow 0 198540) 198534)) |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct  (=> (not inline$$Not$0$dst@1@@3) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= (ControlFlow 0 198502) 198508))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 6)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$Not$0$dst@1@@3 inline$$Not$0$dst@1@@3))) (and (=> (= (ControlFlow 0 198486) 198540) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct) (=> (= (ControlFlow 0 198486) 198502) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@3  (=> (and (= inline$$Not$0$dst@1@@3  (not inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1)) (= (ControlFlow 0 198446) 198486)) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct  (=> (not inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0) (=> (and (and (|$IsValid'address'| inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 _$t0@@3)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 (|Select__T@[Int]Bool_| (|domain#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0)) (= (ControlFlow 0 198452) 198446))) inline$$Not$0$anon0_correct@@3))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct  (=> (and inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (= 5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)) (= 3 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)))) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= (ControlFlow 0 198712) 198508))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct  (=> (= inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 _$t0@@3) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 _$t0@@3) (= _$t0@@3 _$t0@@3)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 _$t0@@3) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)))))) (and (=> (= (ControlFlow 0 198390) 198712) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct) (=> (= (ControlFlow 0 198390) 198452) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct))))))
(let ((anon0$1_correct@@3  (=> (and (and (and (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_110774| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@60) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@60)) 4))))
 :qid |AccountAdministrationScriptsandybpl.15891:20|
 :skolemid |252|
)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@61) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@61)) 3))))
 :qid |AccountAdministrationScriptsandybpl.15895:20|
 :skolemid |253|
))) (and (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@62) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@62)) 3))))
 :qid |AccountAdministrationScriptsandybpl.15899:20|
 :skolemid |254|
)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@63) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_111627| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@63)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@63)) 3))))
 :qid |AccountAdministrationScriptsandybpl.15903:20|
 :skolemid |255|
)))) (and (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123334| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15907:21|
 :skolemid |256|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_123421| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15907:268|
 :skolemid |257|
))) (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118614| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15911:21|
 :skolemid |258|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118701| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |AccountAdministrationScriptsandybpl.15911:231|
 :skolemid |259|
))))) (=> (and (and (and (and (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_123912| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_123594| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |AccountAdministrationScriptsandybpl.15915:21|
 :skolemid |260|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_124011| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_123685| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |AccountAdministrationScriptsandybpl.15915:292|
 :skolemid |261|
))) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136293| $1_DualAttestation_Credential_$memory) addr1@@8) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr1@@8)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.15923:20|
 :skolemid |262|
))) (and (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@64) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@64)))
 :qid |AccountAdministrationScriptsandybpl.15927:20|
 :skolemid |263|
)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@65) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@65)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@65)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@65)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.15931:20|
 :skolemid |264|
)))) (and (and (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140712| $1_DesignatedDealer_Dealer_$memory) addr@@66) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@66)) 2))))
 :qid |AccountAdministrationScriptsandybpl.15935:20|
 :skolemid |265|
)) (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136293| $1_DualAttestation_Credential_$memory) addr@@67) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@67)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@67)) 5)))))
 :qid |AccountAdministrationScriptsandybpl.15939:20|
 :skolemid |266|
))) (and (|$IsValid'address'| _$t0@@3) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |AccountAdministrationScriptsandybpl.15945:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) $a_0@@12))
))))) (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $a_0@@13)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@13) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@44 $i_2))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13) i@@44))) 63)))
 :qid |AccountAdministrationScriptsandybpl.15950:140|
 :skolemid |268|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@45 $i_4))
(let (($range_5 ($Range (+ i@@45 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@10 $i_6))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13) i@@45) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13) j@@10)))))
 :qid |AccountAdministrationScriptsandybpl.15952:98|
 :skolemid |269|
)))))
 :qid |AccountAdministrationScriptsandybpl.15951:202|
 :skolemid |270|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@13)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |AccountAdministrationScriptsandybpl.15953:229|
 :skolemid |271|
))))))
 :qid |AccountAdministrationScriptsandybpl.15949:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_133917| $1_VASPDomain_VASPDomains_$memory) $a_0@@13))
)) (= $t1@@0 _$t0@@3)) (and (= $t2@@1 _$t0@@3) (let ((addr@@68 _$t0@@3))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@68)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@68) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@68)))))))) (and (and (= _$t0@@3 _$t0@@3) (= $t3@@2 _$t0@@3)) (and (= $t4@@2 _$t0@@3) (= (ControlFlow 0 198716) 198390))))) inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_78055| stream@@4) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@4) v@@42) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 197191) 198716)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 284517) 197191) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@8@@0 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory () T@$Memory_146906)
(declare-fun $t2@@2 () Int)
(declare-fun $t3@@3 () Int)
(declare-fun _$t0@@4 () Int)
(declare-fun _$t1@@1 () (Seq Int))
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 () T@$Memory_146906)
(declare-fun $t4@@3 () Int)
(declare-fun |Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int) T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@9@@0 () Int)
(declare-fun $abort_flag@7@@1 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 () T@$Memory_146906)
(declare-fun $abort_code@8@@1 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 () T@$Memory_146906)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 () T@$Memory_146906)
(declare-fun |Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|)
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t2@2 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_flag@6@@2 () Bool)
(declare-fun $abort_code@7@@1 () Int)
(declare-fun inline$$Not$1$dst@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 () T@$Mutation_147076)
(declare-fun $abort_flag@5@@3 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 () T@$Mutation_98368)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t12@1 () T@$Mutation_147076)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 () T@$Mutation_98368)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 () T@$Mutation_147076)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@6@@3 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0 () T@$Mutation_147076)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 () T@$Mutation_98368)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@0 () T@$Memory_141914)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@2 () T@$Memory_141914)
(declare-fun $abort_code@5@@3 () Int)
(declare-fun $abort_flag@4@@3 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 () T@$Mutation_144511)
(declare-fun $abort_flag@3@@3 () Bool)
(declare-fun $abort_code@4@@3 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0 () T@$Mutation_98368)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0 () T@$Mutation_98368)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t2@1 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 () (Seq Int))
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@2| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@2 () T@$Memory_141914)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2 () T@$Mutation_144511)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 () Bool)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@2 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@2 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t12@0 () T@$Mutation_147076)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t5@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t6@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t9@0 () Int)
(declare-fun $t5@@2 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t7 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_publish_shared_ed25519_public_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 285888) (let ((anon4_Else_correct@@1  (=> (not $abort_flag@8@@0) (and (=> (= (ControlFlow 0 203943) (- 0 288956)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2)) (and (=> (= (ControlFlow 0 203943) (- 0 288966)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 203943) (- 0 288978)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@4)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@4)))) 0)) (and (=> (= (ControlFlow 0 203943) (- 0 288989)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (and (=> (= (ControlFlow 0 203943) (- 0 288999)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0)))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (and (=> (= (ControlFlow 0 203943) (- 0 289022)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (and (=> (= (ControlFlow 0 203943) (- 0 289038)) (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3) (=> (= (ControlFlow 0 203943) (- 0 289046)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3)) _$t1@@1)))))))))))))))))))
(let ((anon4_Then_correct@@1  (=> (and $abort_flag@8@@0 (= $abort_code@9@@0 $abort_code@9@@0)) (and (=> (= (ControlFlow 0 204175) (- 0 288755)) (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@4)))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@4)))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (=> (= (ControlFlow 0 204175) (- 0 288817)) (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (= 6 $abort_code@9@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t3@@3)) (= 5 $abort_code@9@@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@4)))) 0) (= 1 $abort_code@9@@0))) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (= 7 $abort_code@9@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0)))))) (= 5 $abort_code@9@@0))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)) (= 7 $abort_code@9@@0))) (= 1 $abort_code@9@@0)) (= 6 $abort_code@9@@0)) (= 7 $abort_code@9@@0))))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct  (=> (and (and (not $abort_flag@7@@1) (= $abort_flag@8@@0 $abort_flag@7@@1)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) (= $abort_code@9@@0 $abort_code@8@@1))) (and (=> (= (ControlFlow 0 203717) 204175) anon4_Then_correct@@1) (=> (= (ControlFlow 0 203717) 203943) anon4_Else_correct@@1)))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$L3_correct  (=> (= $abort_flag@8@@0 true) (=> (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2) (= $abort_code@9@@0 inline$$1_SharedEd25519PublicKey_publish$0$$t11@1)) (and (=> (= (ControlFlow 0 203683) 204175) anon4_Then_correct@@1) (=> (= (ControlFlow 0 203683) 203943) anon4_Else_correct@@1))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct  (=> $abort_flag@7@@1 (=> (and (and (= $abort_code@8@@1 $abort_code@8@@1) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@8@@1)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) (= (ControlFlow 0 203731) 203683))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then$1_correct  (=> (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (=> (and (= $abort_flag@7@@1 true) (= $abort_code@8@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 203781) 203731) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 203781) 203717) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) _$t0@@4) (= (ControlFlow 0 203779) 203781)) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then$1_correct)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) _$t0@@4)) (=> (and (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 ($Memory_146906 (|Store__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) _$t0@@4 true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) _$t0@@4 inline$$1_SharedEd25519PublicKey_publish$0$$t2@2))) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0)) (and (= $abort_flag@7@@1 $abort_flag@6@@2) (= $abort_code@8@@1 $abort_code@7@@1))) (and (=> (= (ControlFlow 0 203707) 203731) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 203707) 203717) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon18_Then_correct  (=> inline$$Not$1$dst@1@@0 (and (=> (= (ControlFlow 0 203689) 203779) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 203689) 203707) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon18_Else_correct  (=> (not inline$$Not$1$dst@1@@0) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 203677) 203683))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 6)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$Not$1$dst@1@@0 inline$$Not$1$dst@1@@0))) (and (=> (= (ControlFlow 0 203661) 203689) inline$$1_SharedEd25519PublicKey_publish$0$anon18_Then_correct) (=> (= (ControlFlow 0 203661) 203677) inline$$1_SharedEd25519PublicKey_publish$0$anon18_Else_correct))))))
(let ((inline$$Not$1$anon0_correct@@0  (=> (and (= inline$$Not$1$dst@1@@0  (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (= (ControlFlow 0 203625) 203661)) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else$1_correct)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else_correct  (=> (and (not $abort_flag@6@@2) (= (ControlFlow 0 203631) 203625)) inline$$Not$1$anon0_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Then_correct  (=> $abort_flag@6@@2 (=> (and (and (= $abort_code@7@@1 $abort_code@7@@1) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@7@@1)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 203795) 203683))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct  (=> (= inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 inline$$1_SharedEd25519PublicKey_publish$0$$t13@0) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) inline$$1_SharedEd25519PublicKey_publish$0$$t13@0)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 203581) 203795) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Then_correct) (=> (= (ControlFlow 0 203581) 203631) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct  (=> (not $abort_flag@6@@2) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t2@2 (|v#$Mutation_147076| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1)) (|$IsValid'address'| inline$$1_SharedEd25519PublicKey_publish$0$$t13@0)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 _$t0@@4) (= (ControlFlow 0 203587) 203581))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct  (=> $abort_flag@6@@2 (=> (and (and (= $abort_code@7@@1 $abort_code@7@@1) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@7@@1)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 203809) 203683))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct  (=> (not $abort_flag@5@@3) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 ($Mutation_98368 (|l#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (seq.++ (|p#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 ($Mutation_98368 (|l#$Mutation_98368| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) (|p#$Mutation_98368| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) _$t1@@1))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 ($Mutation_147076 (|l#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (|p#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_98368| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| (|v#$Mutation_147076| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)) (and (= $abort_flag@6@@2 $abort_flag@5@@3) (= $abort_code@7@@1 $abort_code@6@@3)))) (and (=> (= (ControlFlow 0 203424) 203809) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct) (=> (= (ControlFlow 0 203424) 203587) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0) (=> (and (= $abort_flag@6@@2 true) (= $abort_code@7@@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1)) (and (=> (= (ControlFlow 0 202322) 203809) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct) (=> (= (ControlFlow 0 202322) 203587) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct  (=> (and (and $abort_flag@5@@3 (= $abort_code@6@@3 $abort_code@6@@3)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@6@@3) (= (ControlFlow 0 203438) 202322))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 ($Mutation_98368 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 ($Mutation_98368 (|l#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) ($1_DiemAccount_DiemAccount (|v#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))))) (= $1_DiemAccount_DiemAccount_$memory@2@@0 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@2) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@2) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0))))) (and (= $abort_code@6@@3 $abort_code@5@@3) (= $abort_flag@5@@3 $abort_flag@4@@3))) (and (=> (= (ControlFlow 0 203270) 203438) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 203270) 203424) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0  (=> (and (= $abort_code@6@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0) (= $abort_flag@5@@3 true)) (and (=> (= (ControlFlow 0 203066) 203438) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 203066) 203424) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= (ControlFlow 0 203220) 203066))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0  (=> (and (and (and (not $abort_flag@4@@3) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (= |inline$$1_Vector_length'u8'$0$l@1@@0| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0)))) (and (=> (= (ControlFlow 0 203204) 203270) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 203204) 203220) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@5@@3) (= (ControlFlow 0 203284) 203066))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (=> (= (ControlFlow 0 203146) 203284) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 203146) 203204) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0  (=> (and (and (not $abort_flag@4@@3) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= (ControlFlow 0 203152) 203146))) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@5@@3) (= (ControlFlow 0 203298) 203066))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0  (=> (= $abort_flag@4@@3 true) (=> (and (= $abort_code@5@@3 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) (and (=> (= (ControlFlow 0 203350) 203298) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 203350) 203152) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0)) (= (ControlFlow 0 203348) 203350)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 ($Mutation_144511 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0))) (= $abort_flag@4@@3 $abort_flag@3@@3)) (and (= $abort_code@5@@3 $abort_code@4@@3) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0))) (and (=> (= (ControlFlow 0 203096) 203298) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 203096) 203152) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@0 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1))) (and (=> (= (ControlFlow 0 203074) 203348) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 203074) 203096) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= (ControlFlow 0 203060) 203066))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0  (=> (and (not $abort_flag@3@@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 inline$$1_DiemAccount_exists_at$2$$t1@1@@0))) (and (=> (= (ControlFlow 0 203044) 203074) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 203044) 203060) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0  (=> (and (and $abort_flag@3@@3 (= $abort_code@4@@3 $abort_code@4@@3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@4@@3) (= (ControlFlow 0 203364) 203066))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@0  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 inline$$1_DiemAccount_exists_at$2$$t1@1@@0)) (and (=> (= (ControlFlow 0 203002) 203364) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 203002) 203044) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) 0) (= (seq.len (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1)) (= (ControlFlow 0 203008) 203002))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) (= (ControlFlow 0 203368) 203008))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= (ControlFlow 0 202316) 202322))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct  (=> (and (not $abort_flag@3@@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 202300) 203368) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct) (=> (= (ControlFlow 0 202300) 202316) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct  (=> (and (and $abort_flag@3@@3 (= $abort_code@4@@3 $abort_code@4@@3)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@4@@3) (= (ControlFlow 0 203452) 202322))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (and (=> (= (ControlFlow 0 202254) 203452) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct) (=> (= (ControlFlow 0 202254) 202300) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_98368| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| (|v#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1|)) (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 202260) 202254))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct  (=> (not $abort_flag@3@@3) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t2@1 ($1_SharedEd25519PublicKey_SharedEd25519PublicKey inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2)) (= inline$$1_SharedEd25519PublicKey_publish$0$$t2@1 inline$$1_SharedEd25519PublicKey_publish$0$$t2@1)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t12@1 ($Mutation_147076 ($Local 2) (as seq.empty (Seq Int)) inline$$1_SharedEd25519PublicKey_publish$0$$t2@1)) (= (ControlFlow 0 203458) 202260))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct  (=> $abort_flag@3@@3 (=> (and (and (= $abort_code@4@@3 $abort_code@4@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@4@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 203823) 203683))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@2  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2) (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@2|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@2 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)) (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2))) (and (and (= $abort_code@4@@3 $abort_code@3@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2)) (and (= $abort_flag@3@@3 $abort_flag@2@@3) (= $1_DiemAccount_DiemAccount_$memory@1@@2 $1_DiemAccount_DiemAccount_$memory@0@@2)))) (and (=> (= (ControlFlow 0 201679) 203823) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct) (=> (= (ControlFlow 0 201679) 203458) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2  (=> (and (and (= $abort_code@4@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@2)) (and (= $abort_flag@3@@3 true) (= $1_DiemAccount_DiemAccount_$memory@1@@2 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 201356) 203823) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct) (=> (= (ControlFlow 0 201356) 203458) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@2  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2) (= (ControlFlow 0 201705) 201356))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2  (=> (and (not $abort_flag@2@@3) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2 (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2))) 0)))) (and (=> (= (ControlFlow 0 201587) 201705) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@2) (=> (= (ControlFlow 0 201587) 201679) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2  (=> (and (and $abort_flag@2@@3 (= $abort_code@3@@3 $abort_code@3@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@3@@3) (= (ControlFlow 0 201719) 201356))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2) (=> (and (= $abort_flag@2@@3 true) (= $abort_code@3@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 201771) 201719) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2) (=> (= (ControlFlow 0 201771) 201587) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= (ControlFlow 0 201769) 201771)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2 ($Mutation_144511 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2)) (and (= $abort_flag@2@@3 $abort_flag@1@@4) (= $abort_code@3@@3 $abort_code@2@@4))) (and (=> (= (ControlFlow 0 201541) 201719) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2) (=> (= (ControlFlow 0 201541) 201587) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@2  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@2 (and (=> (= (ControlFlow 0 201519) 201769) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@2) (=> (= (ControlFlow 0 201519) 201541) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= (ControlFlow 0 201515) 201356))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@2  (=> (and (not $abort_flag@1@@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 inline$$1_DiemAccount_exists_at$1$$t1@1@@2))) (and (=> (= (ControlFlow 0 201499) 201519) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@2) (=> (= (ControlFlow 0 201499) 201515) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@2  (=> (and (and $abort_flag@1@@4 (= $abort_code@2@@4 $abort_code@2@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@2@@4) (= (ControlFlow 0 201785) 201356))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 inline$$1_DiemAccount_exists_at$1$$t1@1@@2)) (and (=> (= (ControlFlow 0 201457) 201785) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@2) (=> (= (ControlFlow 0 201457) 201499) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@2  (=> (and inline$$Not$0$dst@1@@4 (= (ControlFlow 0 201463) 201457)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@2  (=> (and (and (not inline$$Not$0$dst@1@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= (ControlFlow 0 201350) 201356))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@2  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 201334) 201463) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@2) (=> (= (ControlFlow 0 201334) 201350) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2)) (= (ControlFlow 0 201294) 201334)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2  (=> (and (not $abort_flag@1@@4) (= (ControlFlow 0 201300) 201294)) inline$$Not$0$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2  (=> (and (and $abort_flag@1@@4 (= $abort_code@2@@4 $abort_code@2@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@2@@4) (= (ControlFlow 0 201799) 201356))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2  (=> (not $abort_flag@0@@4) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2) (= $abort_code@2@@4 $abort_code@1@@4)) (and (= $abort_flag@1@@4 $abort_flag@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2))) (and (=> (= (ControlFlow 0 201170) 201799) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 201170) 201300) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2  (=> (= $abort_code@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2) (=> (and (= $abort_flag@1@@4 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@2)) (and (=> (= (ControlFlow 0 201118) 201799) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 201118) 201300) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 $abort_code@1@@4) (= (ControlFlow 0 201184) 201118))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@2  (=> (= $abort_flag@0@@4 true) (=> (and (= $abort_code@1@@4 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@2)) (and (=> (= (ControlFlow 0 201236) 201184) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2) (=> (= (ControlFlow 0 201236) 201170) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= (ControlFlow 0 201234) 201236)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= $abort_flag@0@@4 false)) (and (= $abort_code@1@@4 $abort_code@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2))) (and (=> (= (ControlFlow 0 201136) 201184) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2) (=> (= (ControlFlow 0 201136) 201170) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@2  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@3 (and (=> (= (ControlFlow 0 201122) 201234) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@2) (=> (= (ControlFlow 0 201122) 201136) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= (ControlFlow 0 201112) 201118))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@2  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 inline$$1_DiemAccount_exists_at$0$$t1@1@@3))) (and (=> (= (ControlFlow 0 201096) 201122) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@2) (=> (= (ControlFlow 0 201096) 201112) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@2 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 inline$$1_DiemAccount_exists_at$0$$t1@1@@3)) (and (=> (= (ControlFlow 0 201054) 201250) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 201054) 201096) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@2  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= (ControlFlow 0 201060) 201054)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@2)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2)) 0) (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@2)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@2 _$t0@@4) (= _$t0@@4 _$t0@@4))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 _$t0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= (ControlFlow 0 201256) 201060)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@2))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_147076| inline$$1_SharedEd25519PublicKey_publish$0$$t12@0)) 0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t5@0 _$t0@@4)) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t6@0 _$t0@@4) (= inline$$1_SharedEd25519PublicKey_publish$0$$t7@0 _$t0@@4)) (and (= _$t0@@4 _$t0@@4) (= _$t1@@1 _$t1@@1))) (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 (as seq.empty (Seq Int))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_publish$0$$t8@1)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t9@0 _$t0@@4) (= (ControlFlow 0 201805) 201256)))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@2))))
(let ((anon0$1_correct@@4  (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@69) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@69)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@69)))) 0)) (= addr@@69 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@69))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16075:20|
 :skolemid |273|
)) (=> (and (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@70) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@70) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@70)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@70)))) 0)) (= addr@@70 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@70))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16079:20|
 :skolemid |274|
)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@71) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@71)))
 :qid |AccountAdministrationScriptsandybpl.16083:20|
 :skolemid |275|
))) (=> (and (and (and (and (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@72) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@72)))
 :qid |AccountAdministrationScriptsandybpl.16087:20|
 :skolemid |276|
)) (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@73) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@73)))
 :qid |AccountAdministrationScriptsandybpl.16091:20|
 :skolemid |277|
))) (and (|$IsValid'address'| _$t0@@4) (|$IsValid'vec'u8''| _$t1@@1))) (and (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@14)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@14) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1))))
 :qid |AccountAdministrationScriptsandybpl.16100:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@15)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@15))
 :qid |AccountAdministrationScriptsandybpl.16104:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_146906| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@15))
))) (and (= $t2@@2 _$t0@@4) (= $t3@@3 _$t0@@4)))) (and (and (and (= $t4@@3 _$t0@@4) (let ((addr@@74 _$t0@@4))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@74)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@74) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@74))))))) (and (= _$t0@@4 _$t0@@4) (= _$t1@@1 _$t1@@1))) (and (and (= $t5@@2 _$t0@@4) (= $t6@@1 _$t0@@4)) (and (= $t7 _$t0@@4) (= (ControlFlow 0 203827) 201805))))) inline$$1_SharedEd25519PublicKey_publish$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_78055| stream@@5) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@5) v@@43) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 199081) 203827)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 285888) 199081) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $1_SlidingNonce_SlidingNonce_$memory () T@$Memory_112161)
(declare-fun _$t0@@5 () Int)
(declare-fun _$t1@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t5@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_flag@8@@1 () Bool)
(declare-fun $abort_code@9@@1 () Int)
(declare-fun $abort_flag@6@@3 () Bool)
(declare-fun $abort_code@7@@2 () Int)
(declare-fun $abort_flag@4@@4 () Bool)
(declare-fun $abort_code@5@@4 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5@@0 () T@$Memory_141914)
(declare-fun $t4@@4 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4@@0 () T@$Memory_141914)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3@@0 () T@$Memory_141914)
(declare-fun $abort_code@8@@2 () Int)
(declare-fun $abort_flag@7@@2 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t1@0@@0 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@0 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@1 () T@$Memory_141914)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@3 () T@$Memory_141914)
(declare-fun $abort_code@6@@4 () Int)
(declare-fun $abort_flag@5@@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@1 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@3| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@3 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@3 () T@$Memory_141914)
(declare-fun $abort_flag@3@@4 () Bool)
(declare-fun $abort_code@4@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@3 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@3 () T@$Mutation_144511)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 () Int)
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3 () Bool)
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@3 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3 () Bool)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@3 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@3 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@3 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@3 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@3 () Int)
(declare-fun $t8@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 () Int)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1 () T@$Memory_112161)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0 () T@$Memory_112161)
(declare-fun |Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int T@$1_SlidingNonce_SlidingNonce) |T@[Int]$1_SlidingNonce_SlidingNonce|)
(declare-fun |Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|T@[Int]$1_SlidingNonce_SlidingNonce| Int) T@$1_SlidingNonce_SlidingNonce)
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SlidingNonce_SlidingNonce|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SlidingNonce_SlidingNonce)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key_with_nonce$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 289067) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 209550) (- 0 292026)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@5 _$t1@@2) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t6@@2))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3)))) (not (= (seq.len _$t2) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@5 _$t1@@2) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t6@@2))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3)))) (not (= (seq.len _$t2) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0)) (=> (= (ControlFlow 0 209550) (- 0 292093)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5)) (= 5 $t7@0@@0)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@5 _$t1@@2) 0)) (= 7 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t6@@2)) (= 5 $t7@0@@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0) (= 1 $t7@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3))) (= 5 $t7@0@@0))) (and (not (= (seq.len _$t2) 32)) (= 7 $t7@0@@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0) (= 1 $t7@0@@0))) (= 7 $t7@0@@0)) (= 1 $t7@0@@0)) (= 5 $t7@0@@0)))))))
(let ((anon13_Then_correct  (=> (and (and $abort_flag@8@@1 (= $abort_code@9@@1 $abort_code@9@@1)) (and (= $t7@0@@0 $abort_code@9@@1) (= (ControlFlow 0 209306) 209550))) L2_correct@@2)))
(let ((anon12_Then_correct  (=> (and (and $abort_flag@6@@3 (= $abort_code@7@@2 $abort_code@7@@2)) (and (= $t7@0@@0 $abort_code@7@@2) (= (ControlFlow 0 209564) 209550))) L2_correct@@2)))
(let ((anon11_Then_correct  (=> (and (and $abort_flag@4@@4 (= $abort_code@5@@4 $abort_code@5@@4)) (and (= $t7@0@@0 $abort_code@5@@4) (= (ControlFlow 0 209578) 209550))) L2_correct@@2)))
(let ((anon10_Then_correct@@0  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t7@0@@0 $abort_code@1@@5) (= (ControlFlow 0 209592) 209550))) L2_correct@@2)))
(let ((anon13_Else_correct  (=> (not $abort_flag@8@@1) (and (=> (= (ControlFlow 0 209292) (- 0 291908)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5))) (and (=> (= (ControlFlow 0 209292) (- 0 291921)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@5 _$t1@@2) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@5 _$t1@@2) 0))) (and (=> (= (ControlFlow 0 209292) (- 0 291936)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 209292) (- 0 291948)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0)) (and (=> (= (ControlFlow 0 209292) (- 0 291959)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t5@@3)))) (and (=> (= (ControlFlow 0 209292) (- 0 291973)) (not (not (= (seq.len _$t2) 32)))) (=> (not (not (= (seq.len _$t2) 32))) (and (=> (= (ControlFlow 0 209292) (- 0 291987)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t0@@5)))) 0)) (=> (= (ControlFlow 0 209292) (- 0 291998)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@5@@0) $t4@@4)) _$t2)))))))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@0  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0) (|p#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@0) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4@@0 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@0) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@0) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0)) (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@0)))) (= $1_DiemAccount_DiemAccount_$memory@5@@0 $1_DiemAccount_DiemAccount_$memory@4@@0)) (and (= $abort_code@9@@1 $abort_code@8@@2) (= $abort_flag@8@@1 $abort_flag@7@@2)))) (and (=> (= (ControlFlow 0 209064) 209306) anon13_Then_correct) (=> (= (ControlFlow 0 209064) 209292) anon13_Else_correct)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0  (=> (= $1_DiemAccount_DiemAccount_$memory@5@@0 $1_DiemAccount_DiemAccount_$memory@3@@0) (=> (and (= $abort_code@9@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0) (= $abort_flag@8@@1 true)) (and (=> (= (ControlFlow 0 208910) 209306) anon13_Then_correct) (=> (= (ControlFlow 0 208910) 209292) anon13_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@0  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@0) (= (ControlFlow 0 209090) 208910))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@0  (=> (not $abort_flag@7@@2) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@0  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@0))) 0))))) (and (=> (= (ControlFlow 0 208982) 209090) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 208982) 209064) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@0  (=> (and (and $abort_flag@7@@2 (= $abort_code@8@@2 $abort_code@8@@2)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 $abort_code@8@@2) (= (ControlFlow 0 209104) 208910))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@0  (=> (= $abort_flag@7@@2 true) (=> (and (= $abort_code@8@@2 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@0)) (and (=> (= (ControlFlow 0 209156) 209104) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 209156) 208982) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0)) (= (ControlFlow 0 209154) 209156)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@0 ($Mutation_144511 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0))) (= $abort_flag@7@@2 $abort_flag@6@@3)) (and (= $abort_code@8@@2 $abort_code@7@@2) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@0))) (and (=> (= (ControlFlow 0 208940) 209104) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 208940) 208982) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1@@0 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3))) (and (=> (= (ControlFlow 0 208918) 209154) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 208918) 208940) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1@@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 208904) 208910))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@0  (=> (and (not $abort_flag@6@@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@0 inline$$1_DiemAccount_exists_at$3$$t1@1@@0))) (and (=> (= (ControlFlow 0 208888) 208918) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@0) (=> (= (ControlFlow 0 208888) 208904) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@0  (=> (and (and $abort_flag@6@@3 (= $abort_code@7@@2 $abort_code@7@@2)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@0 $abort_code@7@@2) (= (ControlFlow 0 209170) 208910))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct@@0  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@0) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0)) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@0 inline$$1_DiemAccount_exists_at$3$$t1@1@@0)) (and (=> (= (ControlFlow 0 208846) 209170) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 208846) 208888) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t1@0@@0)) 0) (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@0)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3)) (= (ControlFlow 0 208852) 208846))) inline$$1_DiemAccount_exists_at$3$anon0_correct@@0))))
(let ((anon12_Else_correct  (=> (and (not $abort_flag@6@@3) (= (ControlFlow 0 209174) 208852)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@1  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1 ($Mutation_98368 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1 ($Mutation_98368 (|l#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1) (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@1) _$t2)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1) ($1_DiemAccount_DiemAccount (|v#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@1) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2@@1 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@3) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@3) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)) (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@1)))) (= $abort_code@7@@2 $abort_code@6@@4)) (and (= $1_DiemAccount_DiemAccount_$memory@3@@0 $1_DiemAccount_DiemAccount_$memory@2@@1) (= $abort_flag@6@@3 $abort_flag@5@@4)))) (and (=> (= (ControlFlow 0 208151) 209564) anon12_Then_correct) (=> (= (ControlFlow 0 208151) 209174) anon12_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1  (=> (= $abort_code@7@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1) (=> (and (= $1_DiemAccount_DiemAccount_$memory@3@@0 $1_DiemAccount_DiemAccount_$memory@1@@3) (= $abort_flag@6@@3 true)) (and (=> (= (ControlFlow 0 207947) 209564) anon12_Then_correct) (=> (= (ControlFlow 0 207947) 209174) anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= (ControlFlow 0 208101) 207947))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@1  (=> (and (and (and (not $abort_flag@5@@4) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 (= |inline$$1_Vector_length'u8'$0$l@1@@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@1)))) (and (=> (= (ControlFlow 0 208085) 208151) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@1) (=> (= (ControlFlow 0 208085) 208101) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@1  (=> (and (and $abort_flag@5@@4 (= $abort_code@6@@4 $abort_code@6@@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@6@@4) (= (ControlFlow 0 208165) 207947))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@1| (seq.len _$t2)) (and (=> (= (ControlFlow 0 208027) 208165) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@1) (=> (= (ControlFlow 0 208027) 208085) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1  (=> (and (and (not $abort_flag@5@@4) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|) (= (ControlFlow 0 208033) 208027))) |inline$$1_Vector_length'u8'$0$anon0_correct@@1|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1  (=> (and (and $abort_flag@5@@4 (= $abort_code@6@@4 $abort_code@6@@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@6@@4) (= (ControlFlow 0 208179) 207947))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@1  (=> (= $abort_flag@5@@4 true) (=> (and (= $abort_code@6@@4 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1)) (and (=> (= (ControlFlow 0 208231) 208179) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 208231) 208033) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1)) (= (ControlFlow 0 208229) 208231)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1 ($Mutation_144511 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1))) (= $abort_flag@5@@4 $abort_flag@4@@4)) (and (= $abort_code@6@@4 $abort_code@5@@4) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@1))) (and (=> (= (ControlFlow 0 207977) 208179) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 207977) 208033) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@1  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3))) (and (=> (= (ControlFlow 0 207955) 208229) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@1) (=> (= (ControlFlow 0 207955) 207977) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= (ControlFlow 0 207941) 207947))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@1  (=> (and (not $abort_flag@4@@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@1) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@1 inline$$1_DiemAccount_exists_at$2$$t1@1@@1))) (and (=> (= (ControlFlow 0 207925) 207955) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 207925) 207941) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@1  (=> (and (and $abort_flag@4@@4 (= $abort_code@5@@4 $abort_code@5@@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@1 $abort_code@5@@4) (= (ControlFlow 0 208245) 207947))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@1  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@3) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@1 inline$$1_DiemAccount_exists_at$2$$t1@1@@1)) (and (=> (= (ControlFlow 0 207883) 208245) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 207883) 207925) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0@@1)) 0) (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@1)) 0) (= (seq.len (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@1)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3) (= _$t2 _$t2)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3)) (= (ControlFlow 0 207889) 207883))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@1)))))
(let ((anon11_Else_correct  (=> (not $abort_flag@4@@4) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3) (= (ControlFlow 0 208249) 207889)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@1))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@3  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3) (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@3|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@3) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@3) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@3 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3)) (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3))) (and (and (= $abort_flag@4@@4 $abort_flag@3@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@3)) (and (= $abort_code@5@@4 $abort_code@4@@4) (= $1_DiemAccount_DiemAccount_$memory@1@@3 $1_DiemAccount_DiemAccount_$memory@0@@3)))) (and (=> (= (ControlFlow 0 207087) 209578) anon11_Then_correct) (=> (= (ControlFlow 0 207087) 208249) anon11_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3  (=> (and (and (= $abort_flag@4@@4 true) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@3)) (and (= $abort_code@5@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3) (= $1_DiemAccount_DiemAccount_$memory@1@@3 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 206764) 209578) anon11_Then_correct) (=> (= (ControlFlow 0 206764) 208249) anon11_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@3  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@3) (= (ControlFlow 0 207113) 206764))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@3  (=> (and (not $abort_flag@3@@4) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@3|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@3 (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@3 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@3))) 0)))) (and (=> (= (ControlFlow 0 206995) 207113) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@3) (=> (= (ControlFlow 0 206995) 207087) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@3  (=> (and (and $abort_flag@3@@4 (= $abort_code@4@@4 $abort_code@4@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 $abort_code@4@@4) (= (ControlFlow 0 207127) 206764))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@3) (=> (and (= $abort_code@4@@4 $EXEC_FAILURE_CODE) (= $abort_flag@3@@4 true)) (and (=> (= (ControlFlow 0 207179) 207127) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@3) (=> (= (ControlFlow 0 207179) 206995) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= (ControlFlow 0 207177) 207179)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@3 ($Mutation_144511 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@3)) (and (= $abort_code@4@@4 $abort_code@3@@4) (= $abort_flag@3@@4 $abort_flag@2@@4))) (and (=> (= (ControlFlow 0 206949) 207127) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@3) (=> (= (ControlFlow 0 206949) 206995) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@3  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@3 (and (=> (= (ControlFlow 0 206927) 207177) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@3) (=> (= (ControlFlow 0 206927) 206949) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@3  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3) (= (ControlFlow 0 206923) 206764))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@3  (=> (and (not $abort_flag@2@@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@3) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@3 inline$$1_DiemAccount_exists_at$1$$t1@1@@3))) (and (=> (= (ControlFlow 0 206907) 206927) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@3) (=> (= (ControlFlow 0 206907) 206923) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@3  (=> (and (and $abort_flag@2@@4 (= $abort_code@3@@4 $abort_code@3@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 $abort_code@3@@4) (= (ControlFlow 0 207193) 206764))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@3 inline$$1_DiemAccount_exists_at$1$$t1@1@@3)) (and (=> (= (ControlFlow 0 206865) 207193) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@3) (=> (= (ControlFlow 0 206865) 206907) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@3  (=> (and inline$$Not$0$dst@1@@5 (= (ControlFlow 0 206871) 206865)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@3  (=> (and (and (not inline$$Not$0$dst@1@@5) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3) (= (ControlFlow 0 206758) 206764))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@3  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@3) (= inline$$Not$0$dst@1@@5 inline$$Not$0$dst@1@@5))) (and (=> (= (ControlFlow 0 206742) 206871) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@3) (=> (= (ControlFlow 0 206742) 206758) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@3))))))
(let ((inline$$Not$0$anon0_correct@@5  (=> (and (= inline$$Not$0$dst@1@@5  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3)) (= (ControlFlow 0 206702) 206742)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@3  (=> (and (not $abort_flag@2@@4) (= (ControlFlow 0 206708) 206702)) inline$$Not$0$anon0_correct@@5)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@3  (=> (and (and $abort_flag@2@@4 (= $abort_code@3@@4 $abort_code@3@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@3 $abort_code@3@@4) (= (ControlFlow 0 207207) 206764))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@3  (=> (not $abort_flag@1@@5) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@3 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@3)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3) (= $abort_flag@2@@4 $abort_flag@1@@5)) (and (= $abort_code@3@@4 $abort_code@2@@5) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@3))) (and (=> (= (ControlFlow 0 206578) 207207) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@3) (=> (= (ControlFlow 0 206578) 206708) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@3)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3  (=> (= $abort_flag@2@@4 true) (=> (and (= $abort_code@3@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@3)) (and (=> (= (ControlFlow 0 206526) 207207) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@3) (=> (= (ControlFlow 0 206526) 206708) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@3  (=> (and (and $abort_flag@1@@5 (= $abort_code@2@@5 $abort_code@2@@5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 $abort_code@2@@5) (= (ControlFlow 0 206592) 206526))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@3  (=> (= $abort_code@2@@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@5 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@3)) (and (=> (= (ControlFlow 0 206644) 206592) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@3) (=> (= (ControlFlow 0 206644) 206578) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= (ControlFlow 0 206642) 206644)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@3 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= $abort_code@2@@5 $abort_code@1@@5)) (and (= $abort_flag@1@@5 $abort_flag@0@@5) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@3))) (and (=> (= (ControlFlow 0 206544) 206592) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@3) (=> (= (ControlFlow 0 206544) 206578) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@3  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@4 (and (=> (= (ControlFlow 0 206530) 206642) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@3) (=> (= (ControlFlow 0 206530) 206544) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@3)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@3  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3) (= (ControlFlow 0 206520) 206526))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@3  (=> (and (not $abort_flag@0@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@3) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 inline$$1_DiemAccount_exists_at$0$$t1@1@@4))) (and (=> (= (ControlFlow 0 206504) 206530) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@3) (=> (= (ControlFlow 0 206504) 206520) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@3  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@3 $abort_code@1@@5) (= (ControlFlow 0 206658) 206526))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@3)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 inline$$1_DiemAccount_exists_at$0$$t1@1@@4)) (and (=> (= (ControlFlow 0 206462) 206658) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 206462) 206504) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@3))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@3  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (= (ControlFlow 0 206468) 206462)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@3  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@3)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@3)) 0) (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@3)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@3 _$t0@@5) (= _$t0@@5 _$t0@@5))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 _$t0@@5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@3) (= (ControlFlow 0 206664) 206468)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@3))))
(let ((anon10_Else_correct@@0  (=> (not $abort_flag@0@@5) (=> (and (= $t8@@0 _$t0@@5) (= (ControlFlow 0 207213) 206664)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@3))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct  (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1)) (and (=> (= (ControlFlow 0 205311) 209592) anon10_Then_correct@@0) (=> (= (ControlFlow 0 205311) 207213) anon10_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= (ControlFlow 0 205305) 205311))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5)) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0) (= (ControlFlow 0 205361) 205311))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (=> (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5)) (and (=> (= (ControlFlow 0 205317) 209592) anon10_Then_correct@@0) (=> (= (ControlFlow 0 205317) 207213) anon10_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 ($1_SlidingNonce_spec_try_record_nonce _$t0@@5 _$t1@@2)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1)))) (and (=> (= (ControlFlow 0 205289) 205317) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct) (=> (= (ControlFlow 0 205289) 205305) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1 ($Memory_112161 (|Store__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5 false) (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 205231) 205289)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0 ($Memory_112161 (|Store__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5 |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1|))) (= (ControlFlow 0 205331) 205289)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0) (and (=> (= (ControlFlow 0 205217) 205331) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct) (=> (= (ControlFlow 0 205217) 205231) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct  (=> (= _$t0@@5 _$t0@@5) (=> (and (= _$t1@@2 _$t1@@2) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@5)))) (and (=> (= (ControlFlow 0 205211) 205361) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct) (=> (= (ControlFlow 0 205211) 205217) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct))))))
(let ((anon0$1_correct@@5  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) 186537453))) (and (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@75) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@75)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@75)))) 0)) (= addr@@75 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@75))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16264:20|
 :skolemid |280|
)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@76) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@76) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@76)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@76)))) 0)) (= addr@@76 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@76))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16268:20|
 :skolemid |281|
)))) (=> (and (and (and (and (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@77) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@77)))
 :qid |AccountAdministrationScriptsandybpl.16272:20|
 :skolemid |282|
)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@78) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@78)))
 :qid |AccountAdministrationScriptsandybpl.16276:20|
 :skolemid |283|
))) (and (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@79) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@79)))
 :qid |AccountAdministrationScriptsandybpl.16280:20|
 :skolemid |284|
)) (|$IsValid'address'| _$t0@@5))) (and (and (|$IsValid'u64'| _$t1@@2) (|$IsValid'vec'u8''| _$t2)) (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@16)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@16))
 :qid |AccountAdministrationScriptsandybpl.16292:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@17)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@17) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@17))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@17))) 1))))
 :qid |AccountAdministrationScriptsandybpl.16296:20|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@17))
))))) (and (and (and (= $t4@@4 _$t0@@5) (= $t5@@3 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t4@@4))) 0))) (and (= $t6@@2 _$t0@@5) (let ((addr@@80 _$t0@@5))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@80)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@80) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@80)))))))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@2 _$t1@@2)) (and (= _$t2 _$t2) (= (ControlFlow 0 205365) 205211))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_78055| stream@@6) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@6) v@@44) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 204548) 205365)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 289067) 204548) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@6 () Int)
(declare-fun _$t2@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun _$t1@@3 () Int)
(declare-fun $t6@@3 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t3 () (Seq Int))
(declare-fun $t8@0@@1 () Int)
(declare-fun $abort_flag@8@@2 () Bool)
(declare-fun $abort_code@9@@2 () Int)
(declare-fun $abort_flag@6@@4 () Bool)
(declare-fun $abort_code@7@@3 () Int)
(declare-fun $abort_flag@4@@5 () Bool)
(declare-fun $abort_code@5@@5 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5@@1 () T@$Memory_141914)
(declare-fun $t5@@4 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4@@1 () T@$Memory_141914)
(declare-fun $1_DiemAccount_DiemAccount_$memory@3@@1 () T@$Memory_141914)
(declare-fun $abort_code@8@@3 () Int)
(declare-fun $abort_flag@7@@3 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t1@0@@1 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@1 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@2 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@2 () T@$Memory_141914)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@4 () T@$Memory_141914)
(declare-fun $abort_code@6@@5 () Int)
(declare-fun $abort_flag@5@@5 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@2| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0@@2 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@2 () T@$Mutation_98368)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4 () T@$Mutation_144555)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@4| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@4 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4 () T@$Mutation_144511)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@4 () T@$Memory_141914)
(declare-fun $abort_flag@3@@5 () Bool)
(declare-fun $abort_code@4@@5 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@4 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@4 () T@$Mutation_144511)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 () Int)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4 () Bool)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@4 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4 () Bool)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@4 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@4 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@5 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@4 () T@$Mutation_144511)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@4 () T@$Mutation_144555)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@4 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 () Bool)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 () Int)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 () Int)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@1@@0 () T@$Memory_112161)
(declare-fun $1_SlidingNonce_SlidingNonce_$memory@0@@0 () T@$Memory_112161)
(declare-fun |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0| () T@$1_SlidingNonce_SlidingNonce)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key_with_nonce_admin$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 292246) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 214960) (- 0 295226)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@6 _$t2@@0) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t7@@0))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3)))) (not (= (seq.len _$t3) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6)) (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@6 _$t2@@0) 0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t7@@0))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3)))) (not (= (seq.len _$t3) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0)) (=> (= (ControlFlow 0 214960) (- 0 295293)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6)) (= 5 $t8@0@@1)) (and (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@6 _$t2@@0) 0)) (= 7 $t8@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t7@@0)) (= 5 $t8@0@@1))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0) (= 1 $t8@0@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3))) (= 5 $t8@0@@1))) (and (not (= (seq.len _$t3) 32)) (= 7 $t8@0@@1))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0) (= 1 $t8@0@@1))) (= 7 $t8@0@@1)) (= 1 $t8@0@@1)) (= 5 $t8@0@@1)))))))
(let ((anon13_Then_correct@@0  (=> (and (and $abort_flag@8@@2 (= $abort_code@9@@2 $abort_code@9@@2)) (and (= $t8@0@@1 $abort_code@9@@2) (= (ControlFlow 0 214716) 214960))) L2_correct@@3)))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@6@@4 (= $abort_code@7@@3 $abort_code@7@@3)) (and (= $t8@0@@1 $abort_code@7@@3) (= (ControlFlow 0 214974) 214960))) L2_correct@@3)))
(let ((anon11_Then_correct@@0  (=> (and (and $abort_flag@4@@5 (= $abort_code@5@@5 $abort_code@5@@5)) (and (= $t8@0@@1 $abort_code@5@@5) (= (ControlFlow 0 214988) 214960))) L2_correct@@3)))
(let ((anon10_Then_correct@@1  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t8@0@@1 $abort_code@1@@6) (= (ControlFlow 0 215002) 214960))) L2_correct@@3)))
(let ((anon13_Else_correct@@0  (=> (not $abort_flag@8@@2) (and (=> (= (ControlFlow 0 214702) (- 0 295108)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6))) (and (=> (= (ControlFlow 0 214702) (- 0 295121)) (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@6 _$t2@@0) 0)))) (=> (not (not (= ($1_SlidingNonce_spec_try_record_nonce _$t0@@6 _$t2@@0) 0))) (and (=> (= (ControlFlow 0 214702) (- 0 295136)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 214702) (- 0 295148)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0)) (and (=> (= (ControlFlow 0 214702) (- 0 295159)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t6@@3)))) (and (=> (= (ControlFlow 0 214702) (- 0 295173)) (not (not (= (seq.len _$t3) 32)))) (=> (not (not (= (seq.len _$t3) 32))) (and (=> (= (ControlFlow 0 214702) (- 0 295187)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) _$t1@@3)))) 0)) (=> (= (ControlFlow 0 214702) (- 0 295198)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@5@@1) $t5@@4)) _$t3)))))))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@1  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1) (|p#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2@@1) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4@@1 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@1) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@1) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1)) (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3@@1)))) (= $1_DiemAccount_DiemAccount_$memory@5@@1 $1_DiemAccount_DiemAccount_$memory@4@@1)) (and (= $abort_code@9@@2 $abort_code@8@@3) (= $abort_flag@8@@2 $abort_flag@7@@3)))) (and (=> (= (ControlFlow 0 214474) 214716) anon13_Then_correct@@0) (=> (= (ControlFlow 0 214474) 214702) anon13_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1  (=> (= $1_DiemAccount_DiemAccount_$memory@5@@1 $1_DiemAccount_DiemAccount_$memory@3@@1) (=> (and (= $abort_code@9@@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1) (= $abort_flag@8@@2 true)) (and (=> (= (ControlFlow 0 214320) 214716) anon13_Then_correct@@0) (=> (= (ControlFlow 0 214320) 214702) anon13_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@1  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0@@1) (= (ControlFlow 0 214500) 214320))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@1  (=> (not $abort_flag@7@@3) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0@@1  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1@@1))) 0))))) (and (=> (= (ControlFlow 0 214392) 214500) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct@@1) (=> (= (ControlFlow 0 214392) 214474) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@1  (=> (and (and $abort_flag@7@@3 (= $abort_code@8@@3 $abort_code@8@@3)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 $abort_code@8@@3) (= (ControlFlow 0 214514) 214320))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@1  (=> (= $abort_flag@7@@3 true) (=> (and (= $abort_code@8@@3 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@1)) (and (=> (= (ControlFlow 0 214566) 214514) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 214566) 214392) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1)) (= (ControlFlow 0 214564) 214566)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@1 ($Mutation_144511 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1))) (= $abort_flag@7@@3 $abort_flag@6@@4)) (and (= $abort_code@8@@3 $abort_code@7@@3) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1@@1))) (and (=> (= (ControlFlow 0 214350) 214514) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 214350) 214392) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@1  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1@@1 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4))) (and (=> (= (ControlFlow 0 214328) 214564) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 214328) 214350) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1@@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 214314) 214320))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@1  (=> (and (not $abort_flag@6@@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@1 inline$$1_DiemAccount_exists_at$3$$t1@1@@1))) (and (=> (= (ControlFlow 0 214298) 214328) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct@@1) (=> (= (ControlFlow 0 214298) 214314) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@1  (=> (and (and $abort_flag@6@@4 (= $abort_code@7@@3 $abort_code@7@@3)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1@@1 $abort_code@7@@3) (= (ControlFlow 0 214580) 214320))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct@@1  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@3@@1) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1)) (= inline$$1_DiemAccount_exists_at$3$$t1@1@@1 inline$$1_DiemAccount_exists_at$3$$t1@1@@1)) (and (=> (= (ControlFlow 0 214256) 214580) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 214256) 214298) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@1  (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t1@0@@1)) 0) (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0@@1)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0@@1)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1@@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4)) (= (ControlFlow 0 214262) 214256))) inline$$1_DiemAccount_exists_at$3$anon0_correct@@1))))
(let ((anon12_Else_correct@@0  (=> (and (not $abort_flag@6@@4) (= (ControlFlow 0 214584) 214262)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@2  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2 ($Mutation_98368 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@2 ($Mutation_98368 (|l#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2) (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@2) _$t3)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2@@2 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@4) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@4) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2)) (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@2)))) (= $abort_code@7@@3 $abort_code@6@@5)) (and (= $1_DiemAccount_DiemAccount_$memory@3@@1 $1_DiemAccount_DiemAccount_$memory@2@@2) (= $abort_flag@6@@4 $abort_flag@5@@5)))) (and (=> (= (ControlFlow 0 213561) 214974) anon12_Then_correct@@0) (=> (= (ControlFlow 0 213561) 214584) anon12_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2  (=> (= $abort_code@7@@3 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2) (=> (and (= $1_DiemAccount_DiemAccount_$memory@3@@1 $1_DiemAccount_DiemAccount_$memory@1@@4) (= $abort_flag@6@@4 true)) (and (=> (= (ControlFlow 0 213357) 214974) anon12_Then_correct@@0) (=> (= (ControlFlow 0 213357) 214584) anon12_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2) (= (ControlFlow 0 213511) 213357))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@2  (=> (and (and (and (not $abort_flag@5@@5) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 (= |inline$$1_Vector_length'u8'$0$l@1@@2| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@2)))) (and (=> (= (ControlFlow 0 213495) 213561) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@2) (=> (= (ControlFlow 0 213495) 213511) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@2  (=> (and (and $abort_flag@5@@5 (= $abort_code@6@@5 $abort_code@6@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 $abort_code@6@@5) (= (ControlFlow 0 213575) 213357))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@2| (seq.len _$t3)) (and (=> (= (ControlFlow 0 213437) 213575) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@2) (=> (= (ControlFlow 0 213437) 213495) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@2  (=> (and (and (not $abort_flag@5@@5) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| (|v#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2|) (= (ControlFlow 0 213443) 213437))) |inline$$1_Vector_length'u8'$0$anon0_correct@@2|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@2  (=> (and (and $abort_flag@5@@5 (= $abort_code@6@@5 $abort_code@6@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 $abort_code@6@@5) (= (ControlFlow 0 213589) 213357))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@2  (=> (= $abort_flag@5@@5 true) (=> (and (= $abort_code@6@@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@2)) (and (=> (= (ControlFlow 0 213641) 213589) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 213641) 213443) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2)) (= (ControlFlow 0 213639) 213641)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@2 ($Mutation_144511 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2))) (= $abort_flag@5@@5 $abort_flag@4@@5)) (and (= $abort_code@6@@5 $abort_code@5@@5) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@2))) (and (=> (= (ControlFlow 0 213387) 213589) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 213387) 213443) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@2  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@2 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4))) (and (=> (= (ControlFlow 0 213365) 213639) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@2) (=> (= (ControlFlow 0 213365) 213387) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2) (= (ControlFlow 0 213351) 213357))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@2  (=> (and (not $abort_flag@4@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@2) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@2 inline$$1_DiemAccount_exists_at$2$$t1@1@@2))) (and (=> (= (ControlFlow 0 213335) 213365) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@2) (=> (= (ControlFlow 0 213335) 213351) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@2  (=> (and (and $abort_flag@4@@5 (= $abort_code@5@@5 $abort_code@5@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@2 $abort_code@5@@5) (= (ControlFlow 0 213655) 213357))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@2  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory@1@@4) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@2 inline$$1_DiemAccount_exists_at$2$$t1@1@@2)) (and (=> (= (ControlFlow 0 213293) 213655) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@2) (=> (= (ControlFlow 0 213293) 213335) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t2@0@@2)) 0) (=> (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@2)) 0) (= (seq.len (|p#$Mutation_98368| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@2)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4) (= _$t3 _$t3)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@2 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4)) (= (ControlFlow 0 213299) 213293))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@2)))))
(let ((anon11_Else_correct@@0  (=> (not $abort_flag@4@@5) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4) (= (ControlFlow 0 213659) 213299)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@2))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@4  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4 ($Mutation_144555 (|l#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4) (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@4|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@4) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4 ($Mutation_144511 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@4) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@4 ($Memory_141914 (|Store__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4)) (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@4)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4))) (and (and (= $abort_flag@4@@5 $abort_flag@3@@5) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@4)) (and (= $abort_code@5@@5 $abort_code@4@@5) (= $1_DiemAccount_DiemAccount_$memory@1@@4 $1_DiemAccount_DiemAccount_$memory@0@@4)))) (and (=> (= (ControlFlow 0 212497) 214988) anon11_Then_correct@@0) (=> (= (ControlFlow 0 212497) 213659) anon11_Else_correct@@0))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4  (=> (and (and (= $abort_flag@4@@5 true) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@4)) (and (= $abort_code@5@@5 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4) (= $1_DiemAccount_DiemAccount_$memory@1@@4 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 212174) 214988) anon11_Then_correct@@0) (=> (= (ControlFlow 0 212174) 213659) anon11_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@4  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@4) (= (ControlFlow 0 212523) 212174))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@4  (=> (and (not $abort_flag@3@@5) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@4|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4 ($Mutation_144555 (|l#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) (seq.++ (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@4 (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@4 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@4))) 0)))) (and (=> (= (ControlFlow 0 212405) 212523) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@4) (=> (= (ControlFlow 0 212405) 212497) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@4  (=> (and (and $abort_flag@3@@5 (= $abort_code@4@@5 $abort_code@4@@5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 $abort_code@4@@5) (= (ControlFlow 0 212537) 212174))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@4) (=> (and (= $abort_code@4@@5 $EXEC_FAILURE_CODE) (= $abort_flag@3@@5 true)) (and (=> (= (ControlFlow 0 212589) 212537) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@4) (=> (= (ControlFlow 0 212589) 212405) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= (ControlFlow 0 212587) 212589)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@4 ($Mutation_144511 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@4)) (and (= $abort_code@4@@5 $abort_code@3@@5) (= $abort_flag@3@@5 $abort_flag@2@@5))) (and (=> (= (ControlFlow 0 212359) 212537) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@4) (=> (= (ControlFlow 0 212359) 212405) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@4  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@4 (and (=> (= (ControlFlow 0 212337) 212587) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@4) (=> (= (ControlFlow 0 212337) 212359) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@4)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@4  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4) (= (ControlFlow 0 212333) 212174))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@4  (=> (and (not $abort_flag@2@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@4) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@4 inline$$1_DiemAccount_exists_at$1$$t1@1@@4))) (and (=> (= (ControlFlow 0 212317) 212337) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@4) (=> (= (ControlFlow 0 212317) 212333) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@4  (=> (and (and $abort_flag@2@@5 (= $abort_code@3@@5 $abort_code@3@@5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 $abort_code@3@@5) (= (ControlFlow 0 212603) 212174))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@4 inline$$1_DiemAccount_exists_at$1$$t1@1@@4)) (and (=> (= (ControlFlow 0 212275) 212603) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@4) (=> (= (ControlFlow 0 212275) 212317) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@4  (=> (and inline$$Not$0$dst@1@@6 (= (ControlFlow 0 212281) 212275)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@4  (=> (and (and (not inline$$Not$0$dst@1@@6) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4) (= (ControlFlow 0 212168) 212174))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@4  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@4) (= inline$$Not$0$dst@1@@6 inline$$Not$0$dst@1@@6))) (and (=> (= (ControlFlow 0 212152) 212281) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@4) (=> (= (ControlFlow 0 212152) 212168) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@4))))))
(let ((inline$$Not$0$anon0_correct@@6  (=> (and (= inline$$Not$0$dst@1@@6  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4)) (= (ControlFlow 0 212112) 212152)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@4  (=> (and (not $abort_flag@2@@5) (= (ControlFlow 0 212118) 212112)) inline$$Not$0$anon0_correct@@6)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@4  (=> (and (and $abort_flag@2@@5 (= $abort_code@3@@5 $abort_code@3@@5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@4 $abort_code@3@@5) (= (ControlFlow 0 212617) 212174))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@4  (=> (not $abort_flag@1@@6) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@4 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@4)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4) (= $abort_flag@2@@5 $abort_flag@1@@6)) (and (= $abort_code@3@@5 $abort_code@2@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@4))) (and (=> (= (ControlFlow 0 211988) 212617) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@4) (=> (= (ControlFlow 0 211988) 212118) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@4)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4  (=> (= $abort_flag@2@@5 true) (=> (and (= $abort_code@3@@5 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@4)) (and (=> (= (ControlFlow 0 211936) 212617) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@4) (=> (= (ControlFlow 0 211936) 212118) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@4  (=> (and (and $abort_flag@1@@6 (= $abort_code@2@@6 $abort_code@2@@6)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 $abort_code@2@@6) (= (ControlFlow 0 212002) 211936))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@4  (=> (= $abort_code@2@@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@6 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@4)) (and (=> (= (ControlFlow 0 212054) 212002) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@4) (=> (= (ControlFlow 0 212054) 211988) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= (ControlFlow 0 212052) 212054)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@4 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= $abort_code@2@@6 $abort_code@1@@6)) (and (= $abort_flag@1@@6 $abort_flag@0@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@4))) (and (=> (= (ControlFlow 0 211954) 212002) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@4) (=> (= (ControlFlow 0 211954) 211988) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@4  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@5 (and (=> (= (ControlFlow 0 211940) 212052) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@4) (=> (= (ControlFlow 0 211940) 211954) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@4)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@4  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@5) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4) (= (ControlFlow 0 211930) 211936))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@4  (=> (and (not $abort_flag@0@@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@4) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 inline$$1_DiemAccount_exists_at$0$$t1@1@@5))) (and (=> (= (ControlFlow 0 211914) 211940) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@4) (=> (= (ControlFlow 0 211914) 211930) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@4  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@4 $abort_code@1@@6) (= (ControlFlow 0 212068) 211936))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@4)))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@5  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 inline$$1_DiemAccount_exists_at$0$$t1@1@@5)) (and (=> (= (ControlFlow 0 211872) 212068) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 211872) 211914) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@4))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@4  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (= (ControlFlow 0 211878) 211872)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@5)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@4  (=> (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t1@0@@4)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_144511| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@4)) 0) (= (seq.len (|p#$Mutation_144555| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@4)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@4 _$t1@@3) (= _$t1@@3 _$t1@@3))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 _$t1@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@4) (= (ControlFlow 0 212074) 211878)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@4))))
(let ((anon10_Else_correct@@1  (=> (not $abort_flag@0@@6) (=> (and (= $t9@@1 _$t1@@3) (= (ControlFlow 0 212623) 212074)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@4))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0  (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0)) (and (=> (= (ControlFlow 0 210721) 215002) anon10_Then_correct@@1) (=> (= (ControlFlow 0 210721) 212623) anon10_Else_correct@@1)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0  (=> (and (and (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= (ControlFlow 0 210715) 210721))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0)))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6)) (= 5 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t7@0@@0) (= (ControlFlow 0 210771) 210721))) inline$$1_SlidingNonce_record_nonce_or_abort$0$L3_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0  (=> inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (=> (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6)) (and (=> (= (ControlFlow 0 210727) 215002) anon10_Then_correct@@1) (=> (= (ControlFlow 0 210727) 212623) anon10_Else_correct@@1))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0  (=> (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0) (=> (and (and (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 ($1_SlidingNonce_spec_try_record_nonce _$t0@@6 _$t2@@0)) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0)) (and (|$IsValid'u64'| 0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t5@0@@0 0)))) (and (and (|$IsValid'u64'| inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 7)) (and (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t10@0@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0 inline$$1_SlidingNonce_record_nonce_or_abort$0$$t9@1@@0)))) (and (=> (= (ControlFlow 0 210699) 210727) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 210699) 210715) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon10_Else_correct@@0))))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0  (=> (not |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0|) (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@1@@0 ($Memory_112161 (|Store__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6 false) (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory))) (= (ControlFlow 0 210641) 210699)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0  (=> |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'bool'@1@@0| (=> (and (= $1_SlidingNonce_SlidingNonce_$memory@0@@0 ($Memory_112161 (|Store__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6 true) (|Store__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6 |inline$$1_SlidingNonce_record_nonce_or_abort$0$$temp_0'$1_SlidingNonce_SlidingNonce'@1@@0|))) (= (ControlFlow 0 210741) 210699)) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon5_correct@@0))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0  (=> (not inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0) (and (=> (= (ControlFlow 0 210627) 210741) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 210627) 210641) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon9_Else_correct@@0)))))
(let ((inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0  (=> (= _$t0@@6 _$t0@@6) (=> (and (= _$t2@@0 _$t2@@0) (= inline$$1_SlidingNonce_record_nonce_or_abort$0$$t6@0@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) _$t0@@6)))) (and (=> (= (ControlFlow 0 210621) 210771) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Then_correct@@0) (=> (= (ControlFlow 0 210621) 210627) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon8_Else_correct@@0))))))
(let ((anon0$1_correct@@6  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) 186537453)) (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@81) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@81)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@81)))) 0)) (= addr@@81 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@81))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16486:20|
 :skolemid |287|
))) (=> (and (and (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@82) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@82) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@82)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@82)))) 0)) (= addr@@82 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@82))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16490:20|
 :skolemid |288|
)) (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@83) (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@83)))
 :qid |AccountAdministrationScriptsandybpl.16494:20|
 :skolemid |289|
))) (and (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@84) (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@84)))
 :qid |AccountAdministrationScriptsandybpl.16498:20|
 :skolemid |290|
)) (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143000| |$1_DiemAccount_Balance'#0'_$memory|) addr@@85) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@85)))
 :qid |AccountAdministrationScriptsandybpl.16502:20|
 :skolemid |291|
)))) (=> (and (and (and (and (|$IsValid'address'| _$t0@@6) (|$IsValid'address'| _$t1@@3)) (and (|$IsValid'u64'| _$t2@@0) (|$IsValid'vec'u8''| _$t3))) (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@18)))
(|$IsValid'$1_SlidingNonce_SlidingNonce'| $rsc@@18))
 :qid |AccountAdministrationScriptsandybpl.16517:20|
 :skolemid |292|
 :pattern ( (|Select__T@[Int]$1_SlidingNonce_SlidingNonce_| (|contents#$Memory_112161| $1_SlidingNonce_SlidingNonce_$memory) $a_0@@18))
)) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@19)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@19) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@19))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@19))) 1))))
 :qid |AccountAdministrationScriptsandybpl.16521:20|
 :skolemid |293|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $a_0@@19))
))) (and (= $t5@@4 _$t1@@3) (= $t6@@3 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) $t5@@4))) 0))))) (and (and (and (= $t7@@0 _$t1@@3) (let ((addr@@86 _$t1@@3))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109124| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_141914| $1_DiemAccount_DiemAccount_$memory) addr@@86)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@86) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_140960| $1_AccountFreezing_FreezingBit_$memory) addr@@86))))))) (and (let ((addr@@87 _$t0@@6))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109617| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_109617| $1_Roles_RoleId_$memory) addr@@87)) 0))) (= _$t0@@6 _$t0@@6))) (and (and (= _$t1@@3 _$t1@@3) (= _$t2@@0 _$t2@@0)) (and (= _$t3 _$t3) (= (ControlFlow 0 210775) 210621))))) inline$$1_SlidingNonce_record_nonce_or_abort$0$anon0_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_78055_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_78055| stream@@7) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_78055| stream@@7) v@@45) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 209940) 210775)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 292246) 209940) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
