(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_94704 0)) ((($Memory_94704 (|domain#$Memory_94704| |T@[Int]Bool|) (|contents#$Memory_94704| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_144687 0)) ((($Memory_144687 (|domain#$Memory_144687| |T@[Int]Bool|) (|contents#$Memory_144687| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_141589 0)) ((($Memory_141589 (|domain#$Memory_141589| |T@[Int]Bool|) (|contents#$Memory_141589| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_139594 0)) ((($Memory_139594 (|domain#$Memory_139594| |T@[Int]Bool|) (|contents#$Memory_139594| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_139874 0)) ((($Memory_139874 (|domain#$Memory_139874| |T@[Int]Bool|) (|contents#$Memory_139874| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_139561 0)) ((($Memory_139561 (|domain#$Memory_139561| |T@[Int]Bool|) (|contents#$Memory_139561| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((|T@$1_DesignatedDealer_TierInfo'#0'| 0)) (((|$1_DesignatedDealer_TierInfo'#0'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| Int) (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| Int) (|$tiers#$1_DesignatedDealer_TierInfo'#0'| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_TierInfo'#0'| 0)
(declare-datatypes ((T@$Memory_130111 0)) ((($Memory_130111 (|domain#$Memory_130111| |T@[Int]Bool|) (|contents#$Memory_130111| |T@[Int]$1_DesignatedDealer_TierInfo'#0'|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_129812 0)) ((($Memory_129812 (|domain#$Memory_129812| |T@[Int]Bool|) (|contents#$Memory_129812| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_127322 0)) ((($Memory_127322 (|domain#$Memory_127322| |T@[Int]Bool|) (|contents#$Memory_127322| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_127258 0)) ((($Memory_127258 (|domain#$Memory_127258| |T@[Int]Bool|) (|contents#$Memory_127258| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_125880 0)) ((($Memory_125880 (|domain#$Memory_125880| |T@[Int]Bool|) (|contents#$Memory_125880| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_122759 0)) ((($Memory_122759 (|domain#$Memory_122759| |T@[Int]Bool|) (|contents#$Memory_122759| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_122540 0)) ((($Memory_122540 (|domain#$Memory_122540| |T@[Int]Bool|) (|contents#$Memory_122540| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_141378 0)) ((($Memory_141378 (|domain#$Memory_141378| |T@[Int]Bool|) (|contents#$Memory_141378| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_114385 0)) ((($Memory_114385 (|domain#$Memory_114385| |T@[Int]Bool|) (|contents#$Memory_114385| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114298 0)) ((($Memory_114298 (|domain#$Memory_114298| |T@[Int]Bool|) (|contents#$Memory_114298| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114211 0)) ((($Memory_114211 (|domain#$Memory_114211| |T@[Int]Bool|) (|contents#$Memory_114211| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_109578 0)) ((($Memory_109578 (|domain#$Memory_109578| |T@[Int]Bool|) (|contents#$Memory_109578| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_109491 0)) ((($Memory_109491 (|domain#$Memory_109491| |T@[Int]Bool|) (|contents#$Memory_109491| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_114740 0)) ((($Memory_114740 (|domain#$Memory_114740| |T@[Int]Bool|) (|contents#$Memory_114740| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_115165 0)) ((($Memory_115165 (|domain#$Memory_115165| |T@[Int]Bool|) (|contents#$Memory_115165| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_114649 0)) ((($Memory_114649 (|domain#$Memory_114649| |T@[Int]Bool|) (|contents#$Memory_114649| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_124592 0)) ((($Memory_124592 (|domain#$Memory_124592| |T@[Int]Bool|) (|contents#$Memory_124592| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_115066 0)) ((($Memory_115066 (|domain#$Memory_115066| |T@[Int]Bool|) (|contents#$Memory_115066| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114558 0)) ((($Memory_114558 (|domain#$Memory_114558| |T@[Int]Bool|) (|contents#$Memory_114558| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_126192 0)) ((($Memory_126192 (|domain#$Memory_126192| |T@[Int]Bool|) (|contents#$Memory_126192| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_114967 0)) ((($Memory_114967 (|domain#$Memory_114967| |T@[Int]Bool|) (|contents#$Memory_114967| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_109039 0)) ((($Memory_109039 (|domain#$Memory_109039| |T@[Int]Bool|) (|contents#$Memory_109039| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_108914 0)) ((($Memory_108914 (|domain#$Memory_108914| |T@[Int]Bool|) (|contents#$Memory_108914| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_108850 0)) ((($Memory_108850 (|domain#$Memory_108850| |T@[Int]Bool|) (|contents#$Memory_108850| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_104923 0)) ((($Memory_104923 (|domain#$Memory_104923| |T@[Int]Bool|) (|contents#$Memory_104923| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_104836 0)) ((($Memory_104836 (|domain#$Memory_104836| |T@[Int]Bool|) (|contents#$Memory_104836| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_104749 0)) ((($Memory_104749 (|domain#$Memory_104749| |T@[Int]Bool|) (|contents#$Memory_104749| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_104662 0)) ((($Memory_104662 (|domain#$Memory_104662| |T@[Int]Bool|) (|contents#$Memory_104662| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_104575 0)) ((($Memory_104575 (|domain#$Memory_104575| |T@[Int]Bool|) (|contents#$Memory_104575| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_105188 0)) ((($Memory_105188 (|domain#$Memory_105188| |T@[Int]Bool|) (|contents#$Memory_105188| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_103701 0)) ((($Memory_103701 (|domain#$Memory_103701| |T@[Int]Bool|) (|contents#$Memory_103701| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_103767 0)) ((($Memory_103767 (|domain#$Memory_103767| |T@[Int]Bool|) (|contents#$Memory_103767| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_103620 0)) ((($Memory_103620 (|domain#$Memory_103620| |T@[Int]Bool|) (|contents#$Memory_103620| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_103539 0)) ((($Memory_103539 (|domain#$Memory_103539| |T@[Int]Bool|) (|contents#$Memory_103539| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_103458 0)) ((($Memory_103458 (|domain#$Memory_103458| |T@[Int]Bool|) (|contents#$Memory_103458| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_103377 0)) ((($Memory_103377 (|domain#$Memory_103377| |T@[Int]Bool|) (|contents#$Memory_103377| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_103263 0)) ((($Memory_103263 (|domain#$Memory_103263| |T@[Int]Bool|) (|contents#$Memory_103263| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_140515 0)) ((($Memory_140515 (|domain#$Memory_140515| |T@[Int]Bool|) (|contents#$Memory_140515| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_103296 0)) ((($Memory_103296 (|domain#$Memory_103296| |T@[Int]Bool|) (|contents#$Memory_103296| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_102752 0)) ((($Memory_102752 (|domain#$Memory_102752| |T@[Int]Bool|) (|contents#$Memory_102752| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_102194 0)) ((($Memory_102194 (|domain#$Memory_102194| |T@[Int]Bool|) (|contents#$Memory_102194| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_101925 0)) ((($Memory_101925 (|domain#$Memory_101925| |T@[Int]Bool|) (|contents#$Memory_101925| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_101456 0)) ((($Memory_101456 (|domain#$Memory_101456| |T@[Int]Bool|) (|contents#$Memory_101456| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_69257 0)) (((Multiset_69257 (|v#Multiset_69257| |T@[$EventRep]Int|) (|l#Multiset_69257| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_69257| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_69257|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_142416 0)) ((($Mutation_142416 (|l#$Mutation_142416| T@$Location) (|p#$Mutation_142416| (Seq Int)) (|v#$Mutation_142416| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_142372 0)) ((($Mutation_142372 (|l#$Mutation_142372| T@$Location) (|p#$Mutation_142372| (Seq Int)) (|v#$Mutation_142372| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_137032 0)) ((($Mutation_137032 (|l#$Mutation_137032| T@$Location) (|p#$Mutation_137032| (Seq Int)) (|v#$Mutation_137032| T@$1_DesignatedDealer_Dealer) ) ) ))
(declare-datatypes ((T@$Mutation_35391 0)) ((($Mutation_35391 (|l#$Mutation_35391| T@$Location) (|p#$Mutation_35391| (Seq Int)) (|v#$Mutation_35391| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_121274 0)) ((($Mutation_121274 (|l#$Mutation_121274| T@$Location) (|p#$Mutation_121274| (Seq Int)) (|v#$Mutation_121274| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_107603 0)) ((($Mutation_107603 (|l#$Mutation_107603| T@$Location) (|p#$Mutation_107603| (Seq Int)) (|v#$Mutation_107603| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_95332 0)) ((($Mutation_95332 (|l#$Mutation_95332| T@$Location) (|p#$Mutation_95332| (Seq Int)) (|v#$Mutation_95332| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_89565 0)) ((($Mutation_89565 (|l#$Mutation_89565| T@$Location) (|p#$Mutation_89565| (Seq Int)) (|v#$Mutation_89565| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_88819 0)) ((($Mutation_88819 (|l#$Mutation_88819| T@$Location) (|p#$Mutation_88819| (Seq Int)) (|v#$Mutation_88819| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_87379 0)) ((($Mutation_87379 (|l#$Mutation_87379| T@$Location) (|p#$Mutation_87379| (Seq Int)) (|v#$Mutation_87379| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_86633 0)) ((($Mutation_86633 (|l#$Mutation_86633| T@$Location) (|p#$Mutation_86633| (Seq Int)) (|v#$Mutation_86633| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_85193 0)) ((($Mutation_85193 (|l#$Mutation_85193| T@$Location) (|p#$Mutation_85193| (Seq Int)) (|v#$Mutation_85193| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_84447 0)) ((($Mutation_84447 (|l#$Mutation_84447| T@$Location) (|p#$Mutation_84447| (Seq Int)) (|v#$Mutation_84447| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_83007 0)) ((($Mutation_83007 (|l#$Mutation_83007| T@$Location) (|p#$Mutation_83007| (Seq Int)) (|v#$Mutation_83007| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_82261 0)) ((($Mutation_82261 (|l#$Mutation_82261| T@$Location) (|p#$Mutation_82261| (Seq Int)) (|v#$Mutation_82261| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_80821 0)) ((($Mutation_80821 (|l#$Mutation_80821| T@$Location) (|p#$Mutation_80821| (Seq Int)) (|v#$Mutation_80821| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_80075 0)) ((($Mutation_80075 (|l#$Mutation_80075| T@$Location) (|p#$Mutation_80075| (Seq Int)) (|v#$Mutation_80075| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_78635 0)) ((($Mutation_78635 (|l#$Mutation_78635| T@$Location) (|p#$Mutation_78635| (Seq Int)) (|v#$Mutation_78635| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_77889 0)) ((($Mutation_77889 (|l#$Mutation_77889| T@$Location) (|p#$Mutation_77889| (Seq Int)) (|v#$Mutation_77889| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_76449 0)) ((($Mutation_76449 (|l#$Mutation_76449| T@$Location) (|p#$Mutation_76449| (Seq Int)) (|v#$Mutation_76449| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_75703 0)) ((($Mutation_75703 (|l#$Mutation_75703| T@$Location) (|p#$Mutation_75703| (Seq Int)) (|v#$Mutation_75703| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_74263 0)) ((($Mutation_74263 (|l#$Mutation_74263| T@$Location) (|p#$Mutation_74263| (Seq Int)) (|v#$Mutation_74263| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_73517 0)) ((($Mutation_73517 (|l#$Mutation_73517| T@$Location) (|p#$Mutation_73517| (Seq Int)) (|v#$Mutation_73517| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_72039 0)) ((($Mutation_72039 (|l#$Mutation_72039| T@$Location) (|p#$Mutation_72039| (Seq Int)) (|v#$Mutation_72039| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_71293 0)) ((($Mutation_71293 (|l#$Mutation_71293| T@$Location) (|p#$Mutation_71293| (Seq Int)) (|v#$Mutation_71293| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnWithMetadata'#0''| (|T@$1_Diem_PreburnWithMetadata'#0'|) Bool)
(declare-fun |$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|) |T@$1_Diem_PreburnWithMetadata'#0'|) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_69257_| (|T@[$1_Event_EventHandle]Multiset_69257| T@$1_Event_EventHandle) T@Multiset_69257)
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
(declare-fun |$IsValid'$1_Diem_MintCapability'#0''| (|T@$1_Diem_MintCapability'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_MintEvent'| (T@$1_Diem_MintEvent) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|T@$1_Diem_Preburn'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|T@$1_Diem_Preburn'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_Preburn'#0''| (|T@$1_Diem_Preburn'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnEvent'| (T@$1_Diem_PreburnEvent) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| (|T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| (|T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_PreburnQueue'#0''| (|T@$1_Diem_PreburnQueue'#0'|) Bool)
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
(declare-fun |$IsValid'$1_DesignatedDealer_TierInfo'#0''| (|T@$1_DesignatedDealer_TierInfo'#0'|) Bool)
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
(declare-fun ReverseVec_13287 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_62616 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_61434 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_61631 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_61828 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_62813 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_62419 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_62222 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_62025 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_61237 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_69257| |T@[$1_Event_EventHandle]Multiset_69257|) |T@[$1_Event_EventHandle]Multiset_69257|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DesignatedDealerandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DesignatedDealerandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DesignatedDealerandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DesignatedDealerandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DesignatedDealerandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DesignatedDealerandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DesignatedDealerandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DesignatedDealerandybpl.590:13|
 :skolemid |15|
))))
 :qid |DesignatedDealerandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DesignatedDealerandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DesignatedDealerandybpl.603:17|
 :skolemid |18|
)))))
 :qid |DesignatedDealerandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DesignatedDealerandybpl.770:13|
 :skolemid |20|
))))
 :qid |DesignatedDealerandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DesignatedDealerandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DesignatedDealerandybpl.783:17|
 :skolemid |23|
)))))
 :qid |DesignatedDealerandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DesignatedDealerandybpl.950:13|
 :skolemid |25|
))))
 :qid |DesignatedDealerandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DesignatedDealerandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DesignatedDealerandybpl.963:17|
 :skolemid |28|
)))))
 :qid |DesignatedDealerandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DesignatedDealerandybpl.1130:13|
 :skolemid |30|
))))
 :qid |DesignatedDealerandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DesignatedDealerandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DesignatedDealerandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DesignatedDealerandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |DesignatedDealerandybpl.1310:13|
 :skolemid |35|
))))
 :qid |DesignatedDealerandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DesignatedDealerandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DesignatedDealerandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DesignatedDealerandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DesignatedDealerandybpl.1490:13|
 :skolemid |40|
))))
 :qid |DesignatedDealerandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DesignatedDealerandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DesignatedDealerandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DesignatedDealerandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DesignatedDealerandybpl.1670:13|
 :skolemid |45|
))))
 :qid |DesignatedDealerandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DesignatedDealerandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DesignatedDealerandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DesignatedDealerandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DesignatedDealerandybpl.1850:13|
 :skolemid |50|
))))
 :qid |DesignatedDealerandybpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DesignatedDealerandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DesignatedDealerandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DesignatedDealerandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |DesignatedDealerandybpl.2030:13|
 :skolemid |55|
))))
 :qid |DesignatedDealerandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DesignatedDealerandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DesignatedDealerandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DesignatedDealerandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |DesignatedDealerandybpl.2210:13|
 :skolemid |60|
))))
 :qid |DesignatedDealerandybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DesignatedDealerandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DesignatedDealerandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DesignatedDealerandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u64'| (seq.nth v@@24 i@@30)))
 :qid |DesignatedDealerandybpl.2390:13|
 :skolemid |65|
))))
 :qid |DesignatedDealerandybpl.2388:29|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u64''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u64'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DesignatedDealerandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DesignatedDealerandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DesignatedDealerandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u64'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'u8'| (seq.nth v@@26 i@@33)))
 :qid |DesignatedDealerandybpl.2570:13|
 :skolemid |70|
))))
 :qid |DesignatedDealerandybpl.2568:28|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'u8''| v@@26))
)))
(assert (forall ((v@@27 (Seq Int)) (e@@10 Int) ) (! (let ((i@@34 (|$IndexOfVec'u8'| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |DesignatedDealerandybpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |DesignatedDealerandybpl.2583:17|
 :skolemid |73|
)))))
 :qid |DesignatedDealerandybpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'u8'| v@@27 e@@10))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DesignatedDealerandybpl.2756:15|
 :skolemid |75|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DesignatedDealerandybpl.2772:15|
 :skolemid |76|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DesignatedDealerandybpl.2819:15|
 :skolemid |77|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DesignatedDealerandybpl.2822:15|
 :skolemid |78|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_69257| stream) 0) (forall ((v@@28 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream) v@@28) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DesignatedDealerandybpl.2939:80|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DesignatedDealerandybpl.2945:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DesignatedDealerandybpl.2995:82|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DesignatedDealerandybpl.3001:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DesignatedDealerandybpl.3051:80|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DesignatedDealerandybpl.3057:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DesignatedDealerandybpl.3107:79|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DesignatedDealerandybpl.3113:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DesignatedDealerandybpl.3163:76|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DesignatedDealerandybpl.3169:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DesignatedDealerandybpl.3219:78|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DesignatedDealerandybpl.3225:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DesignatedDealerandybpl.3275:74|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DesignatedDealerandybpl.3281:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DesignatedDealerandybpl.3331:69|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DesignatedDealerandybpl.3337:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DesignatedDealerandybpl.3387:70|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DesignatedDealerandybpl.3393:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DesignatedDealerandybpl.3443:60|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DesignatedDealerandybpl.3449:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DesignatedDealerandybpl.3499:66|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DesignatedDealerandybpl.3505:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DesignatedDealerandybpl.3555:60|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DesignatedDealerandybpl.3561:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DesignatedDealerandybpl.3611:63|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DesignatedDealerandybpl.3617:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DesignatedDealerandybpl.3667:79|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DesignatedDealerandybpl.3673:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DesignatedDealerandybpl.3723:82|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DesignatedDealerandybpl.3729:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DesignatedDealerandybpl.3779:88|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DesignatedDealerandybpl.3785:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DesignatedDealerandybpl.3835:72|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DesignatedDealerandybpl.3841:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DesignatedDealerandybpl.3920:61|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DesignatedDealerandybpl.4087:36|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DesignatedDealerandybpl.4106:71|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DesignatedDealerandybpl.4170:46|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DesignatedDealerandybpl.4183:64|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DesignatedDealerandybpl.4196:75|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DesignatedDealerandybpl.4209:72|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DesignatedDealerandybpl.4238:55|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DesignatedDealerandybpl.4260:46|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DesignatedDealerandybpl.4278:49|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DesignatedDealerandybpl.4353:71|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DesignatedDealerandybpl.4367:91|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DesignatedDealerandybpl.4381:113|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |DesignatedDealerandybpl.4395:75|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |DesignatedDealerandybpl.4409:73|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |DesignatedDealerandybpl.4429:48|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |DesignatedDealerandybpl.4445:57|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |DesignatedDealerandybpl.4459:83|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |DesignatedDealerandybpl.4473:103|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |DesignatedDealerandybpl.4487:125|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |DesignatedDealerandybpl.4501:87|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |DesignatedDealerandybpl.4515:85|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |DesignatedDealerandybpl.4529:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |DesignatedDealerandybpl.4550:45|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |DesignatedDealerandybpl.4564:51|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |DesignatedDealerandybpl.4587:48|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |DesignatedDealerandybpl.4893:49|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |DesignatedDealerandybpl.4906:65|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |DesignatedDealerandybpl.5435:45|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |DesignatedDealerandybpl.5448:45|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@29)))
 :qid |DesignatedDealerandybpl.5461:37|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |DesignatedDealerandybpl.5474:55|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |DesignatedDealerandybpl.5488:55|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |DesignatedDealerandybpl.5508:38|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |DesignatedDealerandybpl.5529:44|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |DesignatedDealerandybpl.5580:53|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |DesignatedDealerandybpl.5642:53|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@36))))
 :qid |DesignatedDealerandybpl.5704:45|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |DesignatedDealerandybpl.5730:55|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |DesignatedDealerandybpl.5744:55|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@39) true)
 :qid |DesignatedDealerandybpl.5758:47|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |DesignatedDealerandybpl.5775:38|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |DesignatedDealerandybpl.5789:48|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |DesignatedDealerandybpl.5803:48|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |DesignatedDealerandybpl.5817:40|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |DesignatedDealerandybpl.5837:41|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |DesignatedDealerandybpl.5852:53|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |DesignatedDealerandybpl.5866:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |DesignatedDealerandybpl.5880:45|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |DesignatedDealerandybpl.5897:60|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |DesignatedDealerandybpl.5914:60|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |DesignatedDealerandybpl.5931:52|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |DesignatedDealerandybpl.5948:57|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |DesignatedDealerandybpl.8385:68|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |DesignatedDealerandybpl.8407:66|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |DesignatedDealerandybpl.8433:66|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@55) true)
 :qid |DesignatedDealerandybpl.8766:31|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@55))
)))
(assert (forall ((s@@56 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@56) true)
 :qid |DesignatedDealerandybpl.9110:31|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@56))
)))
(assert (forall ((s@@57 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@57)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@57)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@57))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@57))))
 :qid |DesignatedDealerandybpl.9129:35|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@58) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@58)))
 :qid |DesignatedDealerandybpl.9550:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@59)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@59))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@59))))
 :qid |DesignatedDealerandybpl.9569:50|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@60) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@60)))
 :qid |DesignatedDealerandybpl.9584:52|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DesignatedDealerandybpl.9611:65|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DesignatedDealerandybpl.9996:60|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DesignatedDealerandybpl.10013:66|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DesignatedDealerandybpl.10042:50|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DesignatedDealerandybpl.10061:45|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DesignatedDealerandybpl.10380:87|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DesignatedDealerandybpl.10592:47|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DesignatedDealerandybpl.10612:58|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 |T@$1_DesignatedDealer_TierInfo'#0'|) ) (! (= (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@69)  (and (and (|$IsValid'u64'| (|$window_start#$1_DesignatedDealer_TierInfo'#0'| s@@69)) (|$IsValid'u64'| (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| s@@69))) (|$IsValid'vec'u64''| (|$tiers#$1_DesignatedDealer_TierInfo'#0'| s@@69))))
 :qid |DesignatedDealerandybpl.10633:53|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DesignatedDealer_TierInfo'#0''| s@@69))
)))
(assert (forall ((s@@70 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@70) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@70)))
 :qid |DesignatedDealerandybpl.12240:39|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@71)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@71))))
 :qid |DesignatedDealerandybpl.12262:58|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@72))))
 :qid |DesignatedDealerandybpl.12279:58|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73) true)
 :qid |DesignatedDealerandybpl.12294:51|
 :skolemid |236|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@73))
)))
(assert (forall ((s@@74 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@74))))
 :qid |DesignatedDealerandybpl.12311:60|
 :skolemid |237|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@75)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@75))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@75))))
 :qid |DesignatedDealerandybpl.12609:47|
 :skolemid |238|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@76))))
 :qid |DesignatedDealerandybpl.12631:63|
 :skolemid |239|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@77)))
 :qid |DesignatedDealerandybpl.12646:57|
 :skolemid |240|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |DesignatedDealerandybpl.12662:54|
 :skolemid |241|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |DesignatedDealerandybpl.12676:55|
 :skolemid |242|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |DesignatedDealerandybpl.12690:57|
 :skolemid |243|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |DesignatedDealerandybpl.12712:56|
 :skolemid |244|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |DesignatedDealerandybpl.12737:52|
 :skolemid |245|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |DesignatedDealerandybpl.12753:54|
 :skolemid |246|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |DesignatedDealerandybpl.13624:47|
 :skolemid |247|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |DesignatedDealerandybpl.13648:47|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |DesignatedDealerandybpl.13889:49|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |DesignatedDealerandybpl.13932:49|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |DesignatedDealerandybpl.13961:48|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |DesignatedDealerandybpl.14256:47|
 :skolemid |252|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@29 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@29)))
 (and (= (seq.len r@@0) (seq.len v@@29)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@0))) (= (seq.nth r@@0 i@@36) (seq.nth v@@29 (- (- (seq.len v@@29) i@@36) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@36))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_62616 v@@30)))
 (and (= (seq.len r@@1) (seq.len v@@30)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@1))) (= (seq.nth r@@1 i@@37) (seq.nth v@@30 (- (- (seq.len v@@30) i@@37) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@37))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62616 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_61434 v@@31)))
 (and (= (seq.len r@@2) (seq.len v@@31)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@2))) (= (seq.nth r@@2 i@@38) (seq.nth v@@31 (- (- (seq.len v@@31) i@@38) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@38))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61434 v@@31))
)))
(assert (forall ((v@@32 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_61631 v@@32)))
 (and (= (seq.len r@@3) (seq.len v@@32)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@3))) (= (seq.nth r@@3 i@@39) (seq.nth v@@32 (- (- (seq.len v@@32) i@@39) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@39))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61631 v@@32))
)))
(assert (forall ((v@@33 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_61828 v@@33)))
 (and (= (seq.len r@@4) (seq.len v@@33)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@4))) (= (seq.nth r@@4 i@@40) (seq.nth v@@33 (- (- (seq.len v@@33) i@@40) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@40))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61828 v@@33))
)))
(assert (forall ((v@@34 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_62813 v@@34)))
 (and (= (seq.len r@@5) (seq.len v@@34)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@5))) (= (seq.nth r@@5 i@@41) (seq.nth v@@34 (- (- (seq.len v@@34) i@@41) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@41))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62813 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_62419 v@@35)))
 (and (= (seq.len r@@6) (seq.len v@@35)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@6))) (= (seq.nth r@@6 i@@42) (seq.nth v@@35 (- (- (seq.len v@@35) i@@42) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@42))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62419 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_62222 v@@36)))
 (and (= (seq.len r@@7) (seq.len v@@36)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@7))) (= (seq.nth r@@7 i@@43) (seq.nth v@@36 (- (- (seq.len v@@36) i@@43) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@43))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62222 v@@36))
)))
(assert (forall ((v@@37 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_62025 v@@37)))
 (and (= (seq.len r@@8) (seq.len v@@37)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@8))) (= (seq.nth r@@8 i@@44) (seq.nth v@@37 (- (- (seq.len v@@37) i@@44) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@44))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_62025 v@@37))
)))
(assert (forall ((v@@38 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_61237 v@@38)))
 (and (= (seq.len r@@9) (seq.len v@@38)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@9))) (= (seq.nth r@@9 i@@45) (seq.nth v@@38 (- (- (seq.len v@@38) i@@45) 1))))
 :qid |DesignatedDealerandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@45))
))))
 :qid |DesignatedDealerandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61237 v@@38))
)))
(assert (forall ((|l#0| Bool) (i@@46 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46) |l#0|)
 :qid |DesignatedDealerandybpl.245:54|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@46))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_69257|) (|l#1| |T@[$1_Event_EventHandle]Multiset_69257|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_69257| (|Select__T@[$1_Event_EventHandle]Multiset_69257_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_69257| (|Select__T@[$1_Event_EventHandle]Multiset_69257_| |l#1| handle@@0))))
(Multiset_69257 (|lambda#3| (|v#Multiset_69257| (|Select__T@[$1_Event_EventHandle]Multiset_69257_| |l#0@@0| handle@@0)) (|v#Multiset_69257| (|Select__T@[$1_Event_EventHandle]Multiset_69257_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DesignatedDealerandybpl.2908:13|
 :skolemid |310|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@39) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@39) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@39)))
 :qid |DesignatedDealerandybpl.124:29|
 :skolemid |311|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@39))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@2| () T@$Memory_115165)
(declare-fun $t18 () Int)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_114740)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t15 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_101925)
(declare-fun $t6 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t1 () Int)
(declare-fun $t7 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_129812)
(declare-fun $t5 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_109039)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_115165)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1| () T@$Memory_115165)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_115165)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t21 () Bool)
(declare-fun $t10@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t10 () Int)
(declare-fun $t17 () Int)
(declare-fun $t19 () Int)
(declare-fun $t12 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t20 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t14 () Int)
(declare-fun $t9 () Bool)
(declare-fun $t11 () Int)
(declare-fun $t8 () Int)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_114211)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_114298)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_114385)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_109491)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_109578)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_114967)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_114558)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_115066)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_114649)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int) T@$1_DesignatedDealer_Dealer)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_add_currency$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213220) (let ((anon10_correct  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t18))) (and (= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t18))) 0) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory@2|) $t15))) (and (=> (= (ControlFlow 0 160038) (- 0 214766)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 160038) (- 0 214778)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 160038) (- 0 214796)) (not (not (= _$t1 186537453)))) (=> (not (not (= _$t1 186537453))) (and (=> (= (ControlFlow 0 160038) (- 0 214810)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 160038) (- 0 214822)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7)) 2))) (and (=> (= (ControlFlow 0 160038) (- 0 214840)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5))) (and (=> (= (ControlFlow 0 160038) (- 0 214852)) (not (let ((addr 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr)))))) (=> (not (let ((addr@@0 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@0))))) (and (=> (= (ControlFlow 0 160038) (- 0 214860)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (and (=> (= (ControlFlow 0 160038) (- 0 214870)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5)) (=> (= (ControlFlow 0 160038) (- 0 214880)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))
(let ((anon15_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= |$1_Diem_PreburnQueue'#0'_$memory@1| ($Memory_115165 (|Store__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 false) (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@1|) (= (ControlFlow 0 159876) 160038))) anon10_correct)))
(let ((anon15_Then_correct  (=> (and (and |$temp_0'bool'@0| (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_115165 (|Store__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t15 |$temp_0'$1_Diem_PreburnQueue'#0''@0|)))) (and (= |$1_Diem_PreburnQueue'#0'_$memory@2| |$1_Diem_PreburnQueue'#0'_$memory@0|) (= (ControlFlow 0 160050) 160038))) anon10_correct)))
(let ((anon14_Else_correct  (=> (not $t21) (and (=> (= (ControlFlow 0 159864) 160050) anon15_Then_correct) (=> (= (ControlFlow 0 159864) 159876) anon15_Else_correct)))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 159658) (- 0 214422)) (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@1 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@1))))) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= _$t1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5))) (let ((addr@@2 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@2))))) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5)) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 159658) (- 0 214514)) (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) (= 5 $t10@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t10@0))) (and (not (= _$t1 186537453)) (= 2 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7)) 2)) (= 3 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5)) (= 5 $t10@0))) (and (let ((addr@@3 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@3)))) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5) (= 6 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5) (= 1 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@0))))))))
(let ((anon14_Then_correct  (=> $t21 (=> (and (and (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t16)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t16)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t17)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t17)) 2)) (= 3 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t19)) (= 5 $t10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t19)) 1)) (= 3 $t10))) (and (not (= _$t1 186537453)) (= 2 $t10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10))) (and (let ((addr@@4 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@4)))) (= 7 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t15) (= 6 $t10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t15) (= 1 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 160284) 159658))) L3_correct))))
(let ((anon13_Then_correct  (=> $t12 (=> (and (= $t15 _$t0) (= $t16 _$t0)) (=> (and (and (= $t17 _$t0) (= $t18 _$t0)) (and (= $t19 _$t1) (= $t20 _$t0))) (and (=> (= (ControlFlow 0 159858) (- 0 214020)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t15) (=> (= $t21  (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t16)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t16)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t17))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t17)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t19))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t19)) 1))) (not (= _$t1 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (let ((addr@@5 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@5))))) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t15)) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t15))) (and (=> (= (ControlFlow 0 159858) 160284) anon14_Then_correct) (=> (= (ControlFlow 0 159858) 159864) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (and (not $t12) (= $t14 $t14)) (and (= $t10@0 $t14) (= (ControlFlow 0 159366) 159658))) L3_correct)))
(let ((anon12_Else_correct  (=> (and (not $t9) (|$IsValid'address'| $t11)) (=> (and (and (and (= $t11 _$t0) (= $t11 $t11)) (and (= $t12 (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t11)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t14) (= $t14 5)) (and (= $t14 $t14) (= $t12 $t12)))) (and (=> (= (ControlFlow 0 159350) 159858) anon13_Then_correct) (=> (= (ControlFlow 0 159350) 159366) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> $t9 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t8)) (= 5 $t10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t8)) 1)) (= 3 $t10))) (and (not (= _$t1 186537453)) (= 2 $t10))) (= $t10 $t10)) (and (= $t10@0 $t10) (= (ControlFlow 0 160356) 159658))) L3_correct))))
(let ((anon0$1_correct  (=> (and (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114211| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |DesignatedDealerandybpl.10689:22|
 :skolemid |186|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114298| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |DesignatedDealerandybpl.10689:269|
 :skolemid |187|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |DesignatedDealerandybpl.10689:517|
 :skolemid |188|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109491| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |DesignatedDealerandybpl.10693:21|
 :skolemid |189|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109578| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |DesignatedDealerandybpl.10693:231|
 :skolemid |190|
)))) (=> (and (and (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |DesignatedDealerandybpl.10697:22|
 :skolemid |191|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_115066| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_114649| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |DesignatedDealerandybpl.10697:293|
 :skolemid |192|
))) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) addr1@@3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@3)) 2))))
 :qid |DesignatedDealerandybpl.10697:565|
 :skolemid |193|
))) (|$IsValid'address'| _$t0)) (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |DesignatedDealerandybpl.10710:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $a_0))
)))) (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@0) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@0) 10000000000))))
 :qid |DesignatedDealerandybpl.10714:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@1))
 :qid |DesignatedDealerandybpl.10718:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@2) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@47 $i_2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@2) i@@47)))) 0)))
 :qid |DesignatedDealerandybpl.10723:199|
 :skolemid |197|
))))))
 :qid |DesignatedDealerandybpl.10722:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@3)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@3))
 :qid |DesignatedDealerandybpl.10727:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@3))
))))) (and (and (and (= $t5 _$t0) (= $t6 _$t1)) (and (= $t7 _$t0) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t5))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t8 _$t1) (= $t9  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t8)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t8)) 1))) (not (= _$t1 186537453)))))))) (and (=> (= (ControlFlow 0 159280) 160356) anon12_Then_correct) (=> (= (ControlFlow 0 159280) 159350) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_69257| stream@@0) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@0) v@@40) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 158733) 159280)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 213220) 158733) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () Int)
(declare-fun $t1@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_exists_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215071) (let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@4)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@4))
 :qid |DesignatedDealerandybpl.11055:20|
 :skolemid |200|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@4))
)) (= _$t0@@0 _$t0@@0)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t0@@0)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 160623) (- 0 215164)) (not false)) (=> (not false) (=> (= (ControlFlow 0 160623) (- 0 215171)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t0@@0)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_69257| stream@@1) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@1) v@@41) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 160539) 160623)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 215071) 160539) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun _$t2 () Bool)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_108850)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $1_DesignatedDealer_Dealer_$memory@1 () T@$Memory_129812)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| () T@$Memory_114967)
(declare-fun $t20@@0 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| () T@$Memory_114967)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| Int) |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0| () |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|)
(declare-fun $t23 () Bool)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@1@@0| () T@$Memory_115165)
(declare-fun $t24 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0@@0| () T@$Memory_115165)
(declare-fun |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0| () |T@$1_Diem_PreburnQueue'#0'|)
(declare-fun $t27 () Bool)
(declare-fun $t10@0@@0 () Int)
(declare-fun $t21@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t22 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| () |T@[Int]Bool|)
(declare-fun $t25 () Int)
(declare-fun $t26 () Int)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$memory@0 () T@$Memory_129812)
(declare-fun |Store__T@[Int]$1_DesignatedDealer_Dealer_| (|T@[Int]$1_DesignatedDealer_Dealer| Int T@$1_DesignatedDealer_Dealer) |T@[Int]$1_DesignatedDealer_Dealer|)
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DesignatedDealer_Dealer|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DesignatedDealer_Dealer)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|Store__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| ?x0 ?y1))) :weight 0)))
(declare-fun $t19@0 () T@$1_DesignatedDealer_Dealer)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DesignatedDealer_Dealer_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t14@0 () Bool)
(declare-fun $t12@@0 () Bool)
(declare-fun $t13 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun $t9@@0 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_101456)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun $1_Event_EventHandleGenerator_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_publish_designated_dealer_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215191) (let ((L5_correct  (and (=> (= (ControlFlow 0 162582) (- 0 217659)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 162582) (- 0 217671)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 162582) (- 0 217689)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 162582) (- 0 217703)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 162582) (- 0 217715)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (and (=> (= (ControlFlow 0 162582) (- 0 217733)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (and (=> (= (ControlFlow 0 162582) (- 0 217743)) (not (and _$t2 (let ((addr@@6 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@6))))))) (=> (not (and _$t2 (let ((addr@@7 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@7) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@7)))))) (and (=> (= (ControlFlow 0 162582) (- 0 217754)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 162582) (- 0 217767)) (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)))) (=> (not (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 162582) (- 0 217780)) (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 162582) (- 0 217793)) (not (and (not _$t2) (let ((addr@@8 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@8) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@8))))))) (=> (not (and (not _$t2) (let ((addr@@9 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@9) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@9)))))) (and (=> (= (ControlFlow 0 162582) (- 0 217806)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 162582) (- 0 217821)) (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5@@0)))) (=> (not (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5@@0))) (and (=> (= (ControlFlow 0 162582) (- 0 217836)) (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 162582) (- 0 217851)) (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) $t5@@0))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (not |$temp_0'bool'@1|) (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@1| ($Memory_114967 (|Store__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0 false) (|contents#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|))) (= (ControlFlow 0 162954) 162582)) L5_correct))))
(let ((anon38_Then_correct  (=> |$temp_0'bool'@1| (=> (and (= |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory@0| ($Memory_114967 (|Store__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0 true) (|Store__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0 |$temp_0'$1_Diem_PreburnQueue'$1_XUS_XUS''@0|))) (= (ControlFlow 0 162968) 162582)) L5_correct))))
(let ((anon37_Else_correct  (=> (not $t23) (and (=> (= (ControlFlow 0 162942) 162968) anon38_Then_correct) (=> (= (ControlFlow 0 162942) 162954) anon38_Else_correct)))))
(let ((anon28_correct  (=> (= (ControlFlow 0 162370) 162582) L5_correct)))
(let ((anon40_Else_correct  (=> (not |$temp_0'bool'@0@@0|) (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@1@@0| ($Memory_115165 (|Store__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 false) (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|))) (= (ControlFlow 0 162366) 162370)) anon28_correct))))
(let ((anon40_Then_correct  (=> |$temp_0'bool'@0@@0| (=> (and (= |$1_Diem_PreburnQueue'#0'_$memory@0@@0| ($Memory_115165 (|Store__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t24 |$temp_0'$1_Diem_PreburnQueue'#0''@0@@0|))) (= (ControlFlow 0 162594) 162370)) anon28_correct))))
(let ((anon39_Else_correct  (=> (not $t27) (and (=> (= (ControlFlow 0 162354) 162594) anon40_Then_correct) (=> (= (ControlFlow 0 162354) 162366) anon40_Else_correct)))))
(let ((anon33_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 162045) (- 0 217215)) (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (and _$t2 (let ((addr@@10 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@10) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@10)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@11 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@11) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@11)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5@@0))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)) 2))) (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5@@0)) (and _$t2 (let ((addr@@12 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@12) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@12)))))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0))) (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (not _$t2) (let ((addr@@13 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@13) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@13)))))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0))) (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5@@0))) (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= (ControlFlow 0 162045) (- 0 217363)) (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t10@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t10@0@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t10@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t7@@0)) 2)) (= 3 $t10@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t5@@0) (= 6 $t10@0@@0))) (and (and _$t2 (let ((addr@@14 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@14) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@14))))) (= 7 $t10@0@@0))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t5@@0)) (= 6 $t10@0@@0))) (and (and _$t2 (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t5@@0)) (= 1 $t10@0@@0))) (and (and _$t2 (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0@@0))) (and (and (not _$t2) (let ((addr@@15 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@15) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@15))))) (= 7 $t10@0@@0))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t5@@0)) (= 6 $t10@0@@0))) (and (and (not _$t2) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t5@@0)) (= 1 $t10@0@@0))) (and (and (not _$t2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 5 $t10@0@@0))))))))
(let ((anon37_Then_correct  (=> $t23 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t21@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t21@@0)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t22)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t22)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) $t20@@0)) (= 5 $t10@@0))) (and (let ((addr@@16 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@16) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@16)))) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0) (= 6 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@0) (= 1 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 163162) 162045))) L7_correct))))
(let ((anon36_Then_correct  (=> (and (and _$t2 (= $t20@@0 _$t0@@1)) (and (= $t21@@0 _$t1@@0) (= $t22 _$t0@@1))) (and (=> (= (ControlFlow 0 162936) (- 0 216502)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@0)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t20@@0) (=> (= $t23  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t21@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t21@@0)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t22))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t22)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) $t20@@0))) (let ((addr@@17 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@17) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) addr@@17))))) (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $t20@@0)) (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $t20@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 162936) 163162) anon37_Then_correct) (=> (= (ControlFlow 0 162936) 162942) anon37_Else_correct))))))))
(let ((anon39_Then_correct  (=> $t27 (=> (and (and (or (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t25)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t25)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t26)) (= 5 $t10@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t26)) 2)) (= 3 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) $t24)) (= 5 $t10@@0))) (and (let ((addr@@18 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@18) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@18)))) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t24) (= 6 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t24) (= 1 $t10@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 162788) 162045))) L7_correct))))
(let ((anon36_Else_correct  (=> (and (and (not _$t2) (= $t24 _$t0@@1)) (and (= $t25 _$t1@@0) (= $t26 _$t0@@1))) (and (=> (= (ControlFlow 0 162348) (- 0 216648)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t24) (=> (= $t27  (or (or (or (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t25)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t25)) 1))) (not (= _$t1@@0 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t26))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t26)) 2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) $t24))) (let ((addr@@19 173345816))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@19) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) addr@@19))))) (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $t24)) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $t24)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 162348) 162788) anon39_Then_correct) (=> (= (ControlFlow 0 162348) 162354) anon39_Else_correct))))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 162198) (- 0 216444)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) addr@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) addr@@20)))
 :qid |DesignatedDealerandybpl.11449:15|
 :skolemid |219|
))) (=> (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) addr@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory@1) addr@@21)))
 :qid |DesignatedDealerandybpl.11449:15|
 :skolemid |219|
)) (and (=> (= (ControlFlow 0 162198) 162936) anon36_Then_correct) (=> (= (ControlFlow 0 162198) 162348) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0@@0 $abort_code@1) (= (ControlFlow 0 163176) 162045))) L7_correct)))
(let ((anon34_Then$1_correct  (=> (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 163226) 163176) anon35_Then_correct) (=> (= (ControlFlow 0 163226) 162198) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t0@@1) (= (ControlFlow 0 163224) 163226)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t0@@1)) (=> (and (and (= $1_DesignatedDealer_Dealer_$memory@0 ($Memory_129812 (|Store__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t0@@1 true) (|Store__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t0@@1 $t19@0))) (= $1_DesignatedDealer_Dealer_$memory@1 $1_DesignatedDealer_Dealer_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 162163) 163176) anon35_Then_correct) (=> (= (ControlFlow 0 162163) 162198) anon35_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not false) (= $t19@0 ($1_DesignatedDealer_Dealer |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 162145) (- 0 216351)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@1)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies _$t0@@1) (and (=> (= (ControlFlow 0 162145) 163224) anon34_Then_correct) (=> (= (ControlFlow 0 162145) 162163) anon34_Else_correct)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 162115) 163240) anon33_Then_correct) (=> (= (ControlFlow 0 162115) 162145) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 162121) 162115)) |inline$$1_Event_new_event_handle'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|)))
(let ((anon32_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t17@@0 $t17@@0)) (and (= $t10@0@@0 $t17@@0) (= (ControlFlow 0 161585) 162045))) L7_correct)))
(let ((anon31_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 6)) (and (= $t17@@0 $t17@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 161569) 162121) anon32_Then_correct) (=> (= (ControlFlow 0 161569) 161585) anon32_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t14@0)) (= (ControlFlow 0 161533) 161569)) anon31_Else$1_correct)))
(let ((anon31_Else_correct  (=> (not $t12@@0) (=> (and (and (|$IsValid'address'| $t13) (= $t13 _$t0@@1)) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $t13)) (= (ControlFlow 0 161539) 161533))) inline$$Not$0$anon0_correct))))
(let ((anon31_Then_correct  (=> $t12@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t11@@0)) 2)) (= 3 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 163292) 162045))) L7_correct))))
(let ((anon30_Else_correct  (=> (not $t9@@0) (=> (and (= $t11@@0 _$t0@@1) (= $t12@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t11@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t11@@0)) 2))))) (and (=> (= (ControlFlow 0 161477) 163292) anon31_Then_correct) (=> (= (ControlFlow 0 161477) 161539) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> $t9@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t8@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t8@@0)) 1)) (= 3 $t10@@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0@@0 $t10@@0) (= (ControlFlow 0 163364) 162045))) L7_correct))))
(let ((anon0$1_correct@@1  (=> (and (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114211| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |DesignatedDealerandybpl.11150:22|
 :skolemid |201|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114298| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |DesignatedDealerandybpl.11150:269|
 :skolemid |202|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |DesignatedDealerandybpl.11150:517|
 :skolemid |203|
))) (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109491| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |DesignatedDealerandybpl.11154:21|
 :skolemid |204|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109578| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |DesignatedDealerandybpl.11154:231|
 :skolemid |205|
)))) (=> (and (and (and (and (and (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |DesignatedDealerandybpl.11158:22|
 :skolemid |206|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_115066| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_114649| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |DesignatedDealerandybpl.11158:293|
 :skolemid |207|
))) (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@8)) 2))))
 :qid |DesignatedDealerandybpl.11158:565|
 :skolemid |208|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101456| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (|$IsValid'address'| _$t0@@1) (|$IsValid'address'| _$t1@@0))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DesignatedDealerandybpl.11178:20|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@6) 10000000000))))
 :qid |DesignatedDealerandybpl.11182:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_108850| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| $rsc@@7))
 :qid |DesignatedDealerandybpl.11186:20|
 :skolemid |211|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| $rsc@@8) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)) 256) (let (($range_1@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@48 $i_2@@0))
(> (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| $rsc@@8) i@@48)))) 0)))
 :qid |DesignatedDealerandybpl.11191:223|
 :skolemid |212|
))))))
 :qid |DesignatedDealerandybpl.11190:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'_| (|contents#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) $a_0@@8))
))))) (and (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@9) 10000000000))))
 :qid |DesignatedDealerandybpl.11195:20|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $a_0@@10)))
(|$IsValid'$1_Diem_Preburn'#0''| $rsc@@10))
 :qid |DesignatedDealerandybpl.11199:20|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@11)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@11) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@11)) 256) (let (($range_1@@1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@11)))))
(forall (($i_2@@1 Int) ) (!  (=> ($InRange $range_1@@1 $i_2@@1) (let ((i@@49 $i_2@@1))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@11) i@@49)))) 0)))
 :qid |DesignatedDealerandybpl.11204:199|
 :skolemid |216|
))))))
 :qid |DesignatedDealerandybpl.11203:20|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@12)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@12))
 :qid |DesignatedDealerandybpl.11208:20|
 :skolemid |218|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@12))
)))) (and (and (= $t5@@0 _$t0@@1) (= $t6@@0 _$t1@@0)) (and (= $t7@@0 _$t0@@1) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies $t5@@0)))) (and (and (and (|Select__T@[Int]Bool_| $1_Event_EventHandleGenerator_$modifies $t5@@0) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies@@0| $t5@@0)) (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$modifies| $t5@@0) (= _$t0@@1 _$t0@@1))) (and (and (= _$t1@@0 _$t1@@0) (= _$t2 _$t2)) (and (= $t8@@0 _$t1@@0) (= $t9@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t8@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t8@@0)) 1))) (not (= _$t1@@0 186537453))))))))) (and (=> (= (ControlFlow 0 161429) 163364) anon30_Then_correct) (=> (= (ControlFlow 0 161429) 161477) anon30_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_69257| stream@@2) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@2) v@@42) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 160687) 161429)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 215191) 160687) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $t32 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@3| () T@$Memory_109039)
(declare-fun _$t1@@1 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $t9@@1 () Int)
(declare-fun _$t2@@0 () Int)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@2| () T@$Memory_130111)
(declare-fun $t8@@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t12@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t16@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t18@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@2| () T@$Memory_109039)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t12@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t19@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t15@0| () T@$1_Diem_MintEvent)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t20@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t14@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t21@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t13@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $es@1 () T@$EventStore)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_69257_| (|T@[$1_Event_EventHandle]Multiset_69257| T@$1_Event_EventHandle T@Multiset_69257) |T@[$1_Event_EventHandle]Multiset_69257|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_69257|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_69257)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|Store__T@[$1_Event_EventHandle]Multiset_69257_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_69257|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_69257)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|Store__T@[$1_Event_EventHandle]Multiset_69257_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_69257_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@1| () T@$Memory_109039)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory@0| () T@$Memory_109039)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int |T@$1_Diem_CurrencyInfo'#0'|) |T@[Int]$1_Diem_CurrencyInfo'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@1| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t11@1| () |T@$1_Diem_MintCapability'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_MintCapability'#0'_| (|T@[Int]$1_Diem_MintCapability'#0'| Int) |T@$1_Diem_MintCapability'#0'|)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t7@1| () Bool)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t9@0| () Int)
(declare-fun |inline$$1_Diem_mint'#0'$0$$t5@0| () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t30 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t26@0 () T@$Mutation_95332)
(declare-fun $t29@0 () T@$1_DesignatedDealer_ReceivedMintEvent)
(declare-fun $t28 () Bool)
(declare-fun $t27@@0 () (Seq Int))
(declare-fun $t12@@1 () Int)
(declare-fun $t25@@0 () T@$Mutation_137032)
(declare-fun $t25@0 () T@$Mutation_137032)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $1_DesignatedDealer_Dealer_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t22@0 () Int)
(declare-fun $t21@@1 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun $t23@0 () Int)
(declare-fun $t24@0 () (Seq Int))
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@1| () T@$Memory_130111)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory| () T@$Memory_130111)
(declare-fun $t21@0 () |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|T@[Int]$1_DesignatedDealer_TierInfo'#0'| Int) |T@$1_DesignatedDealer_TierInfo'#0'|)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$memory@0| () T@$Memory_130111)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t20@0 () Bool)
(declare-fun |$1_DesignatedDealer_TierInfo'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t17@@1 () Bool)
(declare-fun $t19@@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $t16@@0 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t10@@1 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t26@@0 () T@$Mutation_95332)
(push 1)
(set-info :boogie-vc-id $1_DesignatedDealer_tiered_mint$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 217869) (let ((anon40_Else_correct@@0  (=> (not $abort_flag@4) (=> (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@1|) (= $t32 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816))) (and (=> (= (ControlFlow 0 166201) (- 0 220081)) (not (= _$t1@@1 0))) (=> (not (= _$t1@@1 0)) (and (=> (= (ControlFlow 0 166201) (- 0 220091)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2))) (and (=> (= (ControlFlow 0 166201) (- 0 220104)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1))) (and (=> (= (ControlFlow 0 166201) (- 0 220116)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (and (=> (= (ControlFlow 0 166201) (- 0 220134)) (not (not (= _$t0@@2 186537453)))) (=> (not (not (= _$t0@@2 186537453))) (and (=> (= (ControlFlow 0 166201) (- 0 220148)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (and (=> (= (ControlFlow 0 166201) (- 0 220159)) (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (not (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 166201) (- 0 220171)) (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128))) (=> (not (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (and (=> (= (ControlFlow 0 166201) (- 0 220188)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 166201) (- 0 220198)) (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 166201) (- 0 220206)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory@2|) _$t2@@0)) (and (=> (= (ControlFlow 0 166201) (- 0 220215)) (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@1)) (=> (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$ret0@1|) _$t1@@1) (=> (= (ControlFlow 0 166201) (- 0 220224)) (= $t32 (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$can_mint#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$mint_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| $t8@@1) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| $t8@@1))))))))))))))))))))))))))))))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 164571) (- 0 219811)) (or (or (or (or (or (or (or (or (= _$t1@@1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= _$t0@@2 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (or (or (or (or (or (or (or (or (= _$t1@@1 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)) 1))) (not (= _$t0@@2 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0))) (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (= (ControlFlow 0 164571) (- 0 219899)) (or (or (or (or (or (or (or (or (and (= _$t1@@1 0) (= 7 $t12@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) _$t0@@2)) (= 4 $t12@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)) (= 5 $t12@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t9@@1)) 1)) (= 3 $t12@0))) (and (not (= _$t0@@2 186537453)) (= 2 $t12@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (= 5 $t12@0))) (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 $t12@0))) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128) (= 8 $t12@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@0))))))))
(let ((anon35_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t12@0 $abort_code@1@@0) (= (ControlFlow 0 166387) 164571))) L8_correct)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t12@0 $abort_code@5) (= (ControlFlow 0 166215) 164571))) L8_correct)))
(let ((|inline$$1_Diem_mint'#0'$0$anon13_correct|  (=> (|$IsValid'$1_Diem_Diem'#0''| |inline$$1_Diem_mint'#0'$0$$t16@0|) (=> (and (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816)) (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory@2|) 173345816) (= |inline$$1_Diem_mint'#0'$0$$t18@0| (|$1_Diem_CurrencyInfo'#0'| (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) _$t1@@1) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$can_mint#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t12@0|)))) (and (= (|$value#$1_Diem_Diem'#0'| |inline$$1_Diem_mint'#0'$0$$t16@0|) _$t1@@1) (= |inline$$1_Diem_mint'#0'$0$$t19@0| |inline$$1_Diem_mint'#0'$0$$t15@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t20@0| |inline$$1_Diem_mint'#0'$0$$t14@0|) (= |inline$$1_Diem_mint'#0'$0$$t21@0|  (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|)))) (and (= $es@1 (ite |inline$$1_Diem_mint'#0'$0$$t21@0| (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0|)))
(let ((stream_new (let ((len (|l#Multiset_69257| stream@@3)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@3) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|))))
(Multiset_69257 (|Store__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@3) (|$ToEventRep'$1_Diem_MintEvent'| |inline$$1_Diem_mint'#0'$0$$t19@0|) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es@0) 1) (|Store__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es@0) |inline$$1_Diem_mint'#0'$0$$t20@0| stream_new)))) $es@0)) (= |inline$$1_Diem_mint'#0'$0$$t16@0| |inline$$1_Diem_mint'#0'$0$$t16@0|))) (and (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$t16@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory@2|)))) (and (=> (= (ControlFlow 0 165853) 166215) anon40_Then_correct@@0) (=> (= (ControlFlow 0 165853) 166201) anon40_Else_correct@@0))))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1|) (= |$1_Diem_CurrencyInfo'#0'_$memory@1| ($Memory_109039 (|Store__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 false) (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@1|) (= (ControlFlow 0 165751) 165853))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon18_Then_correct|  (=> (and (and |inline$$1_Diem_mint'#0'$0$$temp_0'bool'@1| (= |$1_Diem_CurrencyInfo'#0'_$memory@0| ($Memory_109039 (|Store__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816 |inline$$1_Diem_mint'#0'$0$$temp_0'$1_Diem_CurrencyInfo'#0''@1|)))) (and (= |$1_Diem_CurrencyInfo'#0'_$memory@2| |$1_Diem_CurrencyInfo'#0'_$memory@0|) (= (ControlFlow 0 165865) 165853))) |inline$$1_Diem_mint'#0'$0$anon13_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Else_correct|  (=> (not |inline$$1_Diem_mint'#0'$0$$t17@0|) (and (=> (= (ControlFlow 0 165739) 165865) |inline$$1_Diem_mint'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 165739) 165751) |inline$$1_Diem_mint'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$L3_correct|  (=> (and (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_mint'#0'$0$$t10@1|)) (and (= |inline$$1_Diem_mint'#0'$0$$ret0@1| |inline$$1_Diem_mint'#0'$0$$ret0@0|) (= |$1_Diem_CurrencyInfo'#0'_$memory@3| |$1_Diem_CurrencyInfo'#0'_$memory|))) (and (=> (= (ControlFlow 0 165617) 166215) anon40_Then_correct@@0) (=> (= (ControlFlow 0 165617) 166201) anon40_Else_correct@@0)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon17_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t17@0| (=> (and (and (or (or (and (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= 1 |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128) (= 8 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_mint'#0'$0$$t10@0|))) (= |inline$$1_Diem_mint'#0'$0$$t10@0| |inline$$1_Diem_mint'#0'$0$$t10@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t10@0|) (= (ControlFlow 0 165933) 165617))) |inline$$1_Diem_mint'#0'$0$L3_correct|))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_mint'#0'$0$$t12@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t13@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_mint'#0'$0$$t14@0| (|$mint_events#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (and (= |inline$$1_Diem_mint'#0'$0$$t15@0| ($1_Diem_MintEvent _$t1@@1 (|$currency_code#$1_Diem_CurrencyInfo'#0'| |inline$$1_Diem_mint'#0'$0$$t13@0|))) (= |inline$$1_Diem_mint'#0'$0$$t17@0|  (or (or (not (|$can_mint#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (> (+ (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) _$t1@@1) $MAX_U128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 165733) 165933) |inline$$1_Diem_mint'#0'$0$anon17_Then_correct|) (=> (= (ControlFlow 0 165733) 165739) |inline$$1_Diem_mint'#0'$0$anon17_Else_correct|))))))
(let ((|inline$$1_Diem_mint'#0'$0$anon16_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| $abort_code@4) (= (ControlFlow 0 165947) 165617))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|  (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 165999) 165947) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 165999) 165733) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (= (ControlFlow 0 165997) 165999)) |inline$$1_Diem_mint'#0'$0$anon15_Then$1_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon15_Else_correct|  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|) (= |inline$$1_Diem_mint'#0'$0$$t11@1| (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|))) (and (= $abort_code@4 $abort_code@3) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 165637) 165947) |inline$$1_Diem_mint'#0'$0$anon16_Then_correct|) (=> (= (ControlFlow 0 165637) 165733) |inline$$1_Diem_mint'#0'$0$anon16_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Then_correct|  (=> |inline$$1_Diem_mint'#0'$0$$t7@1| (and (=> (= (ControlFlow 0 165623) 165997) |inline$$1_Diem_mint'#0'$0$anon15_Then_correct|) (=> (= (ControlFlow 0 165623) 165637) |inline$$1_Diem_mint'#0'$0$anon15_Else_correct|)))))
(let ((|inline$$1_Diem_mint'#0'$0$anon14_Else_correct|  (=> (and (and (not |inline$$1_Diem_mint'#0'$0$$t7@1|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t10@1| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= (ControlFlow 0 165611) 165617))) |inline$$1_Diem_mint'#0'$0$L3_correct|)))
(let ((|inline$$1_Diem_mint'#0'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_mint'#0'$0$$t5@0| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (|$IsValid'address'| |inline$$1_Diem_mint'#0'$0$$t6@0|))) (=> (and (and (and (= |inline$$1_Diem_mint'#0'$0$$t6@0| _$t0@@2) (= |inline$$1_Diem_mint'#0'$0$$t6@0| |inline$$1_Diem_mint'#0'$0$$t6@0|)) (and (= |inline$$1_Diem_mint'#0'$0$$t7@1| (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) |inline$$1_Diem_mint'#0'$0$$t6@0|)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t9@0| 4)) (and (= |inline$$1_Diem_mint'#0'$0$$t9@0| |inline$$1_Diem_mint'#0'$0$$t9@0|) (= |inline$$1_Diem_mint'#0'$0$$t7@1| |inline$$1_Diem_mint'#0'$0$$t7@1|)))) (and (=> (= (ControlFlow 0 165595) 165623) |inline$$1_Diem_mint'#0'$0$anon14_Then_correct|) (=> (= (ControlFlow 0 165595) 165611) |inline$$1_Diem_mint'#0'$0$anon14_Else_correct|))))))
(let ((anon39_Else_correct@@0  (=> (and (not $abort_flag@2) (= $t30 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 166005) (- 0 219179)) (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (=> (= (ControlFlow 0 166005) 165595) |inline$$1_Diem_mint'#0'$0$anon0_correct|))))))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0 $abort_code@3) (= (ControlFlow 0 166229) 164571))) L8_correct)))
(let ((|inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| (|v#$Mutation_95332| $t26@0)) (= $es@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1|)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_69257| stream@@4)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0))))
(Multiset_69257 (|Store__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@4) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| $t29@0) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$handle@1| stream_new@@0)))))) (and (=> (= (ControlFlow 0 164810) 166229) anon39_Then_correct@@0) (=> (= (ControlFlow 0 164810) 166005) anon39_Else_correct@@0)))))
(let ((anon38_Else_correct@@0  (=> (not $t28) (=> (and (and (|$IsValid'vec'u8''| $t27@@0) (= $t27@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (= $t29@0 ($1_DesignatedDealer_ReceivedMintEvent $t27@@0 _$t2@@0 _$t1@@1)) (= (ControlFlow 0 164816) 164810))) |inline$$1_Event_emit_event'$1_DesignatedDealer_ReceivedMintEvent'$0$anon0_correct|))))
(let ((anon38_Then_correct@@0  (=> $t28 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t12@@1)) (= $t12@@1 $t12@@1)) (and (= $t12@0 $t12@@1) (= (ControlFlow 0 166255) 164571))) L8_correct))))
(let ((anon37_Else_correct@@0  (=> (not $abort_flag@2) (=> (and (= $t26@0 ($Mutation_95332 (|l#$Mutation_137032| $t25@@0) (seq.++ (|p#$Mutation_137032| $t25@@0) (seq.unit 0)) (|$mint_event_handle#$1_DesignatedDealer_Dealer| (|v#$Mutation_137032| $t25@@0)))) (= $t28  (not (|Select__T@[Int]Bool_| (|domain#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 164711) 166255) anon38_Then_correct@@0) (=> (= (ControlFlow 0 164711) 164816) anon38_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t12@0 $abort_code@3) (= (ControlFlow 0 166269) 164571))) L8_correct)))
(let ((anon36_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 166321) 166269) anon37_Then_correct@@0) (=> (= (ControlFlow 0 166321) 164711) anon37_Else_correct@@0)))))
(let ((anon36_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (= (ControlFlow 0 166319) 166321)) anon36_Then$1_correct)))
(let ((anon36_Else_correct@@0  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0) (= $t25@0 ($Mutation_137032 ($Global _$t2@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 164679) 166269) anon37_Then_correct@@0) (=> (= (ControlFlow 0 164679) 164711) anon37_Else_correct@@0)))))
(let ((L6_correct  (and (=> (= (ControlFlow 0 164657) (- 0 218943)) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0)) (=> (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0) (and (=> (= (ControlFlow 0 164657) 166319) anon36_Then_correct@@0) (=> (= (ControlFlow 0 164657) 164679) anon36_Else_correct@@0))))))
(let ((anon35_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@0) (= $t22@0 (|$window_start#$1_DesignatedDealer_TierInfo'#0'| $t21@@1))) (and (= $t23@0 (|$window_inflow#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)) (= $t24@0 (|$tiers#$1_DesignatedDealer_TierInfo'#0'| $t21@@1)))) (and (and (= $abort_flag@1 $abort_flag@0@@0) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory@1|)) (and (= $abort_code@2 $abort_code@1@@0) (= (ControlFlow 0 166373) 164657)))) L6_correct)))
(let ((anon34_Then$1_correct@@0  (=> (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory|) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 166439) 166387) anon35_Then_correct@@0) (=> (= (ControlFlow 0 166439) 166373) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0)) (= (ControlFlow 0 166437) 166439)) anon34_Then$1_correct@@0)))
(let ((anon34_Else_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0) (= $t21@0 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0))) (=> (and (and (= |$1_DesignatedDealer_TierInfo'#0'_$memory@0| ($Memory_130111 (|Store__T@[Int]Bool_| (|domain#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0 false) (|contents#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|))) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@1| |$1_DesignatedDealer_TierInfo'#0'_$memory@0|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 166351) 166387) anon35_Then_correct@@0) (=> (= (ControlFlow 0 166351) 166373) anon35_Else_correct@@0))))))
(let ((anon33_Then_correct@@0  (=> $t20@0 (and (=> (= (ControlFlow 0 166331) (- 0 218788)) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0)) (=> (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0) (and (=> (= (ControlFlow 0 166331) 166437) anon34_Then_correct@@0) (=> (= (ControlFlow 0 166331) 166351) anon34_Else_correct@@0)))))))
(let ((anon33_Else_correct@@0  (=> (not $t20@0) (=> (and (and (= $abort_flag@1 false) (= |$1_DesignatedDealer_TierInfo'#0'_$memory@2| |$1_DesignatedDealer_TierInfo'#0'_$memory|)) (and (= $abort_code@2 $abort_code@0@@0) (= (ControlFlow 0 164649) 164657))) L6_correct))))
(let ((anon32_Then_correct@@0  (=> (and $t17@@1 (= $t20@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) _$t2@@0))) (and (=> (= (ControlFlow 0 164643) 166331) anon33_Then_correct@@0) (=> (= (ControlFlow 0 164643) 164649) anon33_Else_correct@@0)))))
(let ((anon32_Else_correct@@0  (=> (and (and (not $t17@@1) (= $t19@@0 $t19@@0)) (and (= $t12@0 $t19@@0) (= (ControlFlow 0 164633) 164571))) L8_correct)))
(let ((anon31_Then_correct@@0  (=> inline$$Gt$0$dst@1 (=> (and (= $t17@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) _$t2@@0)) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t19@@0) (= $t19@@0 5)) (and (= $t19@@0 $t19@@0) (= $t17@@1 $t17@@1))) (and (=> (= (ControlFlow 0 164617) 164643) anon32_Then_correct@@0) (=> (= (ControlFlow 0 164617) 164633) anon32_Else_correct@@0)))))))
(let ((anon31_Else_correct@@0  (=> (and (and (not inline$$Gt$0$dst@1) (= $t16@@0 $t16@@0)) (and (= $t12@0 $t16@@0) (= (ControlFlow 0 164291) 164571))) L8_correct)))
(let ((anon30_Else$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t16@@0) (= $t16@@0 7)) (and (= $t16@@0 $t16@@0) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 164275) 164617) anon31_Then_correct@@0) (=> (= (ControlFlow 0 164275) 164291) anon31_Else_correct@@0))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> _$t1@@1 0)) (= (ControlFlow 0 164239) 164275)) anon30_Else$1_correct)))
(let ((anon30_Else_correct@@0  (=> (not $t11@@1) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 164245) 164239)) inline$$Gt$0$anon0_correct))))
(let ((anon30_Then_correct@@0  (=> $t11@@1 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t10@@1)) (= 5 $t12@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t10@@1)) 1)) (= 3 $t12@@1))) (and (not (= _$t0@@2 186537453)) (= 2 $t12@@1))) (= $t12@@1 $t12@@1)) (and (= $t12@0 $t12@@1) (= (ControlFlow 0 166511) 164571))) L8_correct))))
(let ((anon0$1_correct@@2  (=> (and (and (and (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114211| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |DesignatedDealerandybpl.11750:22|
 :skolemid |220|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114298| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |DesignatedDealerandybpl.11750:269|
 :skolemid |221|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |DesignatedDealerandybpl.11750:517|
 :skolemid |222|
))) (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109491| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@9)) 1))))
 :qid |DesignatedDealerandybpl.11754:21|
 :skolemid |223|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_109578| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@10)) 1))))
 :qid |DesignatedDealerandybpl.11754:231|
 :skolemid |224|
)))) (and (and (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_114967| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_114558| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |DesignatedDealerandybpl.11758:22|
 :skolemid |225|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_115066| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_114649| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@12)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@12)) 2))))
 :qid |DesignatedDealerandybpl.11758:293|
 :skolemid |226|
))) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_115165| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_114740| |$1_Diem_Preburn'#0'_$memory|) addr1@@13)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) addr1@@13)) 2))))
 :qid |DesignatedDealerandybpl.11758:565|
 :skolemid |227|
))) (and (and (|$IsValid'address'| _$t0@@2) (|$IsValid'u64'| _$t1@@1)) (and (|$IsValid'address'| _$t2@@0) (|$IsValid'u64'| _$t3))))) (and (and (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |DesignatedDealerandybpl.11778:20|
 :skolemid |228|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@14) 10000000000))))
 :qid |DesignatedDealerandybpl.11782:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@15)))
(|$IsValid'$1_Diem_MintCapability'#0''| $rsc@@15))
 :qid |DesignatedDealerandybpl.11786:20|
 :skolemid |230|
 :pattern ( (|Select__T@[Int]$1_Diem_MintCapability'#0'_| (|contents#$Memory_114385| |$1_Diem_MintCapability'#0'_$memory|) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@16)))
(|$IsValid'$1_DesignatedDealer_Dealer'| $rsc@@16))
 :qid |DesignatedDealerandybpl.11790:20|
 :skolemid |231|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_Dealer_| (|contents#$Memory_129812| $1_DesignatedDealer_Dealer_$memory) $a_0@@16))
)))) (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@17)))
(|$IsValid'$1_DesignatedDealer_TierInfo'#0''| $rsc@@17))
 :qid |DesignatedDealerandybpl.11794:20|
 :skolemid |232|
 :pattern ( (|Select__T@[Int]$1_DesignatedDealer_TierInfo'#0'_| (|contents#$Memory_130111| |$1_DesignatedDealer_TierInfo'#0'_$memory|) $a_0@@17))
)) (= $t8@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_109039| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (= $t9@@1 _$t0@@2) (|Select__T@[Int]Bool_| $1_DesignatedDealer_Dealer_$modifies@@0 _$t2@@0)))) (and (and (and (|Select__T@[Int]Bool_| |$1_Diem_CurrencyInfo'#0'_$modifies| 173345816) (|Select__T@[Int]Bool_| |$1_DesignatedDealer_TierInfo'#0'_$modifies| _$t2@@0)) (and (= _$t0@@2 _$t0@@2) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2@@0 _$t2@@0) (= _$t3 _$t3)) (and (= $t10@@1 _$t0@@2) (= $t11@@1  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_101925| $1_Roles_RoleId_$memory) $t10@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_101925| $1_Roles_RoleId_$memory) $t10@@1)) 1))) (not (= _$t0@@2 186537453))))))))) (and (=> (= (ControlFlow 0 164185) 166511) anon30_Then_correct@@0) (=> (= (ControlFlow 0 164185) 164245) anon30_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_69257_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_69257| stream@@5) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_69257| stream@@5) v@@43) 0)
 :qid |DesignatedDealerandybpl.129:13|
 :skolemid |2|
))))
 :qid |DesignatedDealerandybpl.2898:13|
 :skolemid |79|
))) (= (ControlFlow 0 163669) 164185)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_137032| $t25@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_95332| $t26@@0)) 0) (= (ControlFlow 0 163679) 163669)) inline$$InitEventStore$0$anon0_correct@@2))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 217869) 163679) anon0_correct@@2)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 220258) true)
))
(check-sat)
(pop 1)
; Valid
