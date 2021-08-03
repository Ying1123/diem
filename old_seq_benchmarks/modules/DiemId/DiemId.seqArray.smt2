(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_92061 0)) ((($Memory_92061 (|domain#$Memory_92061| |T@[Int]Bool|) (|contents#$Memory_92061| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemId_DiemIdDomainManager 0)) ((($1_DiemId_DiemIdDomainManager (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomainManager| 0)
(declare-datatypes ((T@$Memory_130848 0)) ((($Memory_130848 (|domain#$Memory_130848| |T@[Int]Bool|) (|contents#$Memory_130848| |T@[Int]$1_DiemId_DiemIdDomainManager|) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomain 0)) ((($1_DiemId_DiemIdDomain (|$domain#$1_DiemId_DiemIdDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomains 0)) ((($1_DiemId_DiemIdDomains (|$domains#$1_DiemId_DiemIdDomains| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-sort |T@[Int]$1_DiemId_DiemIdDomains| 0)
(declare-datatypes ((T@$Memory_130784 0)) ((($Memory_130784 (|domain#$Memory_130784| |T@[Int]Bool|) (|contents#$Memory_130784| |T@[Int]$1_DiemId_DiemIdDomains|) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_129981 0)) ((($Memory_129981 (|domain#$Memory_129981| |T@[Int]Bool|) (|contents#$Memory_129981| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_126883 0)) ((($Memory_126883 (|domain#$Memory_126883| |T@[Int]Bool|) (|contents#$Memory_126883| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_124888 0)) ((($Memory_124888 (|domain#$Memory_124888| |T@[Int]Bool|) (|contents#$Memory_124888| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_125168 0)) ((($Memory_125168 (|domain#$Memory_125168| |T@[Int]Bool|) (|contents#$Memory_125168| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_124855 0)) ((($Memory_124855 (|domain#$Memory_124855| |T@[Int]Bool|) (|contents#$Memory_124855| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_124640 0)) ((($Memory_124640 (|domain#$Memory_124640| |T@[Int]Bool|) (|contents#$Memory_124640| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_122150 0)) ((($Memory_122150 (|domain#$Memory_122150| |T@[Int]Bool|) (|contents#$Memory_122150| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_122086 0)) ((($Memory_122086 (|domain#$Memory_122086| |T@[Int]Bool|) (|contents#$Memory_122086| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_120708 0)) ((($Memory_120708 (|domain#$Memory_120708| |T@[Int]Bool|) (|contents#$Memory_120708| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_117587 0)) ((($Memory_117587 (|domain#$Memory_117587| |T@[Int]Bool|) (|contents#$Memory_117587| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_117368 0)) ((($Memory_117368 (|domain#$Memory_117368| |T@[Int]Bool|) (|contents#$Memory_117368| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_126672 0)) ((($Memory_126672 (|domain#$Memory_126672| |T@[Int]Bool|) (|contents#$Memory_126672| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110323 0)) ((($Memory_110323 (|domain#$Memory_110323| |T@[Int]Bool|) (|contents#$Memory_110323| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_110236 0)) ((($Memory_110236 (|domain#$Memory_110236| |T@[Int]Bool|) (|contents#$Memory_110236| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_107033 0)) ((($Memory_107033 (|domain#$Memory_107033| |T@[Int]Bool|) (|contents#$Memory_107033| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106946 0)) ((($Memory_106946 (|domain#$Memory_106946| |T@[Int]Bool|) (|contents#$Memory_106946| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110587 0)) ((($Memory_110587 (|domain#$Memory_110587| |T@[Int]Bool|) (|contents#$Memory_110587| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_119420 0)) ((($Memory_119420 (|domain#$Memory_119420| |T@[Int]Bool|) (|contents#$Memory_119420| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_110913 0)) ((($Memory_110913 (|domain#$Memory_110913| |T@[Int]Bool|) (|contents#$Memory_110913| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_110496 0)) ((($Memory_110496 (|domain#$Memory_110496| |T@[Int]Bool|) (|contents#$Memory_110496| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_121020 0)) ((($Memory_121020 (|domain#$Memory_121020| |T@[Int]Bool|) (|contents#$Memory_121020| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_110814 0)) ((($Memory_110814 (|domain#$Memory_110814| |T@[Int]Bool|) (|contents#$Memory_110814| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_106648 0)) ((($Memory_106648 (|domain#$Memory_106648| |T@[Int]Bool|) (|contents#$Memory_106648| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_106584 0)) ((($Memory_106584 (|domain#$Memory_106584| |T@[Int]Bool|) (|contents#$Memory_106584| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_102657 0)) ((($Memory_102657 (|domain#$Memory_102657| |T@[Int]Bool|) (|contents#$Memory_102657| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_102570 0)) ((($Memory_102570 (|domain#$Memory_102570| |T@[Int]Bool|) (|contents#$Memory_102570| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_102483 0)) ((($Memory_102483 (|domain#$Memory_102483| |T@[Int]Bool|) (|contents#$Memory_102483| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_102396 0)) ((($Memory_102396 (|domain#$Memory_102396| |T@[Int]Bool|) (|contents#$Memory_102396| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_102309 0)) ((($Memory_102309 (|domain#$Memory_102309| |T@[Int]Bool|) (|contents#$Memory_102309| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_102922 0)) ((($Memory_102922 (|domain#$Memory_102922| |T@[Int]Bool|) (|contents#$Memory_102922| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_101435 0)) ((($Memory_101435 (|domain#$Memory_101435| |T@[Int]Bool|) (|contents#$Memory_101435| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_101501 0)) ((($Memory_101501 (|domain#$Memory_101501| |T@[Int]Bool|) (|contents#$Memory_101501| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_101354 0)) ((($Memory_101354 (|domain#$Memory_101354| |T@[Int]Bool|) (|contents#$Memory_101354| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_101273 0)) ((($Memory_101273 (|domain#$Memory_101273| |T@[Int]Bool|) (|contents#$Memory_101273| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_101192 0)) ((($Memory_101192 (|domain#$Memory_101192| |T@[Int]Bool|) (|contents#$Memory_101192| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_101111 0)) ((($Memory_101111 (|domain#$Memory_101111| |T@[Int]Bool|) (|contents#$Memory_101111| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_100997 0)) ((($Memory_100997 (|domain#$Memory_100997| |T@[Int]Bool|) (|contents#$Memory_100997| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_125809 0)) ((($Memory_125809 (|domain#$Memory_125809| |T@[Int]Bool|) (|contents#$Memory_125809| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_101030 0)) ((($Memory_101030 (|domain#$Memory_101030| |T@[Int]Bool|) (|contents#$Memory_101030| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_100486 0)) ((($Memory_100486 (|domain#$Memory_100486| |T@[Int]Bool|) (|contents#$Memory_100486| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_99912 0)) ((($Memory_99912 (|domain#$Memory_99912| |T@[Int]Bool|) (|contents#$Memory_99912| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_99643 0)) ((($Memory_99643 (|domain#$Memory_99643| |T@[Int]Bool|) (|contents#$Memory_99643| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_99174 0)) ((($Memory_99174 (|domain#$Memory_99174| |T@[Int]Bool|) (|contents#$Memory_99174| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainEvent 0)) ((($1_VASPDomain_VASPDomainEvent (|$removed#$1_VASPDomain_VASPDomainEvent| Bool) (|$domain#$1_VASPDomain_VASPDomainEvent| T@$1_VASPDomain_VASPDomain) (|$address#$1_VASPDomain_VASPDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_ComplianceKeyRotationEvent 0)) ((($1_DualAttestation_ComplianceKeyRotationEvent (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_BaseUrlRotationEvent 0)) ((($1_DualAttestation_BaseUrlRotationEvent (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| (Seq Int)) (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_ToXDXExchangeRateUpdateEvent 0)) ((($1_Diem_ToXDXExchangeRateUpdateEvent (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| (Seq Int)) (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_PreburnEvent 0)) ((($1_Diem_PreburnEvent (|$amount#$1_Diem_PreburnEvent| Int) (|$currency_code#$1_Diem_PreburnEvent| (Seq Int)) (|$preburn_address#$1_Diem_PreburnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_MintEvent 0)) ((($1_Diem_MintEvent (|$amount#$1_Diem_MintEvent| Int) (|$currency_code#$1_Diem_MintEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_Diem_CancelBurnEvent 0)) ((($1_Diem_CancelBurnEvent (|$amount#$1_Diem_CancelBurnEvent| Int) (|$currency_code#$1_Diem_CancelBurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_CancelBurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_Diem_BurnEvent 0)) ((($1_Diem_BurnEvent (|$amount#$1_Diem_BurnEvent| Int) (|$currency_code#$1_Diem_BurnEvent| (Seq Int)) (|$preburn_address#$1_Diem_BurnEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemId_DiemIdDomainEvent 0)) ((($1_DiemId_DiemIdDomainEvent (|$removed#$1_DiemId_DiemIdDomainEvent| Bool) (|$domain#$1_DiemId_DiemIdDomainEvent| T@$1_DiemId_DiemIdDomain) (|$address#$1_DiemId_DiemIdDomainEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_NewEpochEvent 0)) ((($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_NewEpochEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemBlock_NewBlockEvent 0)) ((($1_DiemBlock_NewBlockEvent (|$round#$1_DiemBlock_NewBlockEvent| Int) (|$proposer#$1_DiemBlock_NewBlockEvent| Int) (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| (Seq Int)) (|$time_microseconds#$1_DiemBlock_NewBlockEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_SentPaymentEvent 0)) ((($1_DiemAccount_SentPaymentEvent (|$amount#$1_DiemAccount_SentPaymentEvent| Int) (|$currency_code#$1_DiemAccount_SentPaymentEvent| (Seq Int)) (|$payee#$1_DiemAccount_SentPaymentEvent| Int) (|$metadata#$1_DiemAccount_SentPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_ReceivedPaymentEvent 0)) ((($1_DiemAccount_ReceivedPaymentEvent (|$amount#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) (|$payer#$1_DiemAccount_ReceivedPaymentEvent| Int) (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_CreateAccountEvent 0)) ((($1_DiemAccount_CreateAccountEvent (|$created#$1_DiemAccount_CreateAccountEvent| Int) (|$role_id#$1_DiemAccount_CreateAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AdminTransactionEvent 0)) ((($1_DiemAccount_AdminTransactionEvent (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| Int) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_ReceivedMintEvent 0)) ((($1_DesignatedDealer_ReceivedMintEvent (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| (Seq Int)) (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| Int) (|$amount#$1_DesignatedDealer_ReceivedMintEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_UnfreezeAccountEvent 0)) ((($1_AccountFreezing_UnfreezeAccountEvent (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeAccountEvent 0)) ((($1_AccountFreezing_FreezeAccountEvent (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| Int) (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| Int) ) ) ))
(declare-datatypes ((T@$EventRep 0)) (((|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| T@$1_AccountFreezing_FreezeAccountEvent) ) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| (|e#$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| T@$1_AccountFreezing_UnfreezeAccountEvent) ) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| (|e#$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| T@$1_DesignatedDealer_ReceivedMintEvent) ) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| (|e#$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| T@$1_DiemAccount_AdminTransactionEvent) ) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| (|e#$ToEventRep'$1_DiemAccount_CreateAccountEvent'| T@$1_DiemAccount_CreateAccountEvent) ) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| T@$1_DiemAccount_ReceivedPaymentEvent) ) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| (|e#$ToEventRep'$1_DiemAccount_SentPaymentEvent'| T@$1_DiemAccount_SentPaymentEvent) ) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| (|e#$ToEventRep'$1_DiemBlock_NewBlockEvent'| T@$1_DiemBlock_NewBlockEvent) ) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| (|e#$ToEventRep'$1_DiemConfig_NewEpochEvent'| T@$1_DiemConfig_NewEpochEvent) ) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| (|e#$ToEventRep'$1_DiemId_DiemIdDomainEvent'| T@$1_DiemId_DiemIdDomainEvent) ) (|$ToEventRep'$1_Diem_BurnEvent'| (|e#$ToEventRep'$1_Diem_BurnEvent'| T@$1_Diem_BurnEvent) ) (|$ToEventRep'$1_Diem_CancelBurnEvent'| (|e#$ToEventRep'$1_Diem_CancelBurnEvent'| T@$1_Diem_CancelBurnEvent) ) (|$ToEventRep'$1_Diem_MintEvent'| (|e#$ToEventRep'$1_Diem_MintEvent'| T@$1_Diem_MintEvent) ) (|$ToEventRep'$1_Diem_PreburnEvent'| (|e#$ToEventRep'$1_Diem_PreburnEvent'| T@$1_Diem_PreburnEvent) ) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| (|e#$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| T@$1_DualAttestation_BaseUrlRotationEvent) ) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| (|e#$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| (|e#$ToEventRep'$1_VASPDomain_VASPDomainEvent'| T@$1_VASPDomain_VASPDomainEvent) ) ) ))
(declare-sort |T@[$EventRep]Int| 0)
(declare-datatypes ((T@Multiset_67787 0)) (((Multiset_67787 (|v#Multiset_67787| |T@[$EventRep]Int|) (|l#Multiset_67787| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_67787| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_67787|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_131452 0)) ((($Mutation_131452 (|l#$Mutation_131452| T@$Location) (|p#$Mutation_131452| (Seq Int)) (|v#$Mutation_131452| T@$1_DiemId_DiemIdDomainManager) ) ) ))
(declare-datatypes ((T@$Mutation_131391 0)) ((($Mutation_131391 (|l#$Mutation_131391| T@$Location) (|p#$Mutation_131391| (Seq Int)) (|v#$Mutation_131391| T@$1_DiemId_DiemIdDomains) ) ) ))
(declare-datatypes ((T@$Mutation_127710 0)) ((($Mutation_127710 (|l#$Mutation_127710| T@$Location) (|p#$Mutation_127710| (Seq Int)) (|v#$Mutation_127710| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_127666 0)) ((($Mutation_127666 (|l#$Mutation_127666| T@$Location) (|p#$Mutation_127666| (Seq Int)) (|v#$Mutation_127666| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_32705 0)) ((($Mutation_32705 (|l#$Mutation_32705| T@$Location) (|p#$Mutation_32705| (Seq Int)) (|v#$Mutation_32705| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_116102 0)) ((($Mutation_116102 (|l#$Mutation_116102| T@$Location) (|p#$Mutation_116102| (Seq Int)) (|v#$Mutation_116102| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_105337 0)) ((($Mutation_105337 (|l#$Mutation_105337| T@$Location) (|p#$Mutation_105337| (Seq Int)) (|v#$Mutation_105337| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_92689 0)) ((($Mutation_92689 (|l#$Mutation_92689| T@$Location) (|p#$Mutation_92689| (Seq Int)) (|v#$Mutation_92689| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_88057 0)) ((($Mutation_88057 (|l#$Mutation_88057| T@$Location) (|p#$Mutation_88057| (Seq Int)) (|v#$Mutation_88057| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_87311 0)) ((($Mutation_87311 (|l#$Mutation_87311| T@$Location) (|p#$Mutation_87311| (Seq Int)) (|v#$Mutation_87311| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_85871 0)) ((($Mutation_85871 (|l#$Mutation_85871| T@$Location) (|p#$Mutation_85871| (Seq Int)) (|v#$Mutation_85871| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_85125 0)) ((($Mutation_85125 (|l#$Mutation_85125| T@$Location) (|p#$Mutation_85125| (Seq Int)) (|v#$Mutation_85125| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_83685 0)) ((($Mutation_83685 (|l#$Mutation_83685| T@$Location) (|p#$Mutation_83685| (Seq Int)) (|v#$Mutation_83685| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_82939 0)) ((($Mutation_82939 (|l#$Mutation_82939| T@$Location) (|p#$Mutation_82939| (Seq Int)) (|v#$Mutation_82939| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_81499 0)) ((($Mutation_81499 (|l#$Mutation_81499| T@$Location) (|p#$Mutation_81499| (Seq Int)) (|v#$Mutation_81499| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_80753 0)) ((($Mutation_80753 (|l#$Mutation_80753| T@$Location) (|p#$Mutation_80753| (Seq Int)) (|v#$Mutation_80753| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_79313 0)) ((($Mutation_79313 (|l#$Mutation_79313| T@$Location) (|p#$Mutation_79313| (Seq Int)) (|v#$Mutation_79313| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_78567 0)) ((($Mutation_78567 (|l#$Mutation_78567| T@$Location) (|p#$Mutation_78567| (Seq Int)) (|v#$Mutation_78567| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_77127 0)) ((($Mutation_77127 (|l#$Mutation_77127| T@$Location) (|p#$Mutation_77127| (Seq Int)) (|v#$Mutation_77127| T@$1_DiemId_DiemIdDomain) ) ) ))
(declare-datatypes ((T@$Mutation_76381 0)) ((($Mutation_76381 (|l#$Mutation_76381| T@$Location) (|p#$Mutation_76381| (Seq Int)) (|v#$Mutation_76381| (Seq T@$1_DiemId_DiemIdDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_74941 0)) ((($Mutation_74941 (|l#$Mutation_74941| T@$Location) (|p#$Mutation_74941| (Seq Int)) (|v#$Mutation_74941| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_74195 0)) ((($Mutation_74195 (|l#$Mutation_74195| T@$Location) (|p#$Mutation_74195| (Seq Int)) (|v#$Mutation_74195| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_72755 0)) ((($Mutation_72755 (|l#$Mutation_72755| T@$Location) (|p#$Mutation_72755| (Seq Int)) (|v#$Mutation_72755| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_72009 0)) ((($Mutation_72009 (|l#$Mutation_72009| T@$Location) (|p#$Mutation_72009| (Seq Int)) (|v#$Mutation_72009| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_70531 0)) ((($Mutation_70531 (|l#$Mutation_70531| T@$Location) (|p#$Mutation_70531| (Seq Int)) (|v#$Mutation_70531| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_69785 0)) ((($Mutation_69785 (|l#$Mutation_69785| T@$Location) (|p#$Mutation_69785| (Seq Int)) (|v#$Mutation_69785| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_DiemId_DiemIdDomain''| ((Seq T@$1_DiemId_DiemIdDomain)) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomain'| (T@$1_DiemId_DiemIdDomain) Bool)
(declare-fun |$IndexOfVec'$1_DiemId_DiemIdDomain'| ((Seq T@$1_DiemId_DiemIdDomain) T@$1_DiemId_DiemIdDomain) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_67787_| (|T@[$1_Event_EventHandle]Multiset_67787| T@$1_Event_EventHandle) T@Multiset_67787)
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
(declare-fun |$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (T@$1_Event_EventHandle) Bool)
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
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainEvent'| (T@$1_DiemId_DiemIdDomainEvent) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomainManager'| (T@$1_DiemId_DiemIdDomainManager) Bool)
(declare-fun |$IsValid'$1_DiemId_DiemIdDomains'| (T@$1_DiemId_DiemIdDomains) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_13287 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_61317 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_60135 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_60332 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_60726 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_61514 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_61120 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_60923 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_60529 ((Seq T@$1_DiemId_DiemIdDomain)) (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun ReverseVec_59938 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_67787| |T@[$1_Event_EventHandle]Multiset_67787|) |T@[$1_Event_EventHandle]Multiset_67787|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemIdseqArraybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemIdseqArraybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemIdseqArraybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemIdseqArraybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemIdseqArraybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemIdseqArraybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemIdseqArraybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemIdseqArraybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemIdseqArraybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemIdseqArraybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemIdseqArraybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemIdseqArraybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemIdseqArraybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemIdseqArraybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemIdseqArraybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemIdseqArraybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemIdseqArraybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemIdseqArraybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemIdseqArraybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemIdseqArraybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemIdseqArraybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemIdseqArraybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemIdseqArraybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (= (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemId_DiemIdDomain'| (seq.nth v@@10 i@@9)))
 :qid |DiemIdseqArraybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemIdseqArraybpl.1128:48|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemId_DiemIdDomain''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemId_DiemIdDomain)) (e@@2 T@$1_DiemId_DiemIdDomain) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemIdseqArraybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemIdseqArraybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemId_DiemIdDomain'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@12 i@@12)))
 :qid |DiemIdseqArraybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemIdseqArraybpl.1308:53|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@12))
)))
(assert (forall ((v@@13 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@3 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@13 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemIdseqArraybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemIdseqArraybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemIdseqArraybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |DiemIdseqArraybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemIdseqArraybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemIdseqArraybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemIdseqArraybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemIdseqArraybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |DiemIdseqArraybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemIdseqArraybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemIdseqArraybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemIdseqArraybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemIdseqArraybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |DiemIdseqArraybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemIdseqArraybpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemIdseqArraybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemIdseqArraybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemIdseqArraybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |DiemIdseqArraybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemIdseqArraybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemIdseqArraybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemIdseqArraybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemIdseqArraybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |DiemIdseqArraybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemIdseqArraybpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemIdseqArraybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemIdseqArraybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemIdseqArraybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DiemIdseqArraybpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemIdseqArraybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemIdseqArraybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemIdseqArraybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemIdseqArraybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemIdseqArraybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemIdseqArraybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemIdseqArraybpl.2639:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemIdseqArraybpl.2642:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_67787| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream) v@@26) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemIdseqArraybpl.2759:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemIdseqArraybpl.2765:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemIdseqArraybpl.2815:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemIdseqArraybpl.2821:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemIdseqArraybpl.2871:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemIdseqArraybpl.2877:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemIdseqArraybpl.2927:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemIdseqArraybpl.2933:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemIdseqArraybpl.2983:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemIdseqArraybpl.2989:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemIdseqArraybpl.3039:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemIdseqArraybpl.3045:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemIdseqArraybpl.3095:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemIdseqArraybpl.3101:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemIdseqArraybpl.3151:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemIdseqArraybpl.3157:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemIdseqArraybpl.3207:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemIdseqArraybpl.3213:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8) true)
 :qid |DiemIdseqArraybpl.3263:70|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_DiemId_DiemIdDomainEvent) (v2@@10 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10)))
 :qid |DiemIdseqArraybpl.3269:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v1@@10) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9) true)
 :qid |DiemIdseqArraybpl.3319:60|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_BurnEvent) (v2@@11 T@$1_Diem_BurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11)))
 :qid |DiemIdseqArraybpl.3325:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10) true)
 :qid |DiemIdseqArraybpl.3375:66|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_CancelBurnEvent) (v2@@12 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12)))
 :qid |DiemIdseqArraybpl.3381:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@12) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11) true)
 :qid |DiemIdseqArraybpl.3431:60|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_MintEvent) (v2@@13 T@$1_Diem_MintEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13)))
 :qid |DiemIdseqArraybpl.3437:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@13) (|$ToEventRep'$1_Diem_MintEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12) true)
 :qid |DiemIdseqArraybpl.3487:63|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_PreburnEvent) (v2@@14 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14)))
 :qid |DiemIdseqArraybpl.3493:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@14) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13) true)
 :qid |DiemIdseqArraybpl.3543:79|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@15 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15)))
 :qid |DiemIdseqArraybpl.3549:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@15) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14) true)
 :qid |DiemIdseqArraybpl.3599:82|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@16 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16)))
 :qid |DiemIdseqArraybpl.3605:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15) true)
 :qid |DiemIdseqArraybpl.3655:88|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@17 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17)))
 :qid |DiemIdseqArraybpl.3661:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@17) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@17))
)))
(assert (forall ((h@@16 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16) true)
 :qid |DiemIdseqArraybpl.3711:72|
 :skolemid |110|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@16))
)))
(assert (forall ((v1@@18 T@$1_VASPDomain_VASPDomainEvent) (v2@@18 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@18 v2@@18) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18)))
 :qid |DiemIdseqArraybpl.3717:15|
 :skolemid |111|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@18) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@18))
)))
(assert (forall ((s T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s)))
 :qid |DiemIdseqArraybpl.3796:61|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s))
)))
(assert (forall ((s@@0 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@0) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@0)))
 :qid |DiemIdseqArraybpl.3963:36|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@0))
)))
(assert (forall ((s@@1 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@1)))
 :qid |DiemIdseqArraybpl.3982:71|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@1))
)))
(assert (forall ((s@@2 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@2) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@2)))
 :qid |DiemIdseqArraybpl.4051:46|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@3)))
 :qid |DiemIdseqArraybpl.4064:64|
 :skolemid |116|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@4)))
 :qid |DiemIdseqArraybpl.4077:75|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@5)))
 :qid |DiemIdseqArraybpl.4090:72|
 :skolemid |118|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@5))
)))
(assert (forall ((s@@6 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@6)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@6))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@6))))
 :qid |DiemIdseqArraybpl.4119:55|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@7)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@7)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@7))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@7))))
 :qid |DiemIdseqArraybpl.4141:46|
 :skolemid |120|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@7))
)))
(assert (forall ((s@@8 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@8)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@8))))
 :qid |DiemIdseqArraybpl.4159:49|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@8))
)))
(assert (forall ((s@@9 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@9)))
 :qid |DiemIdseqArraybpl.4234:71|
 :skolemid |122|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@10)))
 :qid |DiemIdseqArraybpl.4248:91|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@11)))
 :qid |DiemIdseqArraybpl.4262:113|
 :skolemid |124|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@12)))
 :qid |DiemIdseqArraybpl.4276:75|
 :skolemid |125|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@13)))
 :qid |DiemIdseqArraybpl.4290:73|
 :skolemid |126|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@13))
)))
(assert (forall ((s@@14 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@14)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@14)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@14))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@14))))
 :qid |DiemIdseqArraybpl.4310:48|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15) true)
 :qid |DiemIdseqArraybpl.4326:57|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@15))
)))
(assert (forall ((s@@16 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16) true)
 :qid |DiemIdseqArraybpl.4340:83|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17) true)
 :qid |DiemIdseqArraybpl.4354:103|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18) true)
 :qid |DiemIdseqArraybpl.4368:125|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19) true)
 :qid |DiemIdseqArraybpl.4382:87|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20) true)
 :qid |DiemIdseqArraybpl.4396:85|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@20))
)))
(assert (forall ((s@@21 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@21)))
 :qid |DiemIdseqArraybpl.4410:48|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@22)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@22))))
 :qid |DiemIdseqArraybpl.4431:45|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@23)))
 :qid |DiemIdseqArraybpl.4445:51|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@24)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@24))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@24))))
 :qid |DiemIdseqArraybpl.4468:48|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@24))
)))
(assert (forall ((s@@25 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@25)))
 :qid |DiemIdseqArraybpl.4774:49|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@25))
)))
(assert (forall ((s@@26 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@26)))
 :qid |DiemIdseqArraybpl.4787:65|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@26))
)))
(assert (forall ((s@@27 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@27)))
 :qid |DiemIdseqArraybpl.5291:45|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@28)))
 :qid |DiemIdseqArraybpl.5304:45|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29) true)
 :qid |DiemIdseqArraybpl.5317:55|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30) true)
 :qid |DiemIdseqArraybpl.5331:55|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@31)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@31)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@31))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@31))))
 :qid |DiemIdseqArraybpl.5351:38|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@32))))
 :qid |DiemIdseqArraybpl.5372:44|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@33))))
 :qid |DiemIdseqArraybpl.5423:53|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@34))))
 :qid |DiemIdseqArraybpl.5485:53|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35) true)
 :qid |DiemIdseqArraybpl.5511:55|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36) true)
 :qid |DiemIdseqArraybpl.5525:55|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@37)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@37)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@37))))
 :qid |DiemIdseqArraybpl.5542:38|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@38)))
 :qid |DiemIdseqArraybpl.5556:48|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@39)))
 :qid |DiemIdseqArraybpl.5570:48|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@40)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@40))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@40))))
 :qid |DiemIdseqArraybpl.5590:41|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@41)))
 :qid |DiemIdseqArraybpl.5605:53|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@42)))
 :qid |DiemIdseqArraybpl.5619:53|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@43))))
 :qid |DiemIdseqArraybpl.5636:60|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@44))))
 :qid |DiemIdseqArraybpl.5653:60|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@45))))
 :qid |DiemIdseqArraybpl.5670:57|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@45))
)))
(assert (forall ((s@@46 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46) true)
 :qid |DiemIdseqArraybpl.7871:68|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@47))))
 :qid |DiemIdseqArraybpl.7893:66|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@48))))
 :qid |DiemIdseqArraybpl.7919:66|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@49) true)
 :qid |DiemIdseqArraybpl.8252:31|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@49))
)))
(assert (forall ((s@@50 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@50) true)
 :qid |DiemIdseqArraybpl.8596:31|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@50))
)))
(assert (forall ((s@@51 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@51)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@51)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@51))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@51))))
 :qid |DiemIdseqArraybpl.8615:35|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@51))
)))
(assert (forall ((s@@52 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@52)))
 :qid |DiemIdseqArraybpl.9036:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@52))
)))
(assert (forall ((s@@53 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@53))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@53))))
 :qid |DiemIdseqArraybpl.9055:50|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@54)))
 :qid |DiemIdseqArraybpl.9070:52|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@55))))
 :qid |DiemIdseqArraybpl.9097:65|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@56)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@56))))
 :qid |DiemIdseqArraybpl.9482:60|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@57))))
 :qid |DiemIdseqArraybpl.9499:66|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@58)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@58)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@58))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@58))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@58))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@58))))
 :qid |DiemIdseqArraybpl.9528:50|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@58))
)))
(assert (forall ((s@@59 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@59) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@59)))
 :qid |DiemIdseqArraybpl.9547:45|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@59))
)))
(assert (forall ((s@@60 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@60)) true))
 :qid |DiemIdseqArraybpl.9866:87|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@60))
)))
(assert (forall ((s@@61 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@61)))
 :qid |DiemIdseqArraybpl.10078:47|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@62)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@62))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@62))))
 :qid |DiemIdseqArraybpl.10098:58|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@63) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@63)))
 :qid |DiemIdseqArraybpl.10113:39|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@63))
)))
(assert (forall ((s@@64 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@64)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@64))))
 :qid |DiemIdseqArraybpl.10135:58|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@64))
)))
(assert (forall ((s@@65 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@65))))
 :qid |DiemIdseqArraybpl.10152:58|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@65))
)))
(assert (forall ((s@@66 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66) true)
 :qid |DiemIdseqArraybpl.10167:51|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@66))
)))
(assert (forall ((s@@67 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@67))))
 :qid |DiemIdseqArraybpl.10184:60|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@68)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@68))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@68))))
 :qid |DiemIdseqArraybpl.10482:47|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@69)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@69))))
 :qid |DiemIdseqArraybpl.10504:63|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@70)))
 :qid |DiemIdseqArraybpl.10519:57|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@71)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@71))))
 :qid |DiemIdseqArraybpl.10535:54|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@72)))
 :qid |DiemIdseqArraybpl.10549:55|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@73)))
 :qid |DiemIdseqArraybpl.10563:57|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@74)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@74))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@74))))
 :qid |DiemIdseqArraybpl.10585:56|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@75)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@75))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@75))))
 :qid |DiemIdseqArraybpl.10610:52|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@76)))
 :qid |DiemIdseqArraybpl.10626:54|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@76))
)))
(assert (forall ((s@@77 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@77))))
 :qid |DiemIdseqArraybpl.11497:47|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@78)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@78))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@78))))
 :qid |DiemIdseqArraybpl.11521:47|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemId_DiemIdDomain) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomain'| s@@79) (|$IsValid'vec'u8''| (|$domain#$1_DiemId_DiemIdDomain| s@@79)))
 :qid |DiemIdseqArraybpl.11772:43|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomain'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemId_DiemIdDomainEvent) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@80)  (and (and true (|$IsValid'$1_DiemId_DiemIdDomain'| (|$domain#$1_DiemId_DiemIdDomainEvent| s@@80))) (|$IsValid'address'| (|$address#$1_DiemId_DiemIdDomainEvent| s@@80))))
 :qid |DiemIdseqArraybpl.11791:48|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainEvent'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemId_DiemIdDomainManager) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@81) (|$IsValid'$1_Event_EventHandle'$1_DiemId_DiemIdDomainEvent''| (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| s@@81)))
 :qid |DiemIdseqArraybpl.11806:50|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomainManager'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemId_DiemIdDomains) ) (! (= (|$IsValid'$1_DiemId_DiemIdDomains'| s@@82) (|$IsValid'vec'$1_DiemId_DiemIdDomain''| (|$domains#$1_DiemId_DiemIdDomains| s@@82)))
 :qid |DiemIdseqArraybpl.11820:44|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemId_DiemIdDomains'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@83) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@83)))
 :qid |DiemIdseqArraybpl.14007:49|
 :skolemid |248|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@84)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@84)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@84))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@84))))
 :qid |DiemIdseqArraybpl.14050:49|
 :skolemid |249|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@85)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@85)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@85))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@85))))
 :qid |DiemIdseqArraybpl.14079:48|
 :skolemid |250|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@86) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@86)))
 :qid |DiemIdseqArraybpl.14374:47|
 :skolemid |251|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@86))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_61317 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61317 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_60135 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60135 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_60332 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60332 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_60726 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60726 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_61514 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61514 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_61120 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_61120 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_60923 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60923 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemId_DiemIdDomain)) ) (! (let ((r@@8 (ReverseVec_60529 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_60529 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_59938 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |DiemIdseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |DiemIdseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_59938 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |DiemIdseqArraybpl.245:54|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_67787|) (|l#1| |T@[$1_Event_EventHandle]Multiset_67787|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| |l#1| handle@@0))))
(Multiset_67787 (|lambda#3| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| |l#0@@0| handle@@0)) (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemIdseqArraybpl.2728:13|
 :skolemid |307|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |DiemIdseqArraybpl.124:29|
 :skolemid |308|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int) T@$1_DiemId_DiemIdDomainManager)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory () T@$Memory_130848)
(declare-fun $t1@0 () Bool)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_DiemId_tc_domain_manager_exists$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211083) (let ((anon0$1_correct  (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc))
 :qid |DiemIdseqArraybpl.11872:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0))
)) (|$IsValid'address'| 186537453)) (and (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 155071) (- 0 211168)) (not false)) (=> (not false) (=> (= (ControlFlow 0 155071) (- 0 211175)) (= $t1@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_67787| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@0) v@@38) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 154993) 155071)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 211083) 154993) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t37 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |Select__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int) T@$1_DiemId_DiemIdDomains)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0 () T@$Memory_130784)
(declare-fun _$t1 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory () T@$Memory_130784)
(declare-fun $t11 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun _$t2 () (Seq Int))
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_99643)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () Int)
(declare-fun $es@0 () T@$EventStore)
(declare-fun $t13 () T@$1_Event_EventHandle)
(declare-fun $t14 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_67787_| (|T@[$1_Event_EventHandle]Multiset_67787| T@$1_Event_EventHandle T@Multiset_67787) |T@[$1_Event_EventHandle]Multiset_67787|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_67787|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_67787)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|Store__T@[$1_Event_EventHandle]Multiset_67787_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_67787|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_67787)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|Store__T@[$1_Event_EventHandle]Multiset_67787_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_67787_| ?x0 ?y1))) :weight 0)))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| () T@$1_Event_EventHandle)
(declare-fun $t34@0 () T@$Mutation_92689)
(declare-fun $t36@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t33@1 () T@$Mutation_131452)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t33 () T@$Mutation_131452)
(declare-fun $t33@0 () T@$Mutation_131452)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t24@2 () T@$Mutation_131391)
(declare-fun $t24@1 () T@$Mutation_131391)
(declare-fun |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_76381)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomains_| (|T@[Int]$1_DiemId_DiemIdDomains| Int T@$1_DiemId_DiemIdDomains) |T@[Int]$1_DiemId_DiemIdDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|Store__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun $t31@0 () T@$Mutation_76381)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t30 () Int)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| () Bool)
(declare-fun $t26@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24 () T@$Mutation_131391)
(declare-fun $t24@0 () T@$Mutation_131391)
(declare-fun $abort_code@0 () Int)
(declare-fun $t21@0 () Bool)
(declare-fun $t23 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 () Bool)
(declare-fun $t20 () Int)
(declare-fun $t16 () Bool)
(declare-fun $t15 () Int)
(declare-fun $t17 () Int)
(declare-fun $t3 () T@$Mutation_131391)
(declare-fun $t31 () T@$Mutation_76381)
(declare-fun $t34 () T@$Mutation_92689)
(push 1)
(set-info :boogie-vc-id $1_DiemId_add_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 211370) (let ((anon45_Else_correct  (=> (and (not $abort_flag@2) (= $t37 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory@0) _$t1)))) (and (=> (= (ControlFlow 0 157378) (- 0 213514)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1))) (and (=> (= (ControlFlow 0 157378) (- 0 213525)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 157378) (- 0 213535)) (not (exists ((i@@44 Int) ) (!  (and (and (|$IsValid'u64'| i@@44) (and (>= i@@44 0) (< i@@44 (seq.len $t11)))) (= (seq.nth $t11 i@@44) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)))) (=> (not (exists ((i@@45 Int) ) (!  (and (and (|$IsValid'u64'| i@@45) (and (>= i@@45 0) (< i@@45 (seq.len $t11)))) (= (seq.nth $t11 i@@45) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 157378) (- 0 213547)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12))) (and (=> (= (ControlFlow 0 157378) (- 0 213559)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12)) 1))) (and (=> (= (ControlFlow 0 157378) (- 0 213577)) (not (not (= _$t0 186537453)))) (=> (not (not (= _$t0 186537453))) (and (=> (= (ControlFlow 0 157378) (- 0 213591)) (not (> (seq.len _$t2) 63))) (=> (not (> (seq.len _$t2) 63)) (and (=> (= (ControlFlow 0 157378) (- 0 213603)) (exists ((i@@46 Int) ) (!  (and (and (|$IsValid'u64'| i@@46) (and (>= i@@46 0) (< i@@46 (seq.len $t37)))) (= (seq.nth $t37 i@@46) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (=> (exists ((i@@47 Int) ) (!  (and (and (|$IsValid'u64'| i@@47) (and (>= i@@47 0) (< i@@47 (seq.len $t37)))) (= (seq.nth $t37 i@@47) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)) (and (=> (= (ControlFlow 0 157378) (- 0 213613)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new (let ((len (|l#Multiset_67787| stream@@1)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@1) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@2 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected) handle@@2)) (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual) handle@@2))) (forall ((v@@39 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected) handle@@2)) v@@39) (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual) handle@@2)) v@@39))
 :qid |DiemIdseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdseqArraybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_67787| stream@@2)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@2) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@0) handle@@3)) (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@0) handle@@3))) (forall ((v@@40 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@0) handle@@3)) v@@40) (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@0) handle@@3)) v@@40))
 :qid |DiemIdseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdseqArraybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 157378) (- 0 213638)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_67787| stream@@3)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@3) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@3) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@1) handle@@4)) (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@1) handle@@4))) (forall ((v@@41 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@1) handle@@4)) v@@41) (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@1) handle@@4)) v@@41))
 :qid |DiemIdseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdseqArraybpl.2734:13|
 :skolemid |75|
)))))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 155910) (- 0 213306)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@48 Int) ) (!  (and (and (|$IsValid'u64'| i@@48) (and (>= i@@48 0) (< i@@48 (seq.len $t11)))) (= (seq.nth $t11 i@@48) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= _$t0 186537453))) (> (seq.len _$t2) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (exists ((i@@49 Int) ) (!  (and (and (|$IsValid'u64'| i@@49) (and (>= i@@49 0) (< i@@49 (seq.len $t11)))) (= (seq.nth $t11 i@@49) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12)) 1))) (not (= _$t0 186537453))) (> (seq.len _$t2) 63)) (=> (= (ControlFlow 0 155910) (- 0 213372)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= 5 $t17@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= 5 $t17@0))) (and (exists ((i@@50 Int) ) (!  (and (and (|$IsValid'u64'| i@@50) (and (>= i@@50 0) (< i@@50 (seq.len $t11)))) (= (seq.nth $t11 i@@50) ($1_DiemId_DiemIdDomain _$t2)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)) (= 7 $t17@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12)) (= 5 $t17@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12)) 1)) (= 3 $t17@0))) (and (not (= _$t0 186537453)) (= 2 $t17@0))) (and (> (seq.len _$t2) 63) (= 7 $t17@0))))))))
(let ((anon45_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 157392) 155910))) L7_correct)))
(let ((|inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| (|v#$Mutation_92689| $t34@0)) (= $es@0 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1|)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_67787| stream@@4)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@4) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t36@0) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1| stream_new@@2)))))) (and (=> (= (ControlFlow 0 157192) 157392) anon45_Then_correct) (=> (= (ControlFlow 0 157192) 157378) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not $abort_flag@2) (= $t34@0 ($Mutation_92689 (|l#$Mutation_131452| $t33@1) (seq.++ (|p#$Mutation_131452| $t33@1) (seq.unit 0)) (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|v#$Mutation_131452| $t33@1))))) (and (= $t36@0 ($1_DiemId_DiemIdDomainEvent false inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 _$t1)) (= (ControlFlow 0 157198) 157192))) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|)))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t17@0 $abort_code@3) (= (ControlFlow 0 157406) 155910))) L7_correct)))
(let ((anon43_Then$1_correct  (=> (= $t33@1 $t33) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 157458) 157406) anon44_Then_correct) (=> (= (ControlFlow 0 157458) 157198) anon44_Else_correct))))))
(let ((anon43_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= (ControlFlow 0 157456) 157458)) anon43_Then$1_correct)))
(let ((anon43_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (=> (and (and (= $t33@0 ($Mutation_131452 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (= $t33@1 $t33@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 157083) 157406) anon44_Then_correct) (=> (= (ControlFlow 0 157083) 157198) anon44_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not $abort_flag@1) (= $t24@2 ($Mutation_131391 (|l#$Mutation_131391| $t24@1) (|p#$Mutation_131391| $t24@1) ($1_DiemId_DiemIdDomains (|v#$Mutation_76381| |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1|))))) (and (=> (= (ControlFlow 0 157061) (- 0 212896)) (let (($range_0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@51 $i_1))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2)) i@@51))) 63)))
 :qid |DiemIdseqArraybpl.12302:105|
 :skolemid |208|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@52 $i_1@@0))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2)) i@@52))) 63)))
 :qid |DiemIdseqArraybpl.12302:105|
 :skolemid |208|
))) (and (=> (= (ControlFlow 0 157061) (- 0 212944)) (let (($range_0@@1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@53 $i_1@@1))
(let (($range_2 ($Range (+ i@@53 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@10 $i_3))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2)) i@@53) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2)) j@@10)))))
 :qid |DiemIdseqArraybpl.12310:110|
 :skolemid |209|
)))))
 :qid |DiemIdseqArraybpl.12309:105|
 :skolemid |210|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@54 $i_1@@2))
(let (($range_2@@0 ($Range (+ i@@54 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((j@@11 $i_3@@0))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2)) i@@54) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2)) j@@11)))))
 :qid |DiemIdseqArraybpl.12310:110|
 :skolemid |209|
)))))
 :qid |DiemIdseqArraybpl.12309:105|
 :skolemid |210|
))) (and (=> (= (ControlFlow 0 157061) (- 0 213029)) (let (($range_0@@3 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let (($elem (seq.nth $range_0@@3 $i_1@@3)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem)) 63)))
 :qid |DiemIdseqArraybpl.12317:86|
 :skolemid |211|
)))) (=> (let (($range_0@@4 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2))))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let (($elem@@0 (seq.nth $range_0@@4 $i_1@@4)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@0)) 63)))
 :qid |DiemIdseqArraybpl.12317:86|
 :skolemid |211|
))) (=> (and (= $1_DiemId_DiemIdDomains_$memory@0 ($Memory_130784 (|Store__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_131391| $t24@2)) true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_131391| $t24@2)) (|v#$Mutation_131391| $t24@2)))) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 157061) 157456) anon43_Then_correct) (=> (= (ControlFlow 0 157061) 157083) anon43_Else_correct))))))))))))
(let ((anon42_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157472) 155910))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$m'@1| ($Mutation_76381 (|l#$Mutation_76381| $t31@0) (|p#$Mutation_76381| $t31@0) (seq.++ (|v#$Mutation_76381| $t31@0) (seq.unit inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)))) (and (=> (= (ControlFlow 0 156835) 157472) anon42_Then_correct) (=> (= (ControlFlow 0 156835) 157061) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> inline$$Not$0$dst@1 (=> (and (= $t31@0 ($Mutation_76381 (|l#$Mutation_131391| $t24@1) (seq.++ (|p#$Mutation_131391| $t24@1) (seq.unit 0)) (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)))) (= (ControlFlow 0 156841) 156835)) |inline$$1_Vector_push_back'$1_DiemId_DiemIdDomain'$0$anon0_correct|))))
(let ((anon41_Else_correct  (=> (not inline$$Not$0$dst@1) (and (=> (= (ControlFlow 0 156768) (- 0 212653)) (let (($range_0@@5 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@5) (let ((i@@55 $i_1@@5))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)) i@@55))) 63)))
 :qid |DiemIdseqArraybpl.12248:105|
 :skolemid |204|
)))) (=> (let (($range_0@@6 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@6) (let ((i@@56 $i_1@@6))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)) i@@56))) 63)))
 :qid |DiemIdseqArraybpl.12248:105|
 :skolemid |204|
))) (and (=> (= (ControlFlow 0 156768) (- 0 212701)) (let (($range_0@@7 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@7) (let ((i@@57 $i_1@@7))
(let (($range_2@@1 ($Range (+ i@@57 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((j@@12 $i_3@@1))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)) i@@57) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)) j@@12)))))
 :qid |DiemIdseqArraybpl.12256:110|
 :skolemid |205|
)))))
 :qid |DiemIdseqArraybpl.12255:105|
 :skolemid |206|
)))) (=> (let (($range_0@@8 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@8) (let ((i@@58 $i_1@@8))
(let (($range_2@@2 ($Range (+ i@@58 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@2) (let ((j@@13 $i_3@@2))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)) i@@58) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1)) j@@13)))))
 :qid |DiemIdseqArraybpl.12256:110|
 :skolemid |205|
)))))
 :qid |DiemIdseqArraybpl.12255:105|
 :skolemid |206|
))) (and (=> (= (ControlFlow 0 156768) (- 0 212786)) (let (($range_0@@9 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))
(forall (($i_1@@9 Int) ) (!  (=> (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let (($elem@@1 (seq.nth $range_0@@9 $i_1@@9)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@1)) 63)))
 :qid |DiemIdseqArraybpl.12263:86|
 :skolemid |207|
)))) (=> (let (($range_0@@10 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))))
(forall (($i_1@@10 Int) ) (!  (=> (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let (($elem@@2 (seq.nth $range_0@@10 $i_1@@10)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@2)) 63)))
 :qid |DiemIdseqArraybpl.12263:86|
 :skolemid |207|
))) (=> (= $t30 $t30) (=> (and (= $t17@0 $t30) (= (ControlFlow 0 156768) 155910)) L7_correct)))))))))))
(let ((anon40_Else$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (and (|$IsValid'u64'| $t30) (= $t30 7)) (and (= $t30 $t30) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 156574) 156841) anon41_Then_correct) (=> (= (ControlFlow 0 156574) 156768) anon41_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1|)) (= (ControlFlow 0 156534) 156574)) anon40_Else$1_correct)))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 156540) 156534)) inline$$Not$0$anon0_correct)))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157486) 155910))) L7_correct)))
(let ((|inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1| (exists ((i@@59 Int) ) (!  (and (and (|$IsValid'u64'| i@@59) (and (>= i@@59 0) (< i@@59 (seq.len $t26@0)))) (= (seq.nth $t26@0 i@@59) inline$$1_DiemId_create_diem_id_domain$0$$ret0@1))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 156490) 157486) anon40_Then_correct) (=> (= (ControlFlow 0 156490) 156540) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1)) (and (= $t26@0 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1))) (= (ControlFlow 0 156496) 156490))) |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t17@0 $abort_code@2) (= (ControlFlow 0 157500) 155910))) L7_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 inline$$1_DiemId_create_diem_id_domain$0$$t4@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0)) (and (=> (= (ControlFlow 0 156390) 157500) anon39_Then_correct) (=> (= (ControlFlow 0 156390) 156496) anon39_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct  (=> (and (and (not inline$$Le$0$dst@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= (ControlFlow 0 156384) 156390))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1 $abort_code@1) (= (ControlFlow 0 156422) 156390))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct  (=> (and inline$$Le$0$dst@1 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 ($1_DiemId_DiemIdDomain _$t2))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1))) (and (=> (= (ControlFlow 0 156408) 157500) anon39_Then_correct) (=> (= (ControlFlow 0 156408) 156496) anon39_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0) (= inline$$Le$0$dst@1 inline$$Le$0$dst@1))) (and (=> (= (ControlFlow 0 156368) 156408) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct) (=> (= (ControlFlow 0 156368) 156384) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (and (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u8'$0$l@1| 63)) (= (ControlFlow 0 156332) 156368)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 156338) 156332)) inline$$Le$0$anon0_correct))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t2)) (and (=> (= (ControlFlow 0 156272) 156422) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct) (=> (= (ControlFlow 0 156272) 156338) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct  (=> (and (= _$t2 _$t2) (= (ControlFlow 0 156278) 156272)) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((anon38_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'$1_DiemId_DiemIdDomains'@0| (|v#$Mutation_131391| $t24@1))) (and (= |$temp_0'$1_DiemId_DiemIdDomains'@0| |$temp_0'$1_DiemId_DiemIdDomains'@0|) (= (ControlFlow 0 156428) 156278))) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct)))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t17@0 $abort_code@1) (= (ControlFlow 0 157514) 155910))) L7_correct)))
(let ((anon37_Then$1_correct  (=> (= $t24@1 $t24) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 157566) 157514) anon38_Then_correct) (=> (= (ControlFlow 0 157566) 156428) anon38_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1)) (= (ControlFlow 0 157564) 157566)) anon37_Then$1_correct)))
(let ((anon37_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1) (=> (and (and (= $t24@0 ($Mutation_131391 ($Global _$t1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1))) (= $t24@1 $t24@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 155994) 157514) anon38_Then_correct) (=> (= (ControlFlow 0 155994) 156428) anon38_Else_correct))))))
(let ((anon36_Then_correct  (=> $t21@0 (and (=> (= (ControlFlow 0 155972) 157564) anon37_Then_correct) (=> (= (ControlFlow 0 155972) 155994) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t21@0) (= $t23 $t23)) (and (= $t17@0 $t23) (= (ControlFlow 0 155968) 155910))) L7_correct)))
(let ((anon35_Then_correct  (=> inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 (=> (and (= $t21@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 5)) (and (= $t23 $t23) (= $t21@0 $t21@0))) (and (=> (= (ControlFlow 0 155952) 155972) anon36_Then_correct) (=> (= (ControlFlow 0 155952) 155968) anon36_Else_correct)))))))
(let ((anon35_Else_correct  (=> (and (and (not inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1) (= $t20 $t20)) (and (= $t17@0 $t20) (= (ControlFlow 0 155698) 155910))) L7_correct)))
(let ((anon34_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 5)) (and (= $t20 $t20) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1))) (and (=> (= (ControlFlow 0 155682) 155952) anon35_Then_correct) (=> (= (ControlFlow 0 155682) 155698) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> $t16 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t15)) (= 5 $t17)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t15)) 1)) (= 3 $t17))) (and (not (= _$t0 186537453)) (= 2 $t17))) (= $t17 $t17)) (and (= $t17@0 $t17) (= (ControlFlow 0 157652) 155910))) L7_correct))))
(let ((anon34_Then_correct true))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1)) (and (=> (= (ControlFlow 0 155640) 157580) anon34_Then_correct) (=> (= (ControlFlow 0 155640) 155682) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (not $t16) (= (ControlFlow 0 155646) 155640)) inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'address'| _$t1) (|$IsValid'vec'u8''| _$t2)) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |DiemIdseqArraybpl.11981:20|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@0))
)) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@1)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@1))
 :qid |DiemIdseqArraybpl.11985:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@1))
))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@2)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@2) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@60 $i_2))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2) i@@60))) 63)))
 :qid |DiemIdseqArraybpl.11990:136|
 :skolemid |199|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@61 $i_4))
(let (($range_5 ($Range (+ i@@61 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@14 $i_6))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2) i@@61) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2) j@@14)))))
 :qid |DiemIdseqArraybpl.11992:96|
 :skolemid |200|
)))))
 :qid |DiemIdseqArraybpl.11991:196|
 :skolemid |201|
)))) (let (($range_7 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@2)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem@@3 (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@3)) 63)))
 :qid |DiemIdseqArraybpl.11993:221|
 :skolemid |202|
))))))
 :qid |DiemIdseqArraybpl.11989:20|
 :skolemid |203|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@2))
)) (= $t11 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1))))) (=> (and (and (and (= $t12 _$t0) (= $t13 (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (and (= $t14 ($1_DiemId_DiemIdDomainEvent false ($1_DiemId_DiemIdDomain _$t2) _$t1)) (= _$t0 _$t0))) (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t15 _$t0) (= $t16  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t15)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t15)) 1))) (not (= _$t0 186537453))))))) (and (=> (= (ControlFlow 0 155553) 157652) anon33_Then_correct) (=> (= (ControlFlow 0 155553) 155646) anon33_Else_correct))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_67787| stream@@5) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@5) v@@42) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 155165) 155553)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (and (= (seq.len (|p#$Mutation_131391| $t3)) 0) (= (seq.len (|p#$Mutation_131391| $t24)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_76381| $t31)) 0) (= (seq.len (|p#$Mutation_131452| $t33)) 0)) (and (= (seq.len (|p#$Mutation_92689| $t34)) 0) (= (ControlFlow 0 155175) 155165))) inline$$InitEventStore$0$anon0_correct@@0))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 211370) 155175) anon0_correct@@0)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 211370)))
(get-value ((ControlFlow 0 155175)))
(get-value ((ControlFlow 0 155165)))
(get-value ((ControlFlow 0 155553)))
(get-value ((ControlFlow 0 155646)))
(get-value ((ControlFlow 0 155640)))
(get-value ((ControlFlow 0 155682)))
(get-value ((ControlFlow 0 155952)))
(get-value ((ControlFlow 0 155972)))
(get-value ((ControlFlow 0 155994)))
(get-value ((ControlFlow 0 156428)))
(get-value ((ControlFlow 0 156278)))
(get-value ((ControlFlow 0 156272)))
(get-value ((ControlFlow 0 156338)))
(get-value ((ControlFlow 0 156332)))
(get-value ((ControlFlow 0 156368)))
(get-value ((ControlFlow 0 156408)))
(get-value ((ControlFlow 0 156496)))
(get-value ((ControlFlow 0 156490)))
(get-value ((ControlFlow 0 156540)))
(get-value ((ControlFlow 0 156534)))
(get-value ((ControlFlow 0 156574)))
(get-value ((ControlFlow 0 156841)))
(get-value ((ControlFlow 0 156835)))
(get-value ((ControlFlow 0 157061)))
(assert (not (= (ControlFlow 0 157061) (- 212896))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 211370)))
(get-value ((ControlFlow 0 155175)))
(get-value ((ControlFlow 0 155165)))
(get-value ((ControlFlow 0 155553)))
(get-value ((ControlFlow 0 155646)))
(get-value ((ControlFlow 0 155640)))
(get-value ((ControlFlow 0 155682)))
(get-value ((ControlFlow 0 155952)))
(get-value ((ControlFlow 0 155972)))
(get-value ((ControlFlow 0 155994)))
(get-value ((ControlFlow 0 156428)))
(get-value ((ControlFlow 0 156278)))
(get-value ((ControlFlow 0 156272)))
(get-value ((ControlFlow 0 156338)))
(get-value ((ControlFlow 0 156332)))
(get-value ((ControlFlow 0 156368)))
(get-value ((ControlFlow 0 156408)))
(get-value ((ControlFlow 0 156496)))
(get-value ((ControlFlow 0 156490)))
(get-value ((ControlFlow 0 156540)))
(get-value ((ControlFlow 0 156534)))
(get-value ((ControlFlow 0 156574)))
(get-value ((ControlFlow 0 156841)))
(get-value ((ControlFlow 0 156835)))
(get-value ((ControlFlow 0 157061)))
(assert (not (= (ControlFlow 0 157061) (- 212944))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 211370)))
(get-value ((ControlFlow 0 155175)))
(get-value ((ControlFlow 0 155165)))
(get-value ((ControlFlow 0 155553)))
(get-value ((ControlFlow 0 155646)))
(get-value ((ControlFlow 0 155640)))
(get-value ((ControlFlow 0 155682)))
(get-value ((ControlFlow 0 155952)))
(get-value ((ControlFlow 0 155972)))
(get-value ((ControlFlow 0 155994)))
(get-value ((ControlFlow 0 156428)))
(get-value ((ControlFlow 0 156278)))
(get-value ((ControlFlow 0 156272)))
(get-value ((ControlFlow 0 156338)))
(get-value ((ControlFlow 0 156332)))
(get-value ((ControlFlow 0 156368)))
(get-value ((ControlFlow 0 156408)))
(get-value ((ControlFlow 0 156496)))
(get-value ((ControlFlow 0 156490)))
(get-value ((ControlFlow 0 156540)))
(get-value ((ControlFlow 0 156534)))
(get-value ((ControlFlow 0 156574)))
(get-value ((ControlFlow 0 156841)))
(get-value ((ControlFlow 0 156835)))
(get-value ((ControlFlow 0 157061)))
(get-value ((ControlFlow 0 157083)))
(get-value ((ControlFlow 0 157198)))
(get-value ((ControlFlow 0 157192)))
(get-value ((ControlFlow 0 157378)))
(assert (not (= (ControlFlow 0 157378) (- 213603))))
(check-sat)
(pop 1)
; Invalid
(declare-fun _$t0@@0 () (Seq Int))
(declare-fun $t4@0 () Int)
(declare-fun inline$$Le$0$dst@1@@0 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t9@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemId_create_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213670) (let ((L3_correct  (and (=> (= (ControlFlow 0 158193) (- 0 213912)) (> (seq.len _$t0@@0) 63)) (=> (> (seq.len _$t0@@0) 63) (=> (= (ControlFlow 0 158193) (- 0 213919)) (and (> (seq.len _$t0@@0) 63) (= 7 $t4@0)))))))
(let ((anon8_Else_correct  (=> (and (and (not inline$$Le$0$dst@1@@0) (= $t8 $t8)) (and (= $t4@0 $t8) (= (ControlFlow 0 158161) 158193))) L3_correct)))
(let ((anon8_Then_correct  (=> (and inline$$Le$0$dst@1@@0 (= $t9@0 ($1_DiemId_DiemIdDomain _$t0@@0))) (and (=> (= (ControlFlow 0 158247) (- 0 213841)) (<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $t9@0)) 63)) (=> (<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $t9@0)) 63) (=> (= $t9@0 $t9@0) (and (=> (= (ControlFlow 0 158247) (- 0 213864)) (not (> (seq.len _$t0@@0) 63))) (=> (not (> (seq.len _$t0@@0) 63)) (=> (= (ControlFlow 0 158247) (- 0 213876)) (= $t9@0 ($1_DiemId_DiemIdDomain _$t0@@0)))))))))))
(let ((anon7_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t8) (= $t8 7)) (and (= $t8 $t8) (= inline$$Le$0$dst@1@@0 inline$$Le$0$dst@1@@0))) (and (=> (= (ControlFlow 0 158145) 158247) anon8_Then_correct) (=> (= (ControlFlow 0 158145) 158161) anon8_Else_correct))))))
(let ((inline$$Le$0$anon0_correct@@0  (=> (and (= inline$$Le$0$dst@1@@0 (<= |inline$$1_Vector_length'u8'$0$l@1@@0| 63)) (= (ControlFlow 0 158109) 158145)) anon7_Else$1_correct)))
(let ((anon7_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 158115) 158109)) inline$$Le$0$anon0_correct@@0))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len _$t0@@0)) (and (=> (= (ControlFlow 0 158049) 158261) anon7_Then_correct) (=> (= (ControlFlow 0 158049) 158115) anon7_Else_correct)))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'vec'u8''| _$t0@@0) (=> (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 158055) 158049)) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_67787| stream@@6) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@6) v@@43) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 157991) 158055)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 213670) 157991) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1@@0| () Bool)
(declare-fun _$t0@@1 () Int)
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun $t6 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $t13@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t11@1 () T@$1_DiemId_DiemIdDomains)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1@@1 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@0 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@1| () Int)
(declare-fun $t11@@0 () T@$1_DiemId_DiemIdDomains)
(declare-fun $t11@0 () T@$1_DiemId_DiemIdDomains)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemId_has_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 213949) (let ((anon18_Else_correct  (=> (and (not $abort_flag@1@@0) (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1@@0| |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1@@0|)) (and (=> (= (ControlFlow 0 159266) (- 0 214772)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1))) (and (=> (= (ControlFlow 0 159266) (- 0 214783)) (not (> (seq.len _$t1@@0) 63))) (=> (not (> (seq.len _$t1@@0) 63)) (=> (= (ControlFlow 0 159266) (- 0 214795)) (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1@@0| (exists ((i@@62 Int) ) (!  (and (and (|$IsValid'u64'| i@@62) (and (>= i@@62 0) (< i@@62 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)))))) (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) i@@62) $t6))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 158692) (- 0 214709)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) (> (seq.len _$t1@@0) 63))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) (> (seq.len _$t1@@0) 63)) (=> (= (ControlFlow 0 158692) (- 0 214724)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) (= 5 $t10@0)) (and (> (seq.len _$t1@@0) 63) (= 7 $t10@0))))))))
(let ((anon18_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t10@0 $abort_code@2@@0) (= (ControlFlow 0 159280) 158692))) L3_correct@@0)))
(let ((|inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$res@1@@0| (exists ((i@@63 Int) ) (!  (and (and (|$IsValid'u64'| i@@63) (and (>= i@@63 0) (< i@@63 (seq.len $t13@0)))) (= (seq.nth $t13@0 i@@63) inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 159200) 159280) anon18_Then_correct) (=> (= (ControlFlow 0 159200) 159266) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (and (not $abort_flag@1@@0) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0)) (and (= $t13@0 (|$domains#$1_DiemId_DiemIdDomains| $t11@1)) (= (ControlFlow 0 159206) 159200))) |inline$$1_Vector_contains'$1_DiemId_DiemIdDomain'$0$anon0_correct@@0|)))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (and (= $t10@0 $abort_code@2@@0) (= (ControlFlow 0 159294) 158692))) L3_correct@@0)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@0  (=> (= $abort_flag@1@@0 true) (=> (and (= $abort_code@2@@0 inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@0) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@0)) (and (=> (= (ControlFlow 0 159102) 159294) anon17_Then_correct) (=> (= (ControlFlow 0 159102) 159206) anon17_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct@@0  (=> (and (and (not inline$$Le$0$dst@1@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0) (= (ControlFlow 0 159096) 159102))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@0)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@0 $abort_code@1@@0) (= (ControlFlow 0 159134) 159102))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@0)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct@@0  (=> (and inline$$Le$0$dst@1@@1 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@0 ($1_DiemId_DiemIdDomain _$t1@@0))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@0 inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@0) (= $abort_flag@1@@0 $abort_flag@0@@0)) (and (= $abort_code@2@@0 $abort_code@1@@0) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@0 inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@0))) (and (=> (= (ControlFlow 0 159120) 159294) anon17_Then_correct) (=> (= (ControlFlow 0 159120) 159206) anon17_Else_correct))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct@@0  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@0) (= inline$$Le$0$dst@1@@1 inline$$Le$0$dst@1@@1))) (and (=> (= (ControlFlow 0 159080) 159120) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct@@0) (=> (= (ControlFlow 0 159080) 159096) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct@@0))))))
(let ((inline$$Le$0$anon0_correct@@1  (=> (and (= inline$$Le$0$dst@1@@1 (<= |inline$$1_Vector_length'u8'$0$l@1@@1| 63)) (= (ControlFlow 0 159044) 159080)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct@@0)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 159050) 159044)) inline$$Le$0$anon0_correct@@1))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@1| (seq.len _$t1@@0)) (and (=> (= (ControlFlow 0 158984) 159134) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct@@0) (=> (= (ControlFlow 0 158984) 159050) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct@@0)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct@@0  (=> (and (= _$t1@@0 _$t1@@0) (= (ControlFlow 0 158990) 158984)) |inline$$1_Vector_length'u8'$0$anon0_correct@@1|)))
(let ((anon16_Else_correct  (=> (not $abort_flag@0@@0) (=> (and (= $t11@1 $t11@1) (= (ControlFlow 0 159140) 158990)) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct@@0))))
(let ((anon16_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 159308) 158692))) L3_correct@@0)))
(let ((anon15_Then$1_correct  (=> (= $t11@1 $t11@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 159360) 159308) anon16_Then_correct) (=> (= (ControlFlow 0 159360) 159140) anon16_Else_correct))))))
(let ((anon15_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) (= (ControlFlow 0 159358) 159360)) anon15_Then$1_correct)))
(let ((anon15_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1) (=> (and (and (= $t11@0 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) (= $t11@1 $t11@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 158710) 159308) anon16_Then_correct) (=> (= (ControlFlow 0 158710) 159140) anon16_Else_correct))))))
(let ((anon14_Then_correct  (=> $t7@0 (and (=> (= (ControlFlow 0 158696) 159358) anon15_Then_correct) (=> (= (ControlFlow 0 158696) 158710) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (and (not $t7@0) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 158632) 158692))) L3_correct@@0)))
(let ((anon0$1_correct@@2  (=> (and (and (|$IsValid'address'| _$t0@@1) (|$IsValid'vec'u8''| _$t1@@0)) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@3)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@3) (and (and (let (($range_1@@0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3)))))
(forall (($i_2@@0 Int) ) (!  (=> ($InRange $range_1@@0 $i_2@@0) (let ((i@@64 $i_2@@0))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3) i@@64))) 63)))
 :qid |DiemIdseqArraybpl.12740:136|
 :skolemid |212|
))) (let (($range_3@@0 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3)))))
(forall (($i_4@@0 Int) ) (!  (=> ($InRange $range_3@@0 $i_4@@0) (let ((i@@65 $i_4@@0))
(let (($range_5@@0 ($Range (+ i@@65 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3)))))
(forall (($i_6@@0 Int) ) (!  (=> ($InRange $range_5@@0 $i_6@@0) (let ((j@@15 $i_6@@0))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3) i@@65) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3) j@@15)))))
 :qid |DiemIdseqArraybpl.12742:96|
 :skolemid |213|
)))))
 :qid |DiemIdseqArraybpl.12741:196|
 :skolemid |214|
)))) (let (($range_7@@0 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@3)))
(forall (($i_8@@0 Int) ) (!  (=> (and (>= $i_8@@0 0) (< $i_8@@0 (seq.len $range_7@@0))) (let (($elem@@4 (seq.nth $range_7@@0 $i_8@@0)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@4)) 63)))
 :qid |DiemIdseqArraybpl.12743:221|
 :skolemid |215|
))))))
 :qid |DiemIdseqArraybpl.12739:20|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@3))
)) (= $t6 ($1_DiemId_DiemIdDomain _$t1@@0)))) (=> (and (and (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0)) (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@1)) (|$IsValid'u64'| 4))) (and (and (|$IsValid'u64'| $t9) (= $t9 5)) (and (= $t9 $t9) (= $t7@0 $t7@0)))) (and (=> (= (ControlFlow 0 158616) 158696) anon14_Then_correct) (=> (= (ControlFlow 0 158616) 158632) anon14_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_67787| stream@@7) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@7) v@@44) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 158344) 158616)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 213949) 158344) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () Int)
(declare-fun $t1@0@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemId_has_diem_id_domains$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 214816) (let ((anon0$1_correct@@3  (=> (|$IsValid'address'| _$t0@@2) (=> (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@4)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@4) (and (and (let (($range_1@@1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4)))))
(forall (($i_2@@1 Int) ) (!  (=> ($InRange $range_1@@1 $i_2@@1) (let ((i@@66 $i_2@@1))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4) i@@66))) 63)))
 :qid |DiemIdseqArraybpl.12917:136|
 :skolemid |217|
))) (let (($range_3@@1 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4)))))
(forall (($i_4@@1 Int) ) (!  (=> ($InRange $range_3@@1 $i_4@@1) (let ((i@@67 $i_4@@1))
(let (($range_5@@1 ($Range (+ i@@67 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4)))))
(forall (($i_6@@1 Int) ) (!  (=> ($InRange $range_5@@1 $i_6@@1) (let ((j@@16 $i_6@@1))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4) i@@67) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4) j@@16)))))
 :qid |DiemIdseqArraybpl.12919:96|
 :skolemid |218|
)))))
 :qid |DiemIdseqArraybpl.12918:196|
 :skolemid |219|
)))) (let (($range_7@@1 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@4)))
(forall (($i_8@@1 Int) ) (!  (=> (and (>= $i_8@@1 0) (< $i_8@@1 (seq.len $range_7@@1))) (let (($elem@@5 (seq.nth $range_7@@1 $i_8@@1)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@5)) 63)))
 :qid |DiemIdseqArraybpl.12920:221|
 :skolemid |220|
))))))
 :qid |DiemIdseqArraybpl.12916:20|
 :skolemid |221|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@4))
)) (= _$t0@@2 _$t0@@2)) (and (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@2)) (= $t1@0@@0 $t1@0@@0))) (and (=> (= (ControlFlow 0 159764) (- 0 215071)) (not false)) (=> (not false) (=> (= (ControlFlow 0 159764) (- 0 215078)) (= $t1@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@2)))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_67787| stream@@8) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@8) v@@45) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 159518) 159764)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 214816) 159518) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t3@@0 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@1 () T@$Memory_130848)
(declare-fun $t6@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $1_DiemId_DiemIdDomainManager_$memory@0 () T@$Memory_130848)
(declare-fun |Store__T@[Int]$1_DiemId_DiemIdDomainManager_| (|T@[Int]$1_DiemId_DiemIdDomainManager| Int T@$1_DiemId_DiemIdDomainManager) |T@[Int]$1_DiemId_DiemIdDomainManager|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomainManager|) ( ?x1 Int) ( ?x2 T@$1_DiemId_DiemIdDomainManager)) (! (= (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemId_DiemIdDomainManager|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemId_DiemIdDomainManager)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| ?x0 ?y1))) :weight 0)))
(declare-fun $t13@0@@0 () T@$1_DiemId_DiemIdDomainManager)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$res@0| () T@$1_Event_EventHandle)
(declare-fun $1_DiemId_DiemIdDomainManager_$modifies () |T@[Int]Bool|)
(declare-sort |T@[$1_Event_EventHandle]Bool| 0)
(declare-fun |Select__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle) Bool)
(declare-fun $1_Event_EventHandles () |T@[$1_Event_EventHandle]Bool|)
(declare-fun $1_Event_EventHandles@0 () |T@[$1_Event_EventHandle]Bool|)
(declare-fun |Store__T@[$1_Event_EventHandle]Bool_| (|T@[$1_Event_EventHandle]Bool| T@$1_Event_EventHandle Bool) |T@[$1_Event_EventHandle]Bool|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Bool|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Bool_| (|Store__T@[$1_Event_EventHandle]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t11@@1 () Int)
(declare-fun $t8@0 () Bool)
(declare-fun $t5 () Bool)
(declare-fun $t7 () Int)
(declare-fun $t4 () Int)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemId_publish_diem_id_domain_manager$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215096) (let ((anon18_Else_correct@@0  (=> (not $abort_flag@0@@1) (and (=> (= (ControlFlow 0 160419) (- 0 215754)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0))) (and (=> (= (ControlFlow 0 160419) (- 0 215766)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) 1))) (and (=> (= (ControlFlow 0 160419) (- 0 215784)) (not (not (= _$t0@@3 186537453)))) (=> (not (not (= _$t0@@3 186537453))) (and (=> (= (ControlFlow 0 160419) (- 0 215798)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (=> (= (ControlFlow 0 160419) (- 0 215806)) (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory@1) _$t0@@3)))))))))))))
(let ((anon16_Then_correct@@0 true))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 160229) (- 0 215636)) (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) 1))) (not (= _$t0@@3 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (=> (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) 1))) (not (= _$t0@@3 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (=> (= (ControlFlow 0 160229) (- 0 215674)) (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) (= 5 $t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t3@@0)) 1)) (= 3 $t6@0))) (and (not (= _$t0@@3 186537453)) (= 2 $t6@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (= 6 $t6@0))))))))
(let ((anon18_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t6@0 $abort_code@1@@1) (= (ControlFlow 0 160433) 160229))) L3_correct@@1)))
(let ((anon17_Then$1_correct  (=> (= $1_DiemId_DiemIdDomainManager_$memory@1 $1_DiemId_DiemIdDomainManager_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 160483) 160433) anon18_Then_correct@@0) (=> (= (ControlFlow 0 160483) 160419) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) _$t0@@3) (= (ControlFlow 0 160481) 160483)) anon17_Then$1_correct)))
(let ((anon17_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) _$t0@@3)) (=> (and (and (= $1_DiemId_DiemIdDomainManager_$memory@0 ($Memory_130848 (|Store__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) _$t0@@3 true) (|Store__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) _$t0@@3 $t13@0@@0))) (= $1_DiemId_DiemIdDomainManager_$memory@1 $1_DiemId_DiemIdDomainManager_$memory@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 160347) 160433) anon18_Then_correct@@0) (=> (= (ControlFlow 0 160347) 160419) anon18_Else_correct@@0))))))
(let ((anon16_Else_correct@@0  (=> (and (not false) (= $t13@0@@0 ($1_DiemId_DiemIdDomainManager |inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$res@0|))) (and (=> (= (ControlFlow 0 160329) (- 0 215539)) (|Select__T@[Int]Bool_| $1_DiemId_DiemIdDomainManager_$modifies _$t0@@3)) (=> (|Select__T@[Int]Bool_| $1_DiemId_DiemIdDomainManager_$modifies _$t0@@3) (and (=> (= (ControlFlow 0 160329) 160481) anon17_Then_correct@@0) (=> (= (ControlFlow 0 160329) 160347) anon17_Else_correct@@0)))))))
(let ((|inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|  (=> (and (= (|Select__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$res@0|) false) (= $1_Event_EventHandles@0 (|Store__T@[$1_Event_EventHandle]Bool_| $1_Event_EventHandles |inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$res@0| true))) (and (=> (= (ControlFlow 0 160301) 160497) anon16_Then_correct@@0) (=> (= (ControlFlow 0 160301) 160329) anon16_Else_correct@@0)))))
(let ((anon15_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 160307) 160301)) |inline$$1_Event_new_event_handle'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct|)))
(let ((anon15_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t11@@1 $t11@@1)) (and (= $t6@0 $t11@@1) (= (ControlFlow 0 160105) 160229))) L3_correct@@1)))
(let ((anon14_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t11@@1) (= $t11@@1 6)) (and (= $t11@@1 $t11@@1) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 160089) 160307) anon15_Then_correct@@0) (=> (= (ControlFlow 0 160089) 160105) anon15_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t8@0)) (= (ControlFlow 0 160049) 160089)) anon14_Else$1_correct)))
(let ((anon14_Else_correct@@0  (=> (not $t5) (=> (and (and (|$IsValid'address'| $t7) (= $t7 _$t0@@3)) (and (= $t8@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $t7)) (= (ControlFlow 0 160055) 160049))) inline$$Not$0$anon0_correct@@0))))
(let ((anon14_Then_correct@@0  (=> $t5 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4)) (= 5 $t6@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4)) 1)) (= 3 $t6@@0))) (and (not (= _$t0@@3 186537453)) (= 2 $t6@@0))) (= $t6@@0 $t6@@0)) (and (= $t6@0 $t6@@0) (= (ControlFlow 0 160569) 160229))) L3_correct@@1))))
(let ((anon0$1_correct@@4  (=> (and (and (and (|$IsValid'address'| _$t0@@3) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DiemIdseqArraybpl.12989:20|
 :skolemid |222|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@5))
))) (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@6)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@6))
 :qid |DiemIdseqArraybpl.12993:20|
 :skolemid |223|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@6))
)) (= $t3@@0 _$t0@@3))) (and (and (|Select__T@[Int]Bool_| $1_DiemId_DiemIdDomainManager_$modifies _$t0@@3) (= _$t0@@3 _$t0@@3)) (and (= $t4 _$t0@@3) (= $t5  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4)) 1))) (not (= _$t0@@3 186537453))))))) (and (=> (= (ControlFlow 0 159993) 160569) anon14_Then_correct@@0) (=> (= (ControlFlow 0 159993) 160055) anon14_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_67787| stream@@9) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@9) v@@46) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 159845) 159993)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 215096) 159845) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t4@@0 () Int)
(declare-fun $t3@@1 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory@1 () T@$Memory_130784)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@4 () Int)
(declare-fun $1_DiemId_DiemIdDomains_$memory@0@@0 () T@$Memory_130784)
(declare-fun $t14@0 () T@$1_DiemId_DiemIdDomains)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun |inline$$1_Vector_empty'$1_DiemId_DiemIdDomain'$0$v@1| () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@0@@0 () Bool)
(declare-fun $t6@@1 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $t7@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemId_publish_diem_id_domains$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 215821) (let ((anon18_Else_correct@@1  (=> (not $abort_flag@0@@2) (and (=> (= (ControlFlow 0 161449) (- 0 216679)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 161449) (- 0 216691)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) 5))) (and (=> (= (ControlFlow 0 161449) (- 0 216709)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $t3@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $t3@@1)) (and (=> (= (ControlFlow 0 161449) (- 0 216719)) (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory@1) $t3@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory@1) $t3@@1) (=> (= (ControlFlow 0 161449) (- 0 216727)) (= (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory@1) $t3@@1))) 0)))))))))))))
(let ((anon16_Then_correct@@1 true))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 161188) (- 0 216586)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $t3@@1))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $t3@@1)) (=> (= (ControlFlow 0 161188) (- 0 216615)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) (= 5 $t7@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t4@@0)) 5)) (= 3 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $t3@@1) (= 6 $t7@0@@0))))))))
(let ((anon18_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0@@0 $abort_code@1@@2) (= (ControlFlow 0 161463) 161188))) L3_correct@@2)))
(let ((anon17_Then$1_correct@@0  (=> (= $1_DiemId_DiemIdDomains_$memory@1 $1_DiemId_DiemIdDomains_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 161513) 161463) anon18_Then_correct@@1) (=> (= (ControlFlow 0 161513) 161449) anon18_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@4) (= (ControlFlow 0 161511) 161513)) anon17_Then$1_correct@@0)))
(let ((anon17_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@4)) (=> (and (and (= $1_DiemId_DiemIdDomains_$memory@0@@0 ($Memory_130784 (|Store__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@4 true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t0@@4 $t14@0))) (= $1_DiemId_DiemIdDomains_$memory@1 $1_DiemId_DiemIdDomains_$memory@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 161379) 161463) anon18_Then_correct@@1) (=> (= (ControlFlow 0 161379) 161449) anon18_Else_correct@@1))))))
(let ((anon16_Else_correct@@1  (=> (and (not false) (= $t14@0 ($1_DiemId_DiemIdDomains |inline$$1_Vector_empty'$1_DiemId_DiemIdDomain'$0$v@1|))) (and (=> (= (ControlFlow 0 161361) (- 0 216373)) (let (($range_0@@11 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $t14@0)))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@11) (let ((i@@68 $i_1@@11))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $t14@0) i@@68))) 63)))
 :qid |DiemIdseqArraybpl.13384:91|
 :skolemid |230|
)))) (=> (let (($range_0@@12 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $t14@0)))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@12 $i_1@@12) (let ((i@@69 $i_1@@12))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $t14@0) i@@69))) 63)))
 :qid |DiemIdseqArraybpl.13384:91|
 :skolemid |230|
))) (and (=> (= (ControlFlow 0 161361) (- 0 216417)) (let (($range_0@@13 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $t14@0)))))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@13) (let ((i@@70 $i_1@@13))
(let (($range_2@@3 ($Range (+ i@@70 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $t14@0)))))
(forall (($i_3@@3 Int) ) (!  (=> ($InRange $range_2@@3 $i_3@@3) (let ((j@@17 $i_3@@3))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $t14@0) i@@70) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $t14@0) j@@17)))))
 :qid |DiemIdseqArraybpl.13392:96|
 :skolemid |231|
)))))
 :qid |DiemIdseqArraybpl.13391:91|
 :skolemid |232|
)))) (=> (let (($range_0@@14 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $t14@0)))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@14) (let ((i@@71 $i_1@@14))
(let (($range_2@@4 ($Range (+ i@@71 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $t14@0)))))
(forall (($i_3@@4 Int) ) (!  (=> ($InRange $range_2@@4 $i_3@@4) (let ((j@@18 $i_3@@4))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $t14@0) i@@71) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $t14@0) j@@18)))))
 :qid |DiemIdseqArraybpl.13392:96|
 :skolemid |231|
)))))
 :qid |DiemIdseqArraybpl.13391:91|
 :skolemid |232|
))) (and (=> (= (ControlFlow 0 161361) 161511) anon17_Then_correct@@1) (=> (= (ControlFlow 0 161361) 161379) anon17_Else_correct@@1)))))))))
(let ((|inline$$1_Vector_empty'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemId_DiemIdDomain'$0$v@1| (as seq.empty (Seq T@$1_DiemId_DiemIdDomain))) (and (=> (= (ControlFlow 0 161214) 161527) anon16_Then_correct@@1) (=> (= (ControlFlow 0 161214) 161361) anon16_Else_correct@@1)))))
(let ((anon15_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 161220) 161214)) |inline$$1_Vector_empty'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon15_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t12@@0 $t12@@0)) (and (= $t7@0@@0 $t12@@0) (= (ControlFlow 0 161092) 161188))) L3_correct@@2)))
(let ((anon14_Else$1_correct@@0  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t12@@0) (= $t12@@0 6)) (and (= $t12@@0 $t12@@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 161076) 161220) anon15_Then_correct@@1) (=> (= (ControlFlow 0 161076) 161092) anon15_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t9@0@@0)) (= (ControlFlow 0 161036) 161076)) anon14_Else$1_correct@@0)))
(let ((anon14_Else_correct@@1  (=> (not $t6@@1) (=> (and (and (|$IsValid'address'| $t8@@0) (= $t8@@0 _$t0@@4)) (and (= $t9@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $t8@@0)) (= (ControlFlow 0 161042) 161036))) inline$$Not$0$anon0_correct@@1))))
(let ((anon14_Then_correct@@1  (=> $t6@@1 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t7@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t5@@0)) 5)) (= 3 $t7@@0))) (= $t7@@0 $t7@@0)) (and (= $t7@0@@0 $t7@@0) (= (ControlFlow 0 161579) 161188))) L3_correct@@2))))
(let ((anon0$1_correct@@5  (=> (and (and (and (|$IsValid'address'| _$t0@@4) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |DiemIdseqArraybpl.13235:20|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@7))
))) (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@8)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@8) (and (and (let (($range_1@@2 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8)))))
(forall (($i_2@@2 Int) ) (!  (=> ($InRange $range_1@@2 $i_2@@2) (let ((i@@72 $i_2@@2))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8) i@@72))) 63)))
 :qid |DiemIdseqArraybpl.13240:136|
 :skolemid |225|
))) (let (($range_3@@2 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8)))))
(forall (($i_4@@2 Int) ) (!  (=> ($InRange $range_3@@2 $i_4@@2) (let ((i@@73 $i_4@@2))
(let (($range_5@@2 ($Range (+ i@@73 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8)))))
(forall (($i_6@@2 Int) ) (!  (=> ($InRange $range_5@@2 $i_6@@2) (let ((j@@19 $i_6@@2))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8) i@@73) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8) j@@19)))))
 :qid |DiemIdseqArraybpl.13242:96|
 :skolemid |226|
)))))
 :qid |DiemIdseqArraybpl.13241:196|
 :skolemid |227|
)))) (let (($range_7@@2 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@8)))
(forall (($i_8@@2 Int) ) (!  (=> (and (>= $i_8@@2 0) (< $i_8@@2 (seq.len $range_7@@2))) (let (($elem@@6 (seq.nth $range_7@@2 $i_8@@2)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@6)) 63)))
 :qid |DiemIdseqArraybpl.13243:221|
 :skolemid |228|
))))))
 :qid |DiemIdseqArraybpl.13239:20|
 :skolemid |229|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@8))
)) (= $t3@@1 _$t0@@4))) (and (and (= $t4@@0 _$t0@@4) (= _$t0@@4 _$t0@@4)) (and (= $t5@@0 _$t0@@4) (= $t6@@1  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t5@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t5@@0)) 5))))))) (and (=> (= (ControlFlow 0 160980) 161579) anon14_Then_correct@@1) (=> (= (ControlFlow 0 160980) 161042) anon14_Else_correct@@1)))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_67787| stream@@10) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@10) v@@47) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 160682) 160980)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 215821) 160682) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@3 () Bool)
(declare-fun $t38 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun $1_DiemId_DiemIdDomains_$memory@0@@1 () T@$Memory_130784)
(declare-fun _$t1@@1 () Int)
(declare-fun $t11@@2 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun _$t2@@0 () (Seq Int))
(declare-fun $t12@@1 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t13@@0 () T@$1_Event_EventHandle)
(declare-fun $t14@@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t17@0@@0 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0| () T@$1_Event_EventHandle)
(declare-fun $t35@0 () T@$Mutation_92689)
(declare-fun $t37@0 () T@$1_DiemId_DiemIdDomainEvent)
(declare-fun $t34@1 () T@$Mutation_131452)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun $t34@@0 () T@$Mutation_131452)
(declare-fun $t34@0@@0 () T@$Mutation_131452)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $t24@2@@0 () T@$Mutation_131391)
(declare-fun $t24@1@@0 () T@$Mutation_131391)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2| () T@$Mutation_76381)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@0| () T@$Mutation_76381)
(declare-fun |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$e@1| () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@1| () T@$Mutation_76381)
(declare-fun $t31@0@@0 () T@$Mutation_76381)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| () Bool)
(declare-fun $t30@@0 () Int)
(declare-fun |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1| () Int)
(declare-fun $t26@0@@0 () (Seq T@$1_DiemId_DiemIdDomain))
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun inline$$Le$0$dst@1@@2 () Bool)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1 () T@$1_DiemId_DiemIdDomain)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@2| () Int)
(declare-fun |$temp_0'$1_DiemId_DiemIdDomains'@0@@0| () T@$1_DiemId_DiemIdDomains)
(declare-fun $t24@@0 () T@$Mutation_131391)
(declare-fun $t24@0@@0 () T@$Mutation_131391)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t23@@0 () Int)
(declare-fun inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 () Bool)
(declare-fun $t20@@0 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t15@@0 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $t3@@2 () T@$Mutation_131391)
(declare-fun $t31@@0 () T@$Mutation_76381)
(declare-fun $t35 () T@$Mutation_92689)
(push 1)
(set-info :boogie-vc-id $1_DiemId_remove_diem_id_domain$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 216747) (let ((anon46_Else_correct  (=> (and (not $abort_flag@3) (= $t38 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory@0@@1) _$t1@@1)))) (and (=> (= (ControlFlow 0 164115) (- 0 219013)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1))) (and (=> (= (ControlFlow 0 164115) (- 0 219024)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (and (=> (= (ControlFlow 0 164115) (- 0 219034)) (not (not (exists ((i@@74 Int) ) (!  (and (and (|$IsValid'u64'| i@@74) (and (>= i@@74 0) (< i@@74 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@74) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))))) (=> (not (not (exists ((i@@75 Int) ) (!  (and (and (|$IsValid'u64'| i@@75) (and (>= i@@75 0) (< i@@75 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@75) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)))) (and (=> (= (ControlFlow 0 164115) (- 0 219048)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1))) (and (=> (= (ControlFlow 0 164115) (- 0 219060)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (and (=> (= (ControlFlow 0 164115) (- 0 219078)) (not (not (= _$t0@@5 186537453)))) (=> (not (not (= _$t0@@5 186537453))) (and (=> (= (ControlFlow 0 164115) (- 0 219092)) (not (> (seq.len _$t2@@0) 63))) (=> (not (> (seq.len _$t2@@0) 63)) (and (=> (= (ControlFlow 0 164115) (- 0 219104)) (not (exists ((i@@76 Int) ) (!  (and (and (|$IsValid'u64'| i@@76) (and (>= i@@76 0) (< i@@76 (seq.len $t38)))) (= (seq.nth $t38 i@@76) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)))) (=> (not (exists ((i@@77 Int) ) (!  (and (and (|$IsValid'u64'| i@@77) (and (>= i@@77 0) (< i@@77 (seq.len $t38)))) (= (seq.nth $t38 i@@77) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 164115) (- 0 219116)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_67787| stream@@11)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@11) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@11) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@3))))))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@2) handle@@11)) (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@2) handle@@11))) (forall ((v@@48 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@2) handle@@11)) v@@48) (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@2) handle@@11)) v@@48))
 :qid |DiemIdseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdseqArraybpl.2734:13|
 :skolemid |75|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_67787| stream@@12)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@12) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@4))))))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@3) handle@@12)) (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@3) handle@@12))) (forall ((v@@49 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@3) handle@@12)) v@@49) (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@3) handle@@12)) v@@49))
 :qid |DiemIdseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdseqArraybpl.2734:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 164115) (- 0 219141)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_67787| stream@@13)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@13) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@13) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t14@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $EmptyEventStore) $t13@@0 stream_new@@5))))))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@13 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@4) handle@@13)) (|l#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@4) handle@@13))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| actual@@4) handle@@13)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| expected@@4) handle@@13)) v@@50))
 :qid |DiemIdseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemIdseqArraybpl.2734:13|
 :skolemid |75|
)))))))))))))))))))))))))))
(let ((L7_correct@@0  (and (=> (= (ControlFlow 0 162500) (- 0 218801)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (not (exists ((i@@78 Int) ) (!  (and (and (|$IsValid'u64'| i@@78) (and (>= i@@78 0) (< i@@78 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@78) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (not (= _$t0@@5 186537453))) (> (seq.len _$t2@@0) 63))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (not (exists ((i@@79 Int) ) (!  (and (and (|$IsValid'u64'| i@@79) (and (>= i@@79 0) (< i@@79 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@79) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)) 1))) (not (= _$t0@@5 186537453))) (> (seq.len _$t2@@0) 63)) (=> (= (ControlFlow 0 162500) (- 0 218869)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (= 5 $t17@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= 5 $t17@0@@0))) (and (not (exists ((i@@80 Int) ) (!  (and (and (|$IsValid'u64'| i@@80) (and (>= i@@80 0) (< i@@80 (seq.len $t11@@2)))) (= (seq.nth $t11@@2 i@@80) ($1_DiemId_DiemIdDomain _$t2@@0)))
 :qid |DiemIdseqArraybpl.1135:13|
 :skolemid |32|
))) (= 7 $t17@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)) (= 5 $t17@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t12@@1)) 1)) (= 3 $t17@0@@0))) (and (not (= _$t0@@5 186537453)) (= 2 $t17@0@@0))) (and (> (seq.len _$t2@@0) 63) (= 7 $t17@0@@0))))))))
(let ((anon46_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t17@0@@0 $abort_code@4) (= (ControlFlow 0 164129) 162500))) L7_correct@@0)))
(let ((|inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct@@0|  (=> (and (= |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0| (|v#$Mutation_92689| $t35@0)) (= $es@0@@0 (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0|)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_67787| stream@@14)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@14) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t37@0))))
(Multiset_67787 (|Store__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@14) (|$ToEventRep'$1_DiemId_DiemIdDomainEvent'| $t37@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$handle@1@@0| stream_new@@6)))))) (and (=> (= (ControlFlow 0 163925) 164129) anon46_Then_correct) (=> (= (ControlFlow 0 163925) 164115) anon46_Else_correct)))))
(let ((anon45_Else_correct@@0  (=> (and (and (not $abort_flag@3) (= $t35@0 ($Mutation_92689 (|l#$Mutation_131452| $t34@1) (seq.++ (|p#$Mutation_131452| $t34@1) (seq.unit 0)) (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|v#$Mutation_131452| $t34@1))))) (and (= $t37@0 ($1_DiemId_DiemIdDomainEvent true inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 _$t1@@1)) (= (ControlFlow 0 163931) 163925))) |inline$$1_Event_emit_event'$1_DiemId_DiemIdDomainEvent'$0$anon0_correct@@0|)))
(let ((anon45_Then_correct@@0  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t17@0@@0 $abort_code@4) (= (ControlFlow 0 164143) 162500))) L7_correct@@0)))
(let ((anon44_Then$1_correct  (=> (= $t34@1 $t34@@0) (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 164195) 164143) anon45_Then_correct@@0) (=> (= (ControlFlow 0 164195) 163931) anon45_Else_correct@@0))))))
(let ((anon44_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= (ControlFlow 0 164193) 164195)) anon44_Then$1_correct)))
(let ((anon44_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453) (=> (and (and (= $t34@0@@0 ($Mutation_131452 ($Global 186537453) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453))) (= $t34@1 $t34@0@@0)) (and (= $abort_flag@3 $abort_flag@2@@0) (= $abort_code@4 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 163816) 164143) anon45_Then_correct@@0) (=> (= (ControlFlow 0 163816) 163931) anon45_Else_correct@@0))))))
(let ((anon43_Else_correct@@0  (=> (and (not $abort_flag@2@@0) (= $t24@2@@0 ($Mutation_131391 (|l#$Mutation_131391| $t24@1@@0) (|p#$Mutation_131391| $t24@1@@0) ($1_DiemId_DiemIdDomains (|v#$Mutation_76381| |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2|))))) (and (=> (= (ControlFlow 0 163794) (- 0 218391)) (let (($range_0@@15 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@15 $i_1@@15) (let ((i@@81 $i_1@@15))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0)) i@@81))) 63)))
 :qid |DiemIdseqArraybpl.13855:105|
 :skolemid |244|
)))) (=> (let (($range_0@@16 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))))
(forall (($i_1@@16 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@16) (let ((i@@82 $i_1@@16))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0)) i@@82))) 63)))
 :qid |DiemIdseqArraybpl.13855:105|
 :skolemid |244|
))) (and (=> (= (ControlFlow 0 163794) (- 0 218439)) (let (($range_0@@17 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@17) (let ((i@@83 $i_1@@17))
(let (($range_2@@5 ($Range (+ i@@83 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))))
(forall (($i_3@@5 Int) ) (!  (=> ($InRange $range_2@@5 $i_3@@5) (let ((j@@20 $i_3@@5))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0)) i@@83) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0)) j@@20)))))
 :qid |DiemIdseqArraybpl.13863:110|
 :skolemid |245|
)))))
 :qid |DiemIdseqArraybpl.13862:105|
 :skolemid |246|
)))) (=> (let (($range_0@@18 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@18) (let ((i@@84 $i_1@@18))
(let (($range_2@@6 ($Range (+ i@@84 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))))
(forall (($i_3@@6 Int) ) (!  (=> ($InRange $range_2@@6 $i_3@@6) (let ((j@@21 $i_3@@6))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0)) i@@84) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0)) j@@21)))))
 :qid |DiemIdseqArraybpl.13863:110|
 :skolemid |245|
)))))
 :qid |DiemIdseqArraybpl.13862:105|
 :skolemid |246|
))) (and (=> (= (ControlFlow 0 163794) (- 0 218524)) (let (($range_0@@19 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))
(forall (($i_1@@19 Int) ) (!  (=> (and (>= $i_1@@19 0) (< $i_1@@19 (seq.len $range_0@@19))) (let (($elem@@7 (seq.nth $range_0@@19 $i_1@@19)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@7)) 63)))
 :qid |DiemIdseqArraybpl.13870:86|
 :skolemid |247|
)))) (=> (let (($range_0@@20 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@2@@0))))
(forall (($i_1@@20 Int) ) (!  (=> (and (>= $i_1@@20 0) (< $i_1@@20 (seq.len $range_0@@20))) (let (($elem@@8 (seq.nth $range_0@@20 $i_1@@20)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@8)) 63)))
 :qid |DiemIdseqArraybpl.13870:86|
 :skolemid |247|
))) (=> (and (= $1_DiemId_DiemIdDomains_$memory@0@@1 ($Memory_130784 (|Store__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_131391| $t24@2@@0)) true) (|Store__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) (|a#$Global| (|l#$Mutation_131391| $t24@2@@0)) (|v#$Mutation_131391| $t24@2@@0)))) (|$IsValid'address'| 186537453)) (and (=> (= (ControlFlow 0 163794) 164193) anon44_Then_correct@@0) (=> (= (ControlFlow 0 163794) 163816) anon44_Else_correct@@0))))))))))))
(let ((anon43_Then_correct@@0  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= $t17@0@@0 $abort_code@3@@0) (= (ControlFlow 0 164209) 162500))) L7_correct@@0)))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then$1_correct|  (=> (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2@@0 true) (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2| |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@0|)) (and (=> (= (ControlFlow 0 163566) 164209) anon43_Then_correct@@0) (=> (= (ControlFlow 0 163566) 163794) anon43_Else_correct@@0))))))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|  (=> (and (not (and (>= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1|)))) (= (ControlFlow 0 163564) 163566)) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|  (=> (and (and (and (>= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0) (< |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| (seq.len |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1|))) (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$e@1| (seq.nth |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2|))) (and (and (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@1| ($Mutation_76381 (|l#$Mutation_76381| $t31@0@@0) (|p#$Mutation_76381| $t31@0@@0) (seq.++ (seq.extract |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| 0 (- |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0)) (seq.extract |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| (+ |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 1) (- (seq.len |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1|) (+ |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 1)))))) (= $abort_code@3@@0 $abort_code@2@@1)) (and (= $abort_flag@2@@0 $abort_flag@1@@1) (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@2| |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$m'@1|)))) (and (=> (= (ControlFlow 0 163514) 164209) anon43_Then_correct@@0) (=> (= (ControlFlow 0 163514) 163794) anon43_Else_correct@@0)))))
(let ((|inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$v@1| (|v#$Mutation_76381| $t31@0@@0)) (and (=> (= (ControlFlow 0 163490) 163564) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 163490) 163514) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|)))))
(let ((anon42_Then_correct@@0  (=> |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| (=> (and (= $t31@0@@0 ($Mutation_76381 (|l#$Mutation_131391| $t24@1@@0) (seq.++ (|p#$Mutation_131391| $t24@1@@0) (seq.unit 0)) (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)))) (= (ControlFlow 0 163574) 163490)) |inline$$1_Vector_remove'$1_DiemId_DiemIdDomain'$0$anon0_correct|))))
(let ((anon42_Else_correct@@0  (=> (not |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1|) (and (=> (= (ControlFlow 0 163379) (- 0 218055)) (let (($range_0@@21 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))))
(forall (($i_1@@21 Int) ) (!  (=> ($InRange $range_0@@21 $i_1@@21) (let ((i@@85 $i_1@@21))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)) i@@85))) 63)))
 :qid |DiemIdseqArraybpl.13784:105|
 :skolemid |240|
)))) (=> (let (($range_0@@22 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))))
(forall (($i_1@@22 Int) ) (!  (=> ($InRange $range_0@@22 $i_1@@22) (let ((i@@86 $i_1@@22))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)) i@@86))) 63)))
 :qid |DiemIdseqArraybpl.13784:105|
 :skolemid |240|
))) (and (=> (= (ControlFlow 0 163379) (- 0 218103)) (let (($range_0@@23 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@23 $i_1@@23) (let ((i@@87 $i_1@@23))
(let (($range_2@@7 ($Range (+ i@@87 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))))
(forall (($i_3@@7 Int) ) (!  (=> ($InRange $range_2@@7 $i_3@@7) (let ((j@@22 $i_3@@7))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)) i@@87) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)) j@@22)))))
 :qid |DiemIdseqArraybpl.13792:110|
 :skolemid |241|
)))))
 :qid |DiemIdseqArraybpl.13791:105|
 :skolemid |242|
)))) (=> (let (($range_0@@24 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))))
(forall (($i_1@@24 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@24) (let ((i@@88 $i_1@@24))
(let (($range_2@@8 ($Range (+ i@@88 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))))
(forall (($i_3@@8 Int) ) (!  (=> ($InRange $range_2@@8 $i_3@@8) (let ((j@@23 $i_3@@8))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)) i@@88) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0)) j@@23)))))
 :qid |DiemIdseqArraybpl.13792:110|
 :skolemid |241|
)))))
 :qid |DiemIdseqArraybpl.13791:105|
 :skolemid |242|
))) (and (=> (= (ControlFlow 0 163379) (- 0 218188)) (let (($range_0@@25 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))
(forall (($i_1@@25 Int) ) (!  (=> (and (>= $i_1@@25 0) (< $i_1@@25 (seq.len $range_0@@25))) (let (($elem@@9 (seq.nth $range_0@@25 $i_1@@25)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@9)) 63)))
 :qid |DiemIdseqArraybpl.13799:86|
 :skolemid |243|
)))) (=> (let (($range_0@@26 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))))
(forall (($i_1@@26 Int) ) (!  (=> (and (>= $i_1@@26 0) (< $i_1@@26 (seq.len $range_0@@26))) (let (($elem@@10 (seq.nth $range_0@@26 $i_1@@26)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@10)) 63)))
 :qid |DiemIdseqArraybpl.13799:86|
 :skolemid |243|
))) (=> (and (|$IsValid'u64'| 2) (|$IsValid'u64'| $t30@@0)) (=> (and (and (= $t30@@0 7) (= $t30@@0 $t30@@0)) (and (= $t17@0@@0 $t30@@0) (= (ControlFlow 0 163379) 162500))) L7_correct@@0)))))))))))
(let ((anon41_Else_correct@@0  (=> (not $abort_flag@1@@1) (=> (and (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2|) (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1|)) (and (=> (= (ControlFlow 0 163169) 163574) anon42_Then_correct@@0) (=> (= (ControlFlow 0 163169) 163379) anon42_Else_correct@@0))))))
(let ((anon41_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t17@0@@0 $abort_code@2@@1) (= (ControlFlow 0 164223) 162500))) L7_correct@@0)))
(let ((|inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| false) (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 163129) 164223) anon41_Then_correct@@0) (=> (= (ControlFlow 0 163129) 163169) anon41_Else_correct@@0))))))
(let ((|inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res1@1| true) (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@2| |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1|)) (and (=> (= (ControlFlow 0 163139) 164223) anon41_Then_correct@@0) (=> (= (ControlFlow 0 163139) 163169) anon41_Else_correct@@0))))))
(let ((|inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$res2@1| (|$IndexOfVec'$1_DiemId_DiemIdDomain'| $t26@0@@0 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1)) (and (=> (= (ControlFlow 0 163117) 163139) |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 163117) 163129) |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon3_Else_correct|)))))
(let ((anon40_Else_correct@@0  (=> (and (and (not $abort_flag@1@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1)) (and (= $t26@0@@0 (|$domains#$1_DiemId_DiemIdDomains| (|v#$Mutation_131391| $t24@1@@0))) (= (ControlFlow 0 163147) 163117))) |inline$$1_Vector_index_of'$1_DiemId_DiemIdDomain'$0$anon0_correct|)))
(let ((anon40_Then_correct@@0  (=> (and (and $abort_flag@1@@1 (= $abort_code@2@@1 $abort_code@2@@1)) (and (= $t17@0@@0 $abort_code@2@@1) (= (ControlFlow 0 164237) 162500))) L7_correct@@0)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@1  (=> (= $abort_flag@1@@1 true) (=> (and (= $abort_code@2@@1 inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$ret0@0@@1)) (and (=> (= (ControlFlow 0 162980) 164237) anon40_Then_correct@@0) (=> (= (ControlFlow 0 162980) 163147) anon40_Else_correct@@0))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct@@1  (=> (and (and (not inline$$Le$0$dst@1@@2) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1) (= (ControlFlow 0 162974) 162980))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@1)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct@@1  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t4@1@@1 $abort_code@1@@3) (= (ControlFlow 0 163012) 162980))) inline$$1_DiemId_create_diem_id_domain$0$L3_correct@@1)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct@@1  (=> (and inline$$Le$0$dst@1@@2 (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1 ($1_DiemId_DiemIdDomain _$t2@@0))) (=> (and (and (= inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1) (= $abort_flag@1@@1 $abort_flag@0@@3)) (and (= $abort_code@2@@1 $abort_code@1@@3) (= inline$$1_DiemId_create_diem_id_domain$0$$ret0@1@@1 inline$$1_DiemId_create_diem_id_domain$0$$t9@1@@1))) (and (=> (= (ControlFlow 0 162998) 164237) anon40_Then_correct@@0) (=> (= (ControlFlow 0 162998) 163147) anon40_Else_correct@@0))))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct@@1  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1) (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 7)) (and (= inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1 inline$$1_DiemId_create_diem_id_domain$0$$t8@0@@1) (= inline$$Le$0$dst@1@@2 inline$$Le$0$dst@1@@2))) (and (=> (= (ControlFlow 0 162958) 162998) inline$$1_DiemId_create_diem_id_domain$0$anon7_Then_correct@@1) (=> (= (ControlFlow 0 162958) 162974) inline$$1_DiemId_create_diem_id_domain$0$anon7_Else_correct@@1))))))
(let ((inline$$Le$0$anon0_correct@@2  (=> (and (= inline$$Le$0$dst@1@@2 (<= |inline$$1_Vector_length'u8'$0$l@1@@2| 63)) (= (ControlFlow 0 162922) 162958)) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else$1_correct@@1)))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct@@1  (=> (not $abort_flag@0@@3) (=> (and (|$IsValid'u64'| 63) (= (ControlFlow 0 162928) 162922)) inline$$Le$0$anon0_correct@@2))))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@2|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@2| (seq.len _$t2@@0)) (and (=> (= (ControlFlow 0 162862) 163012) inline$$1_DiemId_create_diem_id_domain$0$anon6_Then_correct@@1) (=> (= (ControlFlow 0 162862) 162928) inline$$1_DiemId_create_diem_id_domain$0$anon6_Else_correct@@1)))))
(let ((inline$$1_DiemId_create_diem_id_domain$0$anon0_correct@@1  (=> (and (= _$t2@@0 _$t2@@0) (= (ControlFlow 0 162868) 162862)) |inline$$1_Vector_length'u8'$0$anon0_correct@@2|)))
(let ((anon39_Else_correct@@0  (=> (and (and (not $abort_flag@0@@3) (= |$temp_0'$1_DiemId_DiemIdDomains'@0@@0| (|v#$Mutation_131391| $t24@1@@0))) (and (= |$temp_0'$1_DiemId_DiemIdDomains'@0@@0| |$temp_0'$1_DiemId_DiemIdDomains'@0@@0|) (= (ControlFlow 0 163018) 162868))) inline$$1_DiemId_create_diem_id_domain$0$anon0_correct@@1)))
(let ((anon39_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t17@0@@0 $abort_code@1@@3) (= (ControlFlow 0 164251) 162500))) L7_correct@@0)))
(let ((anon38_Then$1_correct  (=> (= $t24@1@@0 $t24@@0) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 164303) 164251) anon39_Then_correct@@0) (=> (= (ControlFlow 0 164303) 163018) anon39_Else_correct@@0))))))
(let ((anon38_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (= (ControlFlow 0 164301) 164303)) anon38_Then$1_correct)))
(let ((anon38_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1) (=> (and (and (= $t24@0@@0 ($Mutation_131391 ($Global _$t1@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1))) (= $t24@1@@0 $t24@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 162584) 164251) anon39_Then_correct@@0) (=> (= (ControlFlow 0 162584) 163018) anon39_Else_correct@@0))))))
(let ((anon37_Then_correct@@0  (=> $t21@0@@0 (and (=> (= (ControlFlow 0 162562) 164301) anon38_Then_correct@@0) (=> (= (ControlFlow 0 162562) 162584) anon38_Else_correct@@0)))))
(let ((anon37_Else_correct@@0  (=> (and (and (not $t21@0@@0) (= $t23@@0 $t23@@0)) (and (= $t17@0@@0 $t23@@0) (= (ControlFlow 0 162558) 162500))) L7_correct@@0)))
(let ((anon36_Then_correct@@0  (=> inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 (=> (and (= $t21@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1)) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 5)) (and (= $t23@@0 $t23@@0) (= $t21@0@@0 $t21@0@@0))) (and (=> (= (ControlFlow 0 162542) 162562) anon37_Then_correct@@0) (=> (= (ControlFlow 0 162542) 162558) anon37_Else_correct@@0)))))))
(let ((anon36_Else_correct@@0  (=> (and (and (not inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0) (= $t20@@0 $t20@@0)) (and (= $t17@0@@0 $t20@@0) (= (ControlFlow 0 162284) 162500))) L7_correct@@0)))
(let ((anon35_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t20@@0) (= $t20@@0 5)) (and (= $t20@@0 $t20@@0) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 162268) 162542) anon36_Then_correct@@0) (=> (= (ControlFlow 0 162268) 162284) anon36_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> $t16@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t15@@0)) (= 5 $t17@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t15@@0)) 1)) (= 3 $t17@@0))) (and (not (= _$t0@@5 186537453)) (= 2 $t17@@0))) (= $t17@@0 $t17@@0)) (and (= $t17@0@@0 $t17@@0) (= (ControlFlow 0 164389) 162500))) L7_correct@@0))))
(let ((anon35_Then_correct@@0 true))
(let ((inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct@@0  (=> (|$IsValid'address'| 186537453) (=> (and (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)) (= inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0 inline$$1_DiemId_tc_domain_manager_exists$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 162226) 164317) anon35_Then_correct@@0) (=> (= (ControlFlow 0 162226) 162268) anon35_Else_correct@@0))))))
(let ((anon34_Else_correct@@0  (=> (and (not $t16@@0) (= (ControlFlow 0 162232) 162226)) inline$$1_DiemId_tc_domain_manager_exists$0$anon0_correct@@0)))
(let ((anon0$1_correct@@6  (=> (|$IsValid'address'| _$t0@@5) (=> (and (|$IsValid'address'| _$t1@@1) (|$IsValid'vec'u8''| _$t2@@0)) (=> (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DiemIdseqArraybpl.13537:20|
 :skolemid |233|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@10)))
(|$IsValid'$1_DiemId_DiemIdDomainManager'| $rsc@@10))
 :qid |DiemIdseqArraybpl.13541:20|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@11)))
 (and (|$IsValid'$1_DiemId_DiemIdDomains'| $rsc@@11) (and (and (let (($range_1@@3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))))
(forall (($i_2@@3 Int) ) (!  (=> ($InRange $range_1@@3 $i_2@@3) (let ((i@@89 $i_2@@3))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11) i@@89))) 63)))
 :qid |DiemIdseqArraybpl.13546:136|
 :skolemid |235|
))) (let (($range_3@@3 ($Range 0 (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))))
(forall (($i_4@@3 Int) ) (!  (=> ($InRange $range_3@@3 $i_4@@3) (let ((i@@90 $i_4@@3))
(let (($range_5@@3 ($Range (+ i@@90 1) (seq.len (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))))
(forall (($i_6@@3 Int) ) (!  (=> ($InRange $range_5@@3 $i_6@@3) (let ((j@@24 $i_6@@3))
 (not (= (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11) i@@90) (seq.nth (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11) j@@24)))))
 :qid |DiemIdseqArraybpl.13548:96|
 :skolemid |236|
)))))
 :qid |DiemIdseqArraybpl.13547:196|
 :skolemid |237|
)))) (let (($range_7@@3 (|$domains#$1_DiemId_DiemIdDomains| $rsc@@11)))
(forall (($i_8@@3 Int) ) (!  (=> (and (>= $i_8@@3 0) (< $i_8@@3 (seq.len $range_7@@3))) (let (($elem@@11 (seq.nth $range_7@@3 $i_8@@3)))
(<= (seq.len (|$domain#$1_DiemId_DiemIdDomain| $elem@@11)) 63)))
 :qid |DiemIdseqArraybpl.13549:221|
 :skolemid |238|
))))))
 :qid |DiemIdseqArraybpl.13545:20|
 :skolemid |239|
 :pattern ( (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) $a_0@@11))
)) (= $t11@@2 (|$domains#$1_DiemId_DiemIdDomains| (|Select__T@[Int]$1_DiemId_DiemIdDomains_| (|contents#$Memory_130784| $1_DiemId_DiemIdDomains_$memory) _$t1@@1))))) (=> (and (and (and (= $t12@@1 _$t0@@5) (= $t13@@0 (|$diem_id_domain_events#$1_DiemId_DiemIdDomainManager| (|Select__T@[Int]$1_DiemId_DiemIdDomainManager_| (|contents#$Memory_130848| $1_DiemId_DiemIdDomainManager_$memory) 186537453)))) (and (= $t14@@0 ($1_DiemId_DiemIdDomainEvent true ($1_DiemId_DiemIdDomain _$t2@@0) _$t1@@1)) (= _$t0@@5 _$t0@@5))) (and (and (= _$t1@@1 _$t1@@1) (= _$t2@@0 _$t2@@0)) (and (= $t15@@0 _$t0@@5) (= $t16@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_99643| $1_Roles_RoleId_$memory) $t15@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_99643| $1_Roles_RoleId_$memory) $t15@@0)) 1))) (not (= _$t0@@5 186537453))))))) (and (=> (= (ControlFlow 0 162139) 164389) anon34_Then_correct@@0) (=> (= (ControlFlow 0 162139) 162232) anon34_Else_correct@@0))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_67787_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_67787| stream@@15) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_67787| stream@@15) v@@51) 0)
 :qid |DiemIdseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemIdseqArraybpl.2718:13|
 :skolemid |74|
))) (= (ControlFlow 0 161751) 162139)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (and (= (seq.len (|p#$Mutation_131391| $t3@@2)) 0) (= (seq.len (|p#$Mutation_131391| $t24@@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_76381| $t31@@0)) 0) (= (seq.len (|p#$Mutation_131452| $t34@@0)) 0)) (and (= (seq.len (|p#$Mutation_92689| $t35)) 0) (= (ControlFlow 0 161761) 161751))) inline$$InitEventStore$0$anon0_correct@@6))))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 216747) 161761) anon0_correct@@6)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 216747)))
(get-value ((ControlFlow 0 161761)))
(get-value ((ControlFlow 0 161751)))
(get-value ((ControlFlow 0 162139)))
(get-value ((ControlFlow 0 162232)))
(get-value ((ControlFlow 0 162226)))
(get-value ((ControlFlow 0 162268)))
(get-value ((ControlFlow 0 162542)))
(get-value ((ControlFlow 0 162562)))
(get-value ((ControlFlow 0 162584)))
(get-value ((ControlFlow 0 163018)))
(get-value ((ControlFlow 0 162868)))
(get-value ((ControlFlow 0 162862)))
(get-value ((ControlFlow 0 162928)))
(get-value ((ControlFlow 0 162922)))
(get-value ((ControlFlow 0 162958)))
(get-value ((ControlFlow 0 162998)))
(get-value ((ControlFlow 0 163147)))
(get-value ((ControlFlow 0 163117)))
(get-value ((ControlFlow 0 163139)))
(get-value ((ControlFlow 0 163169)))
(get-value ((ControlFlow 0 163574)))
(get-value ((ControlFlow 0 163490)))
(get-value ((ControlFlow 0 163514)))
(get-value ((ControlFlow 0 163794)))
(assert (not (= (ControlFlow 0 163794) (- 218391))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 216747)))
(get-value ((ControlFlow 0 161761)))
(get-value ((ControlFlow 0 161751)))
(get-value ((ControlFlow 0 162139)))
(get-value ((ControlFlow 0 162232)))
(get-value ((ControlFlow 0 162226)))
(get-value ((ControlFlow 0 162268)))
(get-value ((ControlFlow 0 162542)))
(get-value ((ControlFlow 0 162562)))
(get-value ((ControlFlow 0 162584)))
(get-value ((ControlFlow 0 163018)))
(get-value ((ControlFlow 0 162868)))
(get-value ((ControlFlow 0 162862)))
(get-value ((ControlFlow 0 162928)))
(get-value ((ControlFlow 0 162922)))
(get-value ((ControlFlow 0 162958)))
(get-value ((ControlFlow 0 162998)))
(get-value ((ControlFlow 0 163147)))
(get-value ((ControlFlow 0 163117)))
(get-value ((ControlFlow 0 163139)))
(get-value ((ControlFlow 0 163169)))
(get-value ((ControlFlow 0 163574)))
(get-value ((ControlFlow 0 163490)))
(get-value ((ControlFlow 0 163514)))
(get-value ((ControlFlow 0 163794)))
(assert (not (= (ControlFlow 0 163794) (- 218439))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 216747)))
(get-value ((ControlFlow 0 161761)))
(get-value ((ControlFlow 0 161751)))
(get-value ((ControlFlow 0 162139)))
(get-value ((ControlFlow 0 162232)))
(get-value ((ControlFlow 0 162226)))
(get-value ((ControlFlow 0 162268)))
(get-value ((ControlFlow 0 162542)))
(get-value ((ControlFlow 0 162562)))
(get-value ((ControlFlow 0 162584)))
(get-value ((ControlFlow 0 163018)))
(get-value ((ControlFlow 0 162868)))
(get-value ((ControlFlow 0 162862)))
(get-value ((ControlFlow 0 162928)))
(get-value ((ControlFlow 0 162922)))
(get-value ((ControlFlow 0 162958)))
(get-value ((ControlFlow 0 162998)))
(get-value ((ControlFlow 0 163147)))
(get-value ((ControlFlow 0 163117)))
(get-value ((ControlFlow 0 163139)))
(get-value ((ControlFlow 0 163169)))
(get-value ((ControlFlow 0 163574)))
(get-value ((ControlFlow 0 163490)))
(get-value ((ControlFlow 0 163514)))
(get-value ((ControlFlow 0 163794)))
(get-value ((ControlFlow 0 163816)))
(get-value ((ControlFlow 0 163931)))
(get-value ((ControlFlow 0 163925)))
(get-value ((ControlFlow 0 164115)))
(assert (not (= (ControlFlow 0 164115) (- 219104))))
(check-sat)
(pop 1)
; Invalid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 219181) true)
))
(check-sat)
(pop 1)
; Valid
