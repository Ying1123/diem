(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_85291 0)) ((($Memory_85291 (|domain#$Memory_85291| |T@[Int]Bool|) (|contents#$Memory_85291| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_130177 0)) ((($Memory_130177 (|domain#$Memory_130177| |T@[Int]Bool|) (|contents#$Memory_130177| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_127079 0)) ((($Memory_127079 (|domain#$Memory_127079| |T@[Int]Bool|) (|contents#$Memory_127079| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_125084 0)) ((($Memory_125084 (|domain#$Memory_125084| |T@[Int]Bool|) (|contents#$Memory_125084| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_125364 0)) ((($Memory_125364 (|domain#$Memory_125364| |T@[Int]Bool|) (|contents#$Memory_125364| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_125051 0)) ((($Memory_125051 (|domain#$Memory_125051| |T@[Int]Bool|) (|contents#$Memory_125051| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_124836 0)) ((($Memory_124836 (|domain#$Memory_124836| |T@[Int]Bool|) (|contents#$Memory_124836| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_122346 0)) ((($Memory_122346 (|domain#$Memory_122346| |T@[Int]Bool|) (|contents#$Memory_122346| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_122282 0)) ((($Memory_122282 (|domain#$Memory_122282| |T@[Int]Bool|) (|contents#$Memory_122282| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_120904 0)) ((($Memory_120904 (|domain#$Memory_120904| |T@[Int]Bool|) (|contents#$Memory_120904| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_93618 0)) ((($Memory_93618 (|domain#$Memory_93618| |T@[Int]Bool|) (|contents#$Memory_93618| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_113306 0)) ((($Memory_113306 (|domain#$Memory_113306| |T@[Int]Bool|) (|contents#$Memory_113306| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126868 0)) ((($Memory_126868 (|domain#$Memory_126868| |T@[Int]Bool|) (|contents#$Memory_126868| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106221 0)) ((($Memory_106221 (|domain#$Memory_106221| |T@[Int]Bool|) (|contents#$Memory_106221| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106134 0)) ((($Memory_106134 (|domain#$Memory_106134| |T@[Int]Bool|) (|contents#$Memory_106134| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_101501 0)) ((($Memory_101501 (|domain#$Memory_101501| |T@[Int]Bool|) (|contents#$Memory_101501| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_101414 0)) ((($Memory_101414 (|domain#$Memory_101414| |T@[Int]Bool|) (|contents#$Memory_101414| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106485 0)) ((($Memory_106485 (|domain#$Memory_106485| |T@[Int]Bool|) (|contents#$Memory_106485| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_93450 0)) ((($Memory_93450 (|domain#$Memory_93450| |T@[Int]Bool|) (|contents#$Memory_93450| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106811 0)) ((($Memory_106811 (|domain#$Memory_106811| |T@[Int]Bool|) (|contents#$Memory_106811| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106394 0)) ((($Memory_106394 (|domain#$Memory_106394| |T@[Int]Bool|) (|contents#$Memory_106394| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121216 0)) ((($Memory_121216 (|domain#$Memory_121216| |T@[Int]Bool|) (|contents#$Memory_121216| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106712 0)) ((($Memory_106712 (|domain#$Memory_106712| |T@[Int]Bool|) (|contents#$Memory_106712| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_101097 0)) ((($Memory_101097 (|domain#$Memory_101097| |T@[Int]Bool|) (|contents#$Memory_101097| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_93534 0)) ((($Memory_93534 (|domain#$Memory_93534| |T@[Int]Bool|) (|contents#$Memory_93534| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_100952 0)) ((($Memory_100952 (|domain#$Memory_100952| |T@[Int]Bool|) (|contents#$Memory_100952| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_97025 0)) ((($Memory_97025 (|domain#$Memory_97025| |T@[Int]Bool|) (|contents#$Memory_97025| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_96938 0)) ((($Memory_96938 (|domain#$Memory_96938| |T@[Int]Bool|) (|contents#$Memory_96938| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_96851 0)) ((($Memory_96851 (|domain#$Memory_96851| |T@[Int]Bool|) (|contents#$Memory_96851| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_96764 0)) ((($Memory_96764 (|domain#$Memory_96764| |T@[Int]Bool|) (|contents#$Memory_96764| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_96677 0)) ((($Memory_96677 (|domain#$Memory_96677| |T@[Int]Bool|) (|contents#$Memory_96677| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_97290 0)) ((($Memory_97290 (|domain#$Memory_97290| |T@[Int]Bool|) (|contents#$Memory_97290| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_95803 0)) ((($Memory_95803 (|domain#$Memory_95803| |T@[Int]Bool|) (|contents#$Memory_95803| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_95869 0)) ((($Memory_95869 (|domain#$Memory_95869| |T@[Int]Bool|) (|contents#$Memory_95869| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_95722 0)) ((($Memory_95722 (|domain#$Memory_95722| |T@[Int]Bool|) (|contents#$Memory_95722| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_95641 0)) ((($Memory_95641 (|domain#$Memory_95641| |T@[Int]Bool|) (|contents#$Memory_95641| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_95560 0)) ((($Memory_95560 (|domain#$Memory_95560| |T@[Int]Bool|) (|contents#$Memory_95560| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_95479 0)) ((($Memory_95479 (|domain#$Memory_95479| |T@[Int]Bool|) (|contents#$Memory_95479| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_95365 0)) ((($Memory_95365 (|domain#$Memory_95365| |T@[Int]Bool|) (|contents#$Memory_95365| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_126005 0)) ((($Memory_126005 (|domain#$Memory_126005| |T@[Int]Bool|) (|contents#$Memory_126005| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_95398 0)) ((($Memory_95398 (|domain#$Memory_95398| |T@[Int]Bool|) (|contents#$Memory_95398| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_94854 0)) ((($Memory_94854 (|domain#$Memory_94854| |T@[Int]Bool|) (|contents#$Memory_94854| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_94296 0)) ((($Memory_94296 (|domain#$Memory_94296| |T@[Int]Bool|) (|contents#$Memory_94296| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_94027 0)) ((($Memory_94027 (|domain#$Memory_94027| |T@[Int]Bool|) (|contents#$Memory_94027| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_92043 0)) ((($Memory_92043 (|domain#$Memory_92043| |T@[Int]Bool|) (|contents#$Memory_92043| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_63200 0)) (((Multiset_63200 (|v#Multiset_63200| |T@[$EventRep]Int|) (|l#Multiset_63200| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_63200| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_63200|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_127906 0)) ((($Mutation_127906 (|l#$Mutation_127906| T@$Location) (|p#$Mutation_127906| (Seq Int)) (|v#$Mutation_127906| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_127862 0)) ((($Mutation_127862 (|l#$Mutation_127862| T@$Location) (|p#$Mutation_127862| (Seq Int)) (|v#$Mutation_127862| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_33193 0)) ((($Mutation_33193 (|l#$Mutation_33193| T@$Location) (|p#$Mutation_33193| (Seq Int)) (|v#$Mutation_33193| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_112040 0)) ((($Mutation_112040 (|l#$Mutation_112040| T@$Location) (|p#$Mutation_112040| (Seq Int)) (|v#$Mutation_112040| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_99705 0)) ((($Mutation_99705 (|l#$Mutation_99705| T@$Location) (|p#$Mutation_99705| (Seq Int)) (|v#$Mutation_99705| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_92512 0)) ((($Mutation_92512 (|l#$Mutation_92512| T@$Location) (|p#$Mutation_92512| (Seq Int)) (|v#$Mutation_92512| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_85919 0)) ((($Mutation_85919 (|l#$Mutation_85919| T@$Location) (|p#$Mutation_85919| (Seq Int)) (|v#$Mutation_85919| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_81287 0)) ((($Mutation_81287 (|l#$Mutation_81287| T@$Location) (|p#$Mutation_81287| (Seq Int)) (|v#$Mutation_81287| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_80541 0)) ((($Mutation_80541 (|l#$Mutation_80541| T@$Location) (|p#$Mutation_80541| (Seq Int)) (|v#$Mutation_80541| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_79101 0)) ((($Mutation_79101 (|l#$Mutation_79101| T@$Location) (|p#$Mutation_79101| (Seq Int)) (|v#$Mutation_79101| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_78355 0)) ((($Mutation_78355 (|l#$Mutation_78355| T@$Location) (|p#$Mutation_78355| (Seq Int)) (|v#$Mutation_78355| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_76915 0)) ((($Mutation_76915 (|l#$Mutation_76915| T@$Location) (|p#$Mutation_76915| (Seq Int)) (|v#$Mutation_76915| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_76169 0)) ((($Mutation_76169 (|l#$Mutation_76169| T@$Location) (|p#$Mutation_76169| (Seq Int)) (|v#$Mutation_76169| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_74729 0)) ((($Mutation_74729 (|l#$Mutation_74729| T@$Location) (|p#$Mutation_74729| (Seq Int)) (|v#$Mutation_74729| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_73983 0)) ((($Mutation_73983 (|l#$Mutation_73983| T@$Location) (|p#$Mutation_73983| (Seq Int)) (|v#$Mutation_73983| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_72543 0)) ((($Mutation_72543 (|l#$Mutation_72543| T@$Location) (|p#$Mutation_72543| (Seq Int)) (|v#$Mutation_72543| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_71797 0)) ((($Mutation_71797 (|l#$Mutation_71797| T@$Location) (|p#$Mutation_71797| (Seq Int)) (|v#$Mutation_71797| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_70357 0)) ((($Mutation_70357 (|l#$Mutation_70357| T@$Location) (|p#$Mutation_70357| (Seq Int)) (|v#$Mutation_70357| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_69611 0)) ((($Mutation_69611 (|l#$Mutation_69611| T@$Location) (|p#$Mutation_69611| (Seq Int)) (|v#$Mutation_69611| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_68171 0)) ((($Mutation_68171 (|l#$Mutation_68171| T@$Location) (|p#$Mutation_68171| (Seq Int)) (|v#$Mutation_68171| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_67425 0)) ((($Mutation_67425 (|l#$Mutation_67425| T@$Location) (|p#$Mutation_67425| (Seq Int)) (|v#$Mutation_67425| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_65947 0)) ((($Mutation_65947 (|l#$Mutation_65947| T@$Location) (|p#$Mutation_65947| (Seq Int)) (|v#$Mutation_65947| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_65201 0)) ((($Mutation_65201 (|l#$Mutation_65201| T@$Location) (|p#$Mutation_65201| (Seq Int)) (|v#$Mutation_65201| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_63200_| (|T@[$1_Event_EventHandle]Multiset_63200| T@$1_Event_EventHandle) T@Multiset_63200)
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
(declare-fun ReverseVec_57350 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_56365 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_56562 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_56759 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_57547 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_57153 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_56956 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_56168 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_63200| |T@[$1_Event_EventHandle]Multiset_63200|) |T@[$1_Event_EventHandle]Multiset_63200|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |XDXandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |XDXandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |XDXandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |XDXandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |XDXandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |XDXandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |XDXandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |XDXandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |XDXandybpl.590:13|
 :skolemid |15|
))))
 :qid |XDXandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |XDXandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |XDXandybpl.603:17|
 :skolemid |18|
)))))
 :qid |XDXandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |XDXandybpl.770:13|
 :skolemid |20|
))))
 :qid |XDXandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |XDXandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |XDXandybpl.783:17|
 :skolemid |23|
)))))
 :qid |XDXandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |XDXandybpl.950:13|
 :skolemid |25|
))))
 :qid |XDXandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |XDXandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |XDXandybpl.963:17|
 :skolemid |28|
)))))
 :qid |XDXandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |XDXandybpl.1130:13|
 :skolemid |30|
))))
 :qid |XDXandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |XDXandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |XDXandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |XDXandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |XDXandybpl.1310:13|
 :skolemid |35|
))))
 :qid |XDXandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |XDXandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |XDXandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |XDXandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |XDXandybpl.1490:13|
 :skolemid |40|
))))
 :qid |XDXandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |XDXandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |XDXandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |XDXandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |XDXandybpl.1670:13|
 :skolemid |45|
))))
 :qid |XDXandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |XDXandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |XDXandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |XDXandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |XDXandybpl.1850:13|
 :skolemid |50|
))))
 :qid |XDXandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |XDXandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |XDXandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |XDXandybpl.2030:13|
 :skolemid |55|
))))
 :qid |XDXandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |XDXandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |XDXandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |XDXandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |XDXandybpl.2210:13|
 :skolemid |60|
))))
 :qid |XDXandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |XDXandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |XDXandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |XDXandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |XDXandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |XDXandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |XDXandybpl.2459:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |XDXandybpl.2462:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_63200_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_63200| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63200| stream) v@@24) 0)
 :qid |XDXandybpl.129:13|
 :skolemid |2|
))))
 :qid |XDXandybpl.2538:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |XDXandybpl.2579:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |XDXandybpl.2585:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |XDXandybpl.2635:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |XDXandybpl.2641:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |XDXandybpl.2691:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |XDXandybpl.2697:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |XDXandybpl.2747:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |XDXandybpl.2753:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |XDXandybpl.2803:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |XDXandybpl.2809:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |XDXandybpl.2859:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |XDXandybpl.2865:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |XDXandybpl.2915:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |XDXandybpl.2921:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |XDXandybpl.2971:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |XDXandybpl.2977:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |XDXandybpl.3027:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |XDXandybpl.3033:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |XDXandybpl.3083:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |XDXandybpl.3089:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |XDXandybpl.3139:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |XDXandybpl.3145:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |XDXandybpl.3195:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |XDXandybpl.3201:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |XDXandybpl.3251:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |XDXandybpl.3257:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |XDXandybpl.3307:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |XDXandybpl.3313:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |XDXandybpl.3363:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |XDXandybpl.3369:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |XDXandybpl.3419:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |XDXandybpl.3425:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |XDXandybpl.3475:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |XDXandybpl.3481:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |XDXandybpl.3560:61|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |XDXandybpl.4125:36|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |XDXandybpl.4144:71|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |XDXandybpl.4208:46|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |XDXandybpl.4221:64|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |XDXandybpl.4234:75|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |XDXandybpl.4247:72|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |XDXandybpl.4276:55|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |XDXandybpl.4298:46|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |XDXandybpl.4316:49|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |XDXandybpl.4391:71|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |XDXandybpl.4405:91|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |XDXandybpl.4419:113|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |XDXandybpl.4433:75|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |XDXandybpl.4447:73|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |XDXandybpl.4467:48|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |XDXandybpl.4483:57|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |XDXandybpl.4497:83|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |XDXandybpl.4511:103|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |XDXandybpl.4525:125|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |XDXandybpl.4539:87|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |XDXandybpl.4553:85|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |XDXandybpl.4567:48|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |XDXandybpl.4588:45|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |XDXandybpl.4602:51|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |XDXandybpl.4625:48|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |XDXandybpl.4931:49|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |XDXandybpl.4944:65|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |XDXandybpl.5473:45|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |XDXandybpl.5486:45|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |XDXandybpl.5499:55|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |XDXandybpl.5513:55|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |XDXandybpl.5533:38|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |XDXandybpl.5554:44|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |XDXandybpl.5605:53|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |XDXandybpl.5667:53|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@35))))
 :qid |XDXandybpl.5729:45|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |XDXandybpl.5755:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |XDXandybpl.5769:55|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |XDXandybpl.5786:38|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |XDXandybpl.5800:48|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |XDXandybpl.5814:48|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |XDXandybpl.5834:41|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |XDXandybpl.5849:53|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |XDXandybpl.5863:53|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |XDXandybpl.5880:60|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |XDXandybpl.5897:60|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |XDXandybpl.5914:57|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |XDXandybpl.8145:68|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |XDXandybpl.8167:66|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |XDXandybpl.8193:66|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@50) true)
 :qid |XDXandybpl.8526:31|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@51) true)
 :qid |XDXandybpl.8880:31|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@51))
)))
(assert (forall ((s@@52 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@52)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@52)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@52))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@52))))
 :qid |XDXandybpl.8899:35|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@53)))
 :qid |XDXandybpl.10230:45|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@54))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@54))))
 :qid |XDXandybpl.10249:50|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@55)))
 :qid |XDXandybpl.10264:52|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@55))
)))
(assert (forall ((s@@56 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@56))))
 :qid |XDXandybpl.10291:65|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@57))))
 :qid |XDXandybpl.10676:60|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@58))))
 :qid |XDXandybpl.10693:66|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@59)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@59)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@59))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@59))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@59))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@59))))
 :qid |XDXandybpl.10722:50|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@60) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@60)))
 :qid |XDXandybpl.10741:45|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@61)) true))
 :qid |XDXandybpl.11060:87|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@62)))
 :qid |XDXandybpl.11272:47|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@63)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@63)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@63))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@63))))
 :qid |XDXandybpl.11292:58|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@64) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@64)))
 :qid |XDXandybpl.11307:39|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@65)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@65)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@65))))
 :qid |XDXandybpl.11329:58|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@66)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@66)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@66))))
 :qid |XDXandybpl.11346:58|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@67) true)
 :qid |XDXandybpl.11361:51|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@67))
)))
(assert (forall ((s@@68 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@68)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@68)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@68))))
 :qid |XDXandybpl.11378:60|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@69)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@69))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@69))))
 :qid |XDXandybpl.11676:47|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@70)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@70))))
 :qid |XDXandybpl.11698:63|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@71) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@71)))
 :qid |XDXandybpl.11713:57|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@72)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@72))))
 :qid |XDXandybpl.11729:54|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@73) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@73)))
 :qid |XDXandybpl.11743:55|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@74) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@74)))
 :qid |XDXandybpl.11757:57|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@75))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@75))))
 :qid |XDXandybpl.11779:56|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@76)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@76)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@76))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@76))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@76))))
 :qid |XDXandybpl.11804:52|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@77) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@77)))
 :qid |XDXandybpl.11820:54|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@78)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@78))))
 :qid |XDXandybpl.12691:47|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@79)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@79))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@79))))
 :qid |XDXandybpl.12715:47|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@80)))
 :qid |XDXandybpl.12956:49|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@81)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@81))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@81))))
 :qid |XDXandybpl.12999:49|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@82)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@82))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@82))))
 :qid |XDXandybpl.13028:48|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@83)))
 :qid |XDXandybpl.13323:47|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@83))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_57350 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57350 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_56365 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56365 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_56562 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56562 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_56759 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56759 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_57547 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57547 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_57153 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_57153 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_56956 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56956 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_56168 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |XDXandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |XDXandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_56168 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |XDXandybpl.245:54|
 :skolemid |263|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_63200|) (|l#1| |T@[$1_Event_EventHandle]Multiset_63200|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_63200_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_63200| (|Select__T@[$1_Event_EventHandle]Multiset_63200_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_63200| (|Select__T@[$1_Event_EventHandle]Multiset_63200_| |l#1| handle@@0))))
(Multiset_63200 (|lambda#3| (|v#Multiset_63200| (|Select__T@[$1_Event_EventHandle]Multiset_63200_| |l#0@@0| handle@@0)) (|v#Multiset_63200| (|Select__T@[$1_Event_EventHandle]Multiset_63200_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |XDXandybpl.2548:13|
 :skolemid |264|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_63200_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |XDXandybpl.124:29|
 :skolemid |265|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_92512)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_92512)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_92043)
(declare-fun $1_XDX_Reserve_$memory () T@$Memory_93450)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_93534)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory| () T@$Memory_93618)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_92043)
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
(declare-fun $t14 () T@$Mutation_92512)
(declare-fun $t14@0 () T@$Mutation_92512)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t3 () T@$Mutation_92512)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 201290) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_92512| $t14@1) (seq.++ (|p#$Mutation_92512| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_92512| $t14@1)))) (=> (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_92512 (|l#$Mutation_92512| $t14@1) (|p#$Mutation_92512| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_92043 (|Store__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_92512| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_92512| $t14@2)) (|v#$Mutation_92512| $t14@2)))))) (and (=> (= (ControlFlow 0 144571) (- 0 201934)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 144571) (- 0 201946)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 144571) (- 0 201958)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 144571) (- 0 201985)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 144571) (- 0 201995)) (not (not (= _$t0 0)))) (=> (not (not (= _$t0 0))) (and (=> (= (ControlFlow 0 144571) (- 0 202009)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 144571) (- 0 202033)) (= $t25 _$t2))))))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 144629) 144571)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 144381) 144571)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 144377) (- 0 202077)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= _$t0 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 144377) (- 0 202114)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= _$t0 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 144625) 144377))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 144609) 144629) anon25_Then_correct) (=> (= (ControlFlow 0 144609) 144625) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 144261) 144377))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 144245) 144381) anon26_Then_correct) (=> (= (ControlFlow 0 144245) 144261) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 144209) 144245)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 144215) 144209)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_92512| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_92512| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 144163) 144609) anon24_Then_correct) (=> (= (ControlFlow 0 144163) 144215) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 144643) 144377))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 144695) 144643) anon23_Then_correct) (=> (= (ControlFlow 0 144695) 144163) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 144693) 144695)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_92512 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 144117) 144643) anon23_Then_correct) (=> (= (ControlFlow 0 144117) 144163) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 144095) (- 0 201588)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 144095) 144693) anon22_Then_correct) (=> (= (ControlFlow 0 144095) 144117) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= _$t0 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 144725) 144377))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= _$t0 0)))) (and (=> (= (ControlFlow 0 144075) 144725) anon21_Then_correct) (=> (= (ControlFlow 0 144075) 144095) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 144751) 144377))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |XDXandybpl.3748:20|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 144053) 144751) anon20_Then_correct) (=> (= (ControlFlow 0 144053) 144075) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_63200_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_63200| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63200| stream@@0) v@@35) 0)
 :qid |XDXandybpl.129:13|
 :skolemid |2|
))))
 :qid |XDXandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 143941) 144053)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_92512| $t3)) 0) (= (seq.len (|p#$Mutation_92512| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 143951) 143941))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 201290) 143951) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@9 () Bool)
(declare-fun $1_XDX_Reserve_$memory@1 () T@$Memory_93450)
(declare-fun _$t0@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_94027)
(declare-fun $t7 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_95479)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_96764)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_95803)
(declare-fun $t8 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $t11@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| () T@$Memory_93534)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| () T@$Memory_93618)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@10 () Int)
(declare-fun $1_XDX_Reserve_$memory@0 () T@$Memory_93450)
(declare-fun |Store__T@[Int]$1_XDX_Reserve_| (|T@[Int]$1_XDX_Reserve| Int T@$1_XDX_Reserve) |T@[Int]$1_XDX_Reserve|)
(declare-fun |Select__T@[Int]$1_XDX_Reserve_| (|T@[Int]$1_XDX_Reserve| Int) T@$1_XDX_Reserve)
(assert (forall ( ( ?x0 |T@[Int]$1_XDX_Reserve|) ( ?x1 Int) ( ?x2 T@$1_XDX_Reserve)) (! (= (|Select__T@[Int]$1_XDX_Reserve_| (|Store__T@[Int]$1_XDX_Reserve_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_XDX_Reserve|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_XDX_Reserve)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_XDX_Reserve_| (|Store__T@[Int]$1_XDX_Reserve_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_XDX_Reserve_| ?x0 ?y1))) :weight 0)))
(declare-fun $t43@0 () T@$1_XDX_Reserve)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0| () Bool)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0| () Bool)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0| () Int)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| () |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun $t41 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| () T@$Memory_93618)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| () Int)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| () T@$Memory_93618)
(declare-fun |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0| () T@$Memory_93618)
(declare-fun |Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1| () |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| () Int)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1| () Bool)
(declare-fun |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| () T@$Memory_93534)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0| () Bool)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0| () Bool)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0| () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| () T@$Mutation_112040)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1| () T@$Mutation_33193)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2| () T@$Mutation_33193)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3| () T@$Mutation_112040)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| () T@$Memory_93534)
(declare-fun |Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0| () T@$Mutation_112040)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1| () T@$Mutation_112040)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t2@0| () T@$Mutation_112040)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@0| () T@$Mutation_33193)
(declare-fun |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t3@0| () Int)
(declare-fun $t40 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| () T@$Memory_93534)
(declare-fun $abort_code@2 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| () T@$Memory_93534)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_MintCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@0| () |T@$1_Diem_BurnCapability'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_95479)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_95869)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_95869)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_95479)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_95479)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_95869)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_95869)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1| () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 () T@$Mutation_99705)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 () T@$Mutation_99705)
(declare-fun |inline$$1_Vector_push_back'vec'u8''$0$m'@1| () T@$Mutation_80541)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 () T@$Mutation_80541)
(declare-fun $t33@0 () (Seq Int))
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 () Int)
(declare-fun |inline$$1_Vector_contains'vec'u8''$0$res@1| () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0 () T@$Mutation_99705)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0 () T@$Mutation_80541)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 () T@$1_DiemConfig_Configuration)
(declare-fun inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t39@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t40@0| () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| () T@$Memory_93534)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1| () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t28 () T@$1_FixedPoint32_FixedPoint32)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles@3 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@4 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Event_EventHandles@2 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@1 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0| () Bool)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t11@0| () Int)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t12@0| () T@$1_DiemConfig_Configuration)
(declare-fun |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun $t29 () Bool)
(declare-fun $t34 () Int)
(declare-fun $t35 () T@$1_DiemConfig_Configuration)
(declare-fun $t36 () Int)
(declare-fun $t26 () Int)
(declare-fun $t13 () Int)
(declare-fun $t27 () Int)
(declare-fun $t25@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t24@@0 () Int)
(declare-fun $t19 () Int)
(declare-fun $t16@0 () Bool)
(declare-fun $t14@@0 () Bool)
(declare-fun $t12@@0 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_106134)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_106221)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_101414)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_101501)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_106712)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_106394)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_106811)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_106485)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(push 1)
(set-info :boogie-vc-id $1_XDX_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 202353) (let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Then_correct| true))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Then_correct| true))
(let ((anon33_Else_correct  (=> (not $abort_flag@9) (and (=> (= (ControlFlow 0 153408) (- 0 207900)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 153408) (- 0 207912)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory@1) 173345816))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory@1) 173345816)) (and (=> (= (ControlFlow 0 153408) (- 0 207930)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 153408) (- 0 207944)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816)) (and (=> (= (ControlFlow 0 153408) (- 0 207954)) (not (or (= 1000000 0) (> 1000000 10000000000)))) (=> (not (or (= 1000000 0) (> 1000000 10000000000))) (and (=> (= (ControlFlow 0 153408) (- 0 207973)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 153408) (- 0 207984)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 153408) (- 0 207996)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t7)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t7)) 0))) (and (=> (= (ControlFlow 0 153408) (- 0 208014)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 153408) (- 0 208028)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 153408) (- 0 208042)) (not (exists ((i@@40 Int) ) (!  (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr)))) i@@40) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
)))) (=> (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@0 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@0)))) i@@41) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 153408) (- 0 208062)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (and (=> (= (ControlFlow 0 153408) (- 0 208075)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 153408) (- 0 208087)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (and (=> (= (ControlFlow 0 153408) (- 0 208129)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0)) (and (=> (= (ControlFlow 0 153408) (- 0 208140)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 153408) (- 0 208150)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0))) (and (=> (= (ControlFlow 0 153408) (- 0 208162)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (and (=> (= (ControlFlow 0 153408) (- 0 208180)) (not (not (= _$t0@@0 173345816)))) (=> (not (not (= _$t0@@0 173345816))) (and (=> (= (ControlFlow 0 153408) (- 0 208194)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0))) (and (=> (= (ControlFlow 0 153408) (- 0 208206)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (and (=> (= (ControlFlow 0 153408) (- 0 208224)) (not (not (= _$t1@@0 186537453)))) (=> (not (not (= _$t1@@0 186537453))) (and (=> (= (ControlFlow 0 153408) (- 0 208238)) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816) (and (=> (= (ControlFlow 0 153408) (- 0 208244)) (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) 0)) (=> (= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) 0) (and (=> (= (ControlFlow 0 153408) (- 0 208256)) (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) false)) (=> (= (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) false) (and (=> (= (ControlFlow 0 153408) (- 0 208268)) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3|) _$t0@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3|) _$t0@@0) (=> (= (ControlFlow 0 153408) (- 0 208277)) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory@1) 173345816)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 146323) (- 0 207257)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (= _$t0@@0 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816)) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0@@0 173345816))) (not (= _$t0@@0 173345816))) (exists ((i@@42 Int) ) (!  (and (and (|$IsValid'u64'| i@@42) (and (>= i@@42 0) (< i@@42 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@1 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@1)))) i@@42) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (not (= _$t0@@0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (not (= _$t1@@0 186537453)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (not (= _$t0@@0 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816)) (or (= 1000000 0) (> 1000000 10000000000))) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t7)) 0))) (not (= _$t0@@0 173345816))) (not (= _$t0@@0 173345816))) (exists ((i@@43 Int) ) (!  (and (and (|$IsValid'u64'| i@@43) (and (>= i@@43 0) (< i@@43 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@2 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@2)))) i@@43) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8)))) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)) 0))) (not (= _$t0@@0 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)) 1))) (not (= _$t1@@0 186537453))) (=> (= (ControlFlow 0 146323) (- 0 207503)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 $t13@0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816) (= 6 $t13@0))) (and (or (= 1000000 0) (> 1000000 10000000000)) (= 7 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0) (= 6 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t7)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t7)) 0)) (= 3 $t13@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t13@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t13@0))) (and (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))))))) (= (seq.nth (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@3 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@3)))) i@@44) (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
)) (= 7 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (= 4 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 $t13@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8) 18446744073709551615)) (< $t9@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8))) (= 1 $t13@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0) (= 6 $t13@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t10@@0)) 0)) (= 3 $t13@0))) (and (not (= _$t0@@0 173345816)) (= 2 $t13@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)) (= 5 $t13@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $t11@@0)) 1)) (= 3 $t13@0))) (and (not (= _$t1@@0 186537453)) (= 2 $t13@0))))))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@10 $abort_code@10)) (and (= $t13@0 $abort_code@10) (= (ControlFlow 0 153422) 146323))) L3_correct)))
(let ((anon32_Then$1_correct  (=> (= $1_XDX_Reserve_$memory@1 $1_XDX_Reserve_$memory) (=> (and (= $abort_flag@9 true) (= $abort_code@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 153472) 153422) anon33_Then_correct) (=> (= (ControlFlow 0 153472) 153408) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) _$t0@@0) (= (ControlFlow 0 153470) 153472)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) _$t0@@0)) (=> (and (and (= $1_XDX_Reserve_$memory@0 ($Memory_93450 (|Store__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) _$t0@@0 true) (|Store__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_93450| $1_XDX_Reserve_$memory) _$t0@@0 $t43@0))) (= $1_XDX_Reserve_$memory@1 $1_XDX_Reserve_$memory@0)) (and (= $abort_flag@9 $abort_flag@8) (= $abort_code@10 $abort_code@9))) (and (=> (= (ControlFlow 0 153010) 153422) anon33_Then_correct) (=> (= (ControlFlow 0 153010) 153408) anon33_Else_correct))))))
(let ((anon31_Else_correct  (=> (not $abort_flag@8) (=> (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1|) (= $t43@0 ($1_XDX_Reserve |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 152992) 153470) anon32_Then_correct) (=> (= (ControlFlow 0 152992) 153010) anon32_Else_correct))))))
(let ((anon31_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@9 $abort_code@9)) (and (= $t13@0 $abort_code@9) (= (ControlFlow 0 153486) 146323))) L3_correct)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|  (=> (= $abort_code@9 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1|) (=> (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@0|) (= $abort_flag@8 true)) (and (=> (= (ControlFlow 0 152858) 153486) anon31_Then_correct) (=> (= (ControlFlow 0 152858) 152992) anon31_Else_correct))))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| $abort_code@8) (= (ControlFlow 0 152852) 152858))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (= 5 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|) (= (ControlFlow 0 152884) 152858))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Then_correct|  (=> |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) (= 5 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) 1)) (= 3 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|))) (and (not (= _$t1@@0 186537453)) (= 2 |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|))) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t4@0|) (= (ControlFlow 0 152956) 152858))) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (and (not $abort_flag@7) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| (|$1_Diem_Preburn'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1|) (= $abort_code@9 $abort_code@8)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t7@1|) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 152838) 153486) anon31_Then_correct) (=> (= (ControlFlow 0 152838) 152992) anon31_Else_correct))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 152780) 152852) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 152780) 152838) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@7 true)) (and (= $abort_code@8 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 152810) 152852) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 152810) 152838) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon9_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816))) (and (=> (= (ControlFlow 0 152752) 152810) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 152752) 152780) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0|) (= (ControlFlow 0 152816) 152752)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Else_correct|  (=> (and (not |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0|) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t5@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5|) 173345816)))) (and (=> (= (ControlFlow 0 152595) 152884) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Then_correct|) (=> (= (ControlFlow 0 152595) 152816) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon8_Else_correct|)))))
(let ((|inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t1@0| _$t1@@0) (= _$t1@@0 _$t1@@0)) (and (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0| _$t1@@0) (= |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t3@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$$t2@0|)) 1))) (not (= _$t1@@0 186537453)))))) (and (=> (= (ControlFlow 0 152577) 152956) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Then_correct|) (=> (= (ControlFlow 0 152577) 152595) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon7_Else_correct|)))))
(let ((anon30_Else_correct  (=> (not $abort_flag@6) (=> (and (= $t41 _$t1@@0) (= (ControlFlow 0 152962) 152577)) |inline$$1_Diem_create_preburn'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon30_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= $t13@0 $abort_code@7) (= (ControlFlow 0 153500) 146323))) L3_correct)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (and (and (not $abort_flag@5) (= $abort_code@7 $abort_code@6)) (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1|) (= $abort_flag@6 $abort_flag@5))) (and (=> (= (ControlFlow 0 152065) 153500) anon30_Then_correct) (=> (= (ControlFlow 0 152065) 152962) anon30_Else_correct)))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|  (=> (= $abort_code@7 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1|) (=> (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@3| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2|) (= $abort_flag@6 true)) (and (=> (= (ControlFlow 0 151981) 153500) anon30_Then_correct) (=> (= (ControlFlow 0 151981) 152962) anon30_Else_correct))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| $abort_code@6) (= (ControlFlow 0 152079) 151981))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then$1_correct|  (=> (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 152129) 152079) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 152129) 152065) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0) (= (ControlFlow 0 152127) 152129)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0)) (=> (and (and (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0| ($Memory_93618 (|Store__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0 true) (|Store__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) _$t0@@0 |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1|))) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@1| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4))) (and (=> (= (ControlFlow 0 152055) 152079) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 152055) 152065) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon11_Else_correct|))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Then_correct|  (=> inline$$Not$3$dst@1 (=> (and (= _$t0@@0 _$t0@@0) (|$IsValid'u64'| 18446744073709551615)) (=> (and (and (|$IsValid'u64'| 18446744073709551615) (|$IsValid'u64'| 86400000000)) (and (|$IsValid'u64'| 18446744073709551615) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t18@1| (|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 18446744073709551615 18446744073709551615 86400000000 18446744073709551615)))) (and (=> (= (ControlFlow 0 152037) 152127) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 152037) 152055) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon10_Else_correct|)))))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory@2| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t13@1| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= (ControlFlow 0 151975) 151981))) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$L3_correct|))))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0$1_correct|  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| 6)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t12@0|) (= inline$$Not$3$dst@1 inline$$Not$3$dst@1))) (and (=> (= (ControlFlow 0 151959) 152037) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 151959) 151975) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon9_Else_correct|))))))
(let ((inline$$Not$3$anon0_correct  (=> (and (= inline$$Not$3$dst@1  (not |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1|)) (= (ControlFlow 0 151919) 151959)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0$1_correct|)))
(let ((|inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (and (|$IsValid'address'| |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0| _$t0@@0)) (and (= |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t9@1| (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 151925) 151919))) inline$$Not$3$anon0_correct))))
(let ((anon29_Else_correct  (=> (and (not $abort_flag@4) (= (ControlFlow 0 152133) 151925)) |inline$$1_AccountLimits_publish_unrestricted_limits'$1_XDX_XDX'$0$anon0_correct|)))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t13@0 $abort_code@5) (= (ControlFlow 0 153514) 146323))) L3_correct)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (=> (and (= $abort_flag@4 true) (= $abort_code@5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1|)) (and (=> (= (ControlFlow 0 151352) 153514) anon29_Then_correct) (=> (= (ControlFlow 0 151352) 152133) anon29_Else_correct))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| $abort_code@4) (= (ControlFlow 0 151346) 151352))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Then_correct|  (=> |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0| (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= 5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|) (= (ControlFlow 0 151430) 151352))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Then_correct|  (=> |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0| (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) (= 5 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) 1)) (= 3 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|))) (and (not (= _$t1@@0 186537453)) (= 2 |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|))) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t6@0|) (= (ControlFlow 0 151502) 151352))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$L2_correct|))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|  (=> (and (not $abort_flag@3) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))) (=> (and (and (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$temp_0'$1_Diem_CurrencyInfo'$1_XDX_XDX''@1|) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1| ($Mutation_33193 (|l#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (seq.++ (|p#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (seq.unit 7)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))))) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2| ($Mutation_33193 (|l#$Mutation_33193| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1|) (|p#$Mutation_33193| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@1|) false)) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3| ($Mutation_112040 (|l#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (|p#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|) (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|v#$Mutation_33193| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@2|) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|)) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2|))))))) (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4| ($Memory_93534 (|Store__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)) true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) (|a#$Global| (|l#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)) (|v#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@3|)))) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@5| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@4|)) (and (= $abort_flag@4 $abort_flag@3) (= $abort_code@5 $abort_code@4)))) (and (=> (= (ControlFlow 0 151332) 153514) anon29_Then_correct) (=> (= (ControlFlow 0 151332) 152133) anon29_Else_correct))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then$1_correct|  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0|)) (and (=> (= (ControlFlow 0 151404) 151346) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 151404) 151332) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then_correct|  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)) (= (ControlFlow 0 151402) 151404)) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then$1_correct|)))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Else_correct|  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816) (=> (and (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1| ($Mutation_112040 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816))) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@2| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@1|))) (and (=> (= (ControlFlow 0 151266) 151346) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Then_correct|) (=> (= (ControlFlow 0 151266) 151332) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon13_Else_correct|))))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Else_correct|  (=> (and (not |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0|) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 151244) 151402) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Then_correct|) (=> (= (ControlFlow 0 151244) 151266) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon12_Else_correct|)))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Else_correct|  (=> (and (not |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0|) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t7@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3|) 173345816)))) (and (=> (= (ControlFlow 0 151230) 151430) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 151230) 151244) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon11_Else_correct|)))))
(let ((|inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon0_correct|  (=> (and (and (and (= (seq.len (|p#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t2@0|)) 0) (= (seq.len (|p#$Mutation_112040| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t9@0|)) 0)) (and (= (seq.len (|p#$Mutation_33193| |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t10@0|)) 0) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t3@0| _$t1@@0))) (and (and (= _$t1@@0 _$t1@@0) (= false false)) (and (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0| _$t1@@0) (= |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t5@0|  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$$t4@0|)) 1))) (not (= _$t1@@0 186537453))))))) (and (=> (= (ControlFlow 0 151212) 151502) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 151212) 151230) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon10_Else_correct|)))))
(let ((anon28_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1|)) (and (= $t40 _$t1@@0) (= (ControlFlow 0 151506) 151212))) |inline$$1_Diem_update_minting_ability'$1_XDX_XDX'$0$anon0_correct|))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0 $abort_code@3) (= (ControlFlow 0 153528) 146323))) L3_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|  (=> (and (not $abort_flag@1) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| (|$1_Diem_MintCapability'$1_XDX_XDX'| false))) (=> (and (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| (|$1_Diem_BurnCapability'$1_XDX_XDX'| false)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1|)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1|) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|))) (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t42@1|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t44@1|)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1)))) (and (=> (= (ControlFlow 0 150237) 153528) anon28_Then_correct) (=> (= (ControlFlow 0 150237) 151506) anon28_Else_correct))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@3| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret0@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$ret1@0|)) (and (= $abort_code@3 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1|) (= $abort_flag@2 true))) (and (=> (= (ControlFlow 0 148072) 153528) anon28_Then_correct) (=> (= (ControlFlow 0 148072) 151506) anon28_Else_correct))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|  (=> $abort_flag@1 (=> (and (and (= $abort_code@2 $abort_code@2) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| $abort_code@2)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 150251) 148072))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816) (=> (and (and (= (let ((addr@@4 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@4))) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95869| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $abort_flag@1 $abort_flag@0@@0) (= $abort_code@2 $abort_code@1@@0))) (and (=> (= (ControlFlow 0 150007) 150251) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 150007) 150237) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2|) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_95479 (|Store__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 149981) 150007))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@2| (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_95479 (|Store__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 150019) 150007))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon17_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1|) (=> (and (= $1_DiemConfig_Configuration_$memory@1 ($Memory_95869 (|Store__T@[Int]Bool_| (|domain#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1)) (and (=> (= (ControlFlow 0 149967) 150019) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 149967) 149981) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct  (=> |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'bool'@1| (=> (and (= $1_DiemConfig_Configuration_$memory@0 ($Memory_95869 (|Store__T@[Int]Bool_| (|domain#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816 |inline$$1_RegisteredCurrencies_add_currency_code$0$$temp_0'$1_DiemConfig_Configuration'@1|))) (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0)) (and (=> (= (ControlFlow 0 150031) 150019) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Then_correct) (=> (= (ControlFlow 0 150031) 149981) inline$$1_RegisteredCurrencies_add_currency_code$0$anon24_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct  (=> (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0) (and (=> (= (ControlFlow 0 149955) 150031) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Then_correct) (=> (= (ControlFlow 0 149955) 149967) inline$$1_RegisteredCurrencies_add_currency_code$0$anon23_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1)) (and (=> (= (ControlFlow 0 149744) 150251) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Then_correct|) (=> (= (ControlFlow 0 149744) 150237) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon42_Else_correct|)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (= 4 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))) (= 1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 150129) 149744))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct  (=> (and (not $abort_flag@0@@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2 ($Mutation_99705 (|l#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (|p#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) ($1_RegisteredCurrencies_RegisteredCurrencies (|v#$Mutation_80541| |inline$$1_Vector_push_back'vec'u8''$0$m'@1|))))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@1 (|v#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@2)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t20@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0) 18446744073709551615)) (< inline$$1_RegisteredCurrencies_add_currency_code$0$$t19@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| inline$$1_RegisteredCurrencies_add_currency_code$0$$t18@0))))))) (and (=> (= (ControlFlow 0 149947) 150129) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Then_correct) (=> (= (ControlFlow 0 149947) 149955) inline$$1_RegisteredCurrencies_add_currency_code$0$anon22_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1@@0) (= (ControlFlow 0 150143) 149744))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'vec'u8''$0$m'@1| ($Mutation_80541 (|l#$Mutation_80541| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (|p#$Mutation_80541| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.++ (|v#$Mutation_80541| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1) (seq.unit $t33@0)))) (and (=> (= (ControlFlow 0 149821) 150143) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Then_correct) (=> (= (ControlFlow 0 149821) 149947) inline$$1_RegisteredCurrencies_add_currency_code$0$anon21_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct  (=> (and (and inline$$Not$2$dst@1 (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1 ($Mutation_99705 ($Local 2) (as seq.empty (Seq Int)) inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0))) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@1 ($Mutation_80541 (|l#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.++ (|p#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1) (seq.unit 0)) (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (|v#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@1)))) (= (ControlFlow 0 149827) 149821))) |inline$$1_Vector_push_back'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct  (=> (and (and (not inline$$Not$2$dst@1) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= (ControlFlow 0 149738) 149744))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 7)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t14@0) (= inline$$Not$2$dst@1 inline$$Not$2$dst@1))) (and (=> (= (ControlFlow 0 149722) 149827) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Then_correct) (=> (= (ControlFlow 0 149722) 149738) inline$$1_RegisteredCurrencies_add_currency_code$0$anon20_Else_correct))))))
(let ((inline$$Not$2$anon0_correct  (=> (and (= inline$$Not$2$dst@1  (not |inline$$1_Vector_contains'vec'u8''$0$res@1|)) (= (ControlFlow 0 149682) 149722)) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else$1_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct  (=> (and (not $abort_flag@0@@0) (= (ControlFlow 0 149688) 149682)) inline$$Not$2$anon0_correct)))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 $abort_code@1@@0) (= (ControlFlow 0 150157) 149744))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct)))
(let ((|inline$$1_Vector_contains'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'vec'u8''$0$res@1| (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (>= i@@45 0) (< i@@45 (seq.len inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1)))) (= (seq.nth inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 i@@45) $t33@0))
 :qid |XDXandybpl.1855:13|
 :skolemid |52|
))) (and (=> (= (ControlFlow 0 149638) 150157) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Then_correct) (=> (= (ControlFlow 0 149638) 149688) inline$$1_RegisteredCurrencies_add_currency_code$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 (let ((addr@@5 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) addr@@5)))) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t10@1 (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| inline$$1_RegisteredCurrencies_add_currency_code$0$$t2@0)) (= (ControlFlow 0 149644) 149638))) |inline$$1_Vector_contains'vec'u8''$0$anon0_correct|))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (= 5 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0)) (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@1 inline$$1_RegisteredCurrencies_add_currency_code$0$$t8@0) (= (ControlFlow 0 150185) 149744))) inline$$1_RegisteredCurrencies_add_currency_code$0$L3_correct))))
(let ((inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_99705| inline$$1_RegisteredCurrencies_add_currency_code$0$$t15@0)) 0) (=> (and (= (seq.len (|p#$Mutation_80541| inline$$1_RegisteredCurrencies_add_currency_code$0$$t16@0)) 0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t5@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t6@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= _$t0@@0 _$t0@@0)) (and (= $t33@0 $t33@0) (= inline$$1_RegisteredCurrencies_add_currency_code$0$$t7@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 149566) 150185) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Then_correct) (=> (= (ControlFlow 0 149566) 149644) inline$$1_RegisteredCurrencies_add_currency_code$0$anon18_Else_correct)))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|  (=> (and (and (not $abort_flag@0@@0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t39@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t40@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 150189) 149566))) inline$$1_RegisteredCurrencies_add_currency_code$0$anon0_correct)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| $abort_code@1@@0)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 150265) 148072))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then$1_correct|  (=> (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 150315) 150265) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 150315) 150189) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0) (= (ControlFlow 0 150313) 150315)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0)) (=> (and (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0| ($Memory_93534 (|Store__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0 true) (|Store__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) _$t0@@0 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1|))) (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@1| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@0|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 148682) 150265) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Then_correct|) (=> (= (ControlFlow 0 148682) 150189) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon41_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Else_correct|  (=> (and (not false) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t38@1| (|$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0 0 $t28 true 1000000 1000 $t33@0 true |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 148664) 150313) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Then_correct|) (=> (= (ControlFlow 0 148664) 148682) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon40_Else_correct|)))))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0|) false) (= $1_Event_EventHandles@4 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@3 |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148620) 150329) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Then_correct|) (=> (= (ControlFlow 0 148620) 148664) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon39_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Else_correct|  (=> (and (not false) (= (ControlFlow 0 148626) 148620)) |inline$$1_Event_new_event_handle'$1_Diem_ToXDXExchangeRateUpdateEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@3 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@2 |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148538) 150343) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Then_correct|) (=> (= (ControlFlow 0 148538) 148626) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon38_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Else_correct|  (=> (and (not false) (= (ControlFlow 0 148544) 148538)) |inline$$1_Event_new_event_handle'$1_Diem_CancelBurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0|) false) (= $1_Event_EventHandles@2 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@1 |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148456) 150357) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Then_correct|) (=> (= (ControlFlow 0 148456) 148544) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon37_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Else_correct|  (=> (and (not false) (= (ControlFlow 0 148462) 148456)) |inline$$1_Event_new_event_handle'$1_Diem_PreburnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0|) false) (= $1_Event_EventHandles@1 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles@0 |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148374) 150371) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Then_correct|) (=> (= (ControlFlow 0 148374) 148462) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon36_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Else_correct|  (=> (and (not false) (= (ControlFlow 0 148380) 148374)) |inline$$1_Event_new_event_handle'$1_Diem_BurnEvent'$0$anon0_correct|)))
(let ((|inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 148292) 150385) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Then_correct|) (=> (= (ControlFlow 0 148292) 148380) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon35_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Then_correct|  (=> (and (and |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| (|$IsValid'u128'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 148298) 148292))) |inline$$1_Event_new_event_handle'$1_Diem_MintEvent'$0$anon0_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 148196) 148072))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| 7)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t29@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1|))) (and (=> (= (ControlFlow 0 148180) 148298) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Then_correct|) (=> (= (ControlFlow 0 148180) 148196) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon34_Else_correct|))))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then$1_correct|  (=> (= inline$$Le$0$dst@1 inline$$Le$0$dst@1) (=> (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| inline$$Le$0$dst@1) (= (ControlFlow 0 150451) 148180)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= 1000000 10000000000)) (= (ControlFlow 0 150435) 150451)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then_correct|  (=> inline$$Lt$0$dst@1@@0 (=> (and (|$IsValid'u64'| 10000000000) (= (ControlFlow 0 150441) 150435)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Else_correct|  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= false false)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t10@1| false) (= (ControlFlow 0 148150) 148180))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L5_correct|)))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (= inline$$Lt$0$dst@1@@0 (< 0 1000000)) (and (=> (= (ControlFlow 0 148122) 150441) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Then_correct|) (=> (= (ControlFlow 0 148122) 148150) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon33_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Then_correct|  (=> inline$$Not$1$dst@1 (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 148128) 148122)) inline$$Lt$0$anon0_correct@@0))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 148066) 148072))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else$1_correct|  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| 6)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t22@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 148050) 148128) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Then_correct|) (=> (= (ControlFlow 0 148050) 148066) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon32_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1|)) (= (ControlFlow 0 148010) 148050)) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else$1_correct|)))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0|) (=> (and (and (|$IsValid'address'| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0| _$t0@@0)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t19@1| (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t18@0|)) (= (ControlFlow 0 148016) 148010))) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0| (=> (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 150481) 148072))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (and (not |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t17@0|  (not (= _$t0@@0 173345816)))) (and (=> (= (ControlFlow 0 147954) 150481) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 147954) 148016) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon31_Else_correct|)))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0| (or (or (or (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) (= 5 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) 0)) (= 3 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|))) (and (not (= _$t0@@0 173345816)) (= 2 |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)))) (=> (and (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@1| |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory@2| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 150573) 148072))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$L9_correct|))))
(let ((|inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t11@0| _$t0@@0) (=> (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t12@0| (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816)) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t13@0| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (and (= _$t0@@0 _$t0@@0) (= $t28 $t28)) (and (= true true) (= 1000000 1000000))) (and (and (= 1000 1000) (= $t33@0 $t33@0)) (and (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0| _$t0@@0) (= |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t15@0|  (or (or (or (not (= _$t0@@0 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$$t14@0|)) 0))) (not (= _$t0@@0 173345816))))))) (and (=> (= (ControlFlow 0 147932) 150573) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 147932) 147954) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))))
(let ((anon27_Else_correct  (=> (not $t29) (=> (and (|$IsValid'$1_FixedPoint32_FixedPoint32'| $t28) (= $t28 (ite (= 1 1) ($1_FixedPoint32_FixedPoint32 1) ($1_FixedPoint32_FixedPoint32 2)))) (=> (and (and (and (|$IsValid'u64'| 1000000) (|$IsValid'u64'| 1000)) (and (= $t33@0 (seq.++ (seq.++ (seq.unit 88) (seq.unit 68)) (seq.unit 88))) (|$IsValid'vec'u8''| $t33@0))) (and (and (= $t34 _$t0@@0) (= $t35 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t36 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= (ControlFlow 0 150581) 147932)))) |inline$$1_Diem_register_currency'$1_XDX_XDX'$0$anon0_correct|)))))
(let ((anon27_Then_correct  (=> $t29 (=> (and (and (or (or (and (= $t26 0) (= 7 $t13)) (and (and (= $t27 0) (not (= $t25@@0 0))) (= 7 $t13))) (and (> $t27 18446744073709551615) (= 8 $t13))) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 153596) 146323))) L3_correct))))
(let ((anon26_Then_correct@@0  (=> (and inline$$Not$0$dst@1 (|$IsValid'u64'| 1)) (=> (and (and (and (|$IsValid'u64'| 1) (= $t22 ($shl 1 64))) (and (= $t23@@0 ($shl 1 32)) (= $t24@@0 (div $t22 $t23@@0)))) (and (and (= $t25@@0 ($shl 1 64)) (= $t26 ($shl 1 32))) (and (= $t27 (div $t25@@0 $t26)) (= $t29  (or (or (= $t26 0) (and (= $t27 0) (not (= $t25@@0 0)))) (> $t27 18446744073709551615)))))) (and (=> (= (ControlFlow 0 146451) 153596) anon27_Then_correct) (=> (= (ControlFlow 0 146451) 150581) anon27_Else_correct))))))
(let ((anon26_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1) (= $t19 $t19)) (and (= $t13@0 $t19) (= (ControlFlow 0 145615) 146323))) L3_correct)))
(let ((anon25_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t19) (= $t19 6)) (and (= $t19 $t19) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 145599) 146451) anon26_Then_correct@@0) (=> (= (ControlFlow 0 145599) 145615) anon26_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t16@0)) (= (ControlFlow 0 145563) 145599)) anon25_Else$1_correct)))
(let ((anon25_Else_correct@@0  (=> (and (and (not $t14@@0) (|$IsValid'address'| 173345816)) (and (= $t16@0 (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816)) (= (ControlFlow 0 145569) 145563))) inline$$Not$0$anon0_correct)))
(let ((anon25_Then_correct@@0  (=> $t14@@0 (=> (and (and (and (not (= _$t0@@0 173345816)) (= 2 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 153626) 146323))) L3_correct))))
(let ((anon24_Else_correct@@0  (=> (and (not $t12@@0) (= $t14@@0  (not (= _$t0@@0 173345816)))) (and (=> (= (ControlFlow 0 145513) 153626) anon25_Then_correct@@0) (=> (= (ControlFlow 0 145513) 145569) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> $t12@@0 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t13)) (= $t13 $t13)) (and (= $t13@0 $t13) (= (ControlFlow 0 153652) 146323))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106134| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |XDXandybpl.9394:21|
 :skolemid |160|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_106221| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |XDXandybpl.9394:268|
 :skolemid |161|
))) (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101414| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |XDXandybpl.9398:21|
 :skolemid |162|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_101501| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |XDXandybpl.9398:231|
 :skolemid |163|
)))) (=> (and (and (and (and (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_106712| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_106394| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |XDXandybpl.9402:21|
 :skolemid |164|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_106811| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_106485| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_94027| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |XDXandybpl.9402:292|
 :skolemid |165|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93450| $1_XDX_Reserve_$memory) 173345816))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) 173345816)))) (and (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) addr@@6) (= addr@@6 173345816)))
 :qid |XDXandybpl.9422:20|
 :skolemid |166|
)) (|$IsValid'address'| _$t0@@0)) (and (|$IsValid'address'| _$t1@@0) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |XDXandybpl.9431:20|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))))) (and (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |XDXandybpl.9435:20|
 :skolemid |168|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_94027| $1_Roles_RoleId_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) $a_0@@2)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@2))
 :qid |XDXandybpl.9439:20|
 :skolemid |169|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@3))
 :qid |XDXandybpl.9443:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_95803| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@4))
 :qid |XDXandybpl.9447:20|
 :skolemid |171|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_95479| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@4))
)))) (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@5))
 :qid |XDXandybpl.9451:20|
 :skolemid |172|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_96764| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@6)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@6) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@6)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@6) 10000000000))))
 :qid |XDXandybpl.9455:20|
 :skolemid |173|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@6))
))) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| $rsc@@7) (and (and (and (> (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0) (> (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0)) (> (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0)) (> (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| $rsc@@7) 0))))
 :qid |XDXandybpl.9459:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_| (|contents#$Memory_93618| |$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_93450| $1_XDX_Reserve_$memory) $a_0@@8)))
(|$IsValid'$1_XDX_Reserve'| $rsc@@8))
 :qid |XDXandybpl.9463:20|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]$1_XDX_Reserve_| (|contents#$Memory_93450| $1_XDX_Reserve_$memory) $a_0@@8))
))))) (and (and (and (= $t7 _$t0@@0) (= $t8 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_95869| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t9@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t10@@0 _$t0@@0))) (and (and (= $t11@@0 _$t1@@0) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= $t12@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 145491) 153652) anon24_Then_correct@@0) (=> (= (ControlFlow 0 145491) 145513) anon24_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_63200_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_63200| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63200| stream@@1) v@@36) 0)
 :qid |XDXandybpl.129:13|
 :skolemid |2|
))))
 :qid |XDXandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 144868) 145491)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 202353) 144868) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_101097)
(declare-fun $t2@0 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t2 () Int)
(declare-fun $t4 () Bool)
(declare-fun $t0@0 () Bool)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t5 () (Seq Int))
(declare-fun $t7@0 () Bool)
(declare-fun $t3@@0 () (Seq Int))
(declare-fun |inline$$1_Diem_is_currency'#0'$0$$t1@1| () Bool)
(push 1)
(set-info :boogie-vc-id $1_XDX_is_xdx$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208295) (let ((L5_correct@@0  (and (=> (= (ControlFlow 0 154726) (- 0 208719)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (= (ControlFlow 0 154726) (- 0 208729)) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t2@0)))))))
(let ((anon14_Then_correct  (=> $t6 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t2)) (= $t2 $t2)) (and (= $t2@0 $t2) (= (ControlFlow 0 154686) 154726))) L5_correct@@0))))
(let ((anon13_Then_correct  (=> $t4 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t2)) (= $t2 $t2)) (and (= $t2@0 $t2) (= (ControlFlow 0 154752) 154726))) L5_correct@@0))))
(let ((L3_correct@@0  (=> (= $t0@0 $t0@0) (and (=> (= (ControlFlow 0 154584) (- 0 208676)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= (ControlFlow 0 154584) (- 0 208691)) (= $t0@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))
(let ((anon14_Else_correct  (=> (not $t6) (=> (and (|$IsValid'vec'u8''| $t5) (= $t5 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (and (and (= $t7@0 (= $t3@@0 $t5)) (= $t7@0 $t7@0)) (and (= $t0@0 $t7@0) (= (ControlFlow 0 154660) 154584))) L3_correct@@0)))))
(let ((anon13_Else_correct  (=> (and (and (not $t4) (|$IsValid'vec'u8''| $t3@@0)) (and (= $t3@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 154626) 154686) anon14_Then_correct) (=> (= (ControlFlow 0 154626) 154660) anon14_Else_correct)))))
(let ((anon12_Then_correct  (=> (and |inline$$1_Diem_is_currency'#0'$0$$t1@1| (= $t4  (not (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 154598) 154752) anon13_Then_correct) (=> (= (ControlFlow 0 154598) 154626) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not |inline$$1_Diem_is_currency'#0'$0$$t1@1|) (= false false)) (and (= $t0@0 false) (= (ControlFlow 0 154544) 154584))) L3_correct@@0)))
(let ((anon11_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 154524) 154598) anon12_Then_correct) (=> (= (ControlFlow 0 154524) 154544) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Diem_is_currency'#0'$0$anon0_correct|  (=> (|$IsValid'address'| 173345816) (=> (and (= |inline$$1_Diem_is_currency'#0'$0$$t1@1| (|Select__T@[Int]Bool_| (|domain#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= |inline$$1_Diem_is_currency'#0'$0$$t1@1| |inline$$1_Diem_is_currency'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 154510) 154766) anon11_Then_correct) (=> (= (ControlFlow 0 154510) 154524) anon11_Else_correct))))))
(let ((anon0$1_correct@@1  (=> (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_92043| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9) 10000000000))))
 :qid |XDXandybpl.10013:20|
 :skolemid |176|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_93534| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9))
))) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@10)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@10) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@10)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@10) 10000000000))))
 :qid |XDXandybpl.10017:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_101097| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@10))
)) (= (ControlFlow 0 154516) 154510))) |inline$$1_Diem_is_currency'#0'$0$anon0_correct|)))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_63200_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_63200| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_63200| stream@@2) v@@37) 0)
 :qid |XDXandybpl.129:13|
 :skolemid |2|
))))
 :qid |XDXandybpl.2538:13|
 :skolemid |69|
))) (= (ControlFlow 0 154313) 154516)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 208295) 154313) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1)))))))))))))))
))
(push 1)
(set-info :boogie-vc-id $1_XDX_reserve_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208756) true)
))
(check-sat)
(pop 1)
; Undetermined
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 208819) true)
))
(check-sat)
(pop 1)
; Undetermined
