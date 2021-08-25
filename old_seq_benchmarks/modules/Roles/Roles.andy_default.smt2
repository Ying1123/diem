(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_105405 0)) ((($Memory_105405 (|domain#$Memory_105405| |T@[Int]Bool|) (|contents#$Memory_105405| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_176930 0)) ((($Memory_176930 (|domain#$Memory_176930| |T@[Int]Bool|) (|contents#$Memory_176930| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_173819 0)) ((($Memory_173819 (|domain#$Memory_173819| |T@[Int]Bool|) (|contents#$Memory_173819| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_171613 0)) ((($Memory_171613 (|domain#$Memory_171613| |T@[Int]Bool|) (|contents#$Memory_171613| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_171893 0)) ((($Memory_171893 (|domain#$Memory_171893| |T@[Int]Bool|) (|contents#$Memory_171893| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_171580 0)) ((($Memory_171580 (|domain#$Memory_171580| |T@[Int]Bool|) (|contents#$Memory_171580| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_171365 0)) ((($Memory_171365 (|domain#$Memory_171365| |T@[Int]Bool|) (|contents#$Memory_171365| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_168826 0)) ((($Memory_168826 (|domain#$Memory_168826| |T@[Int]Bool|) (|contents#$Memory_168826| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_168762 0)) ((($Memory_168762 (|domain#$Memory_168762| |T@[Int]Bool|) (|contents#$Memory_168762| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_167472 0)) ((($Memory_167472 (|domain#$Memory_167472| |T@[Int]Bool|) (|contents#$Memory_167472| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_167408 0)) ((($Memory_167408 (|domain#$Memory_167408| |T@[Int]Bool|) (|contents#$Memory_167408| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_167096 0)) ((($Memory_167096 (|domain#$Memory_167096| |T@[Int]Bool|) (|contents#$Memory_167096| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_163830 0)) ((($Memory_163830 (|domain#$Memory_163830| |T@[Int]Bool|) (|contents#$Memory_163830| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_163543 0)) ((($Memory_163543 (|domain#$Memory_163543| |T@[Int]Bool|) (|contents#$Memory_163543| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_163256 0)) ((($Memory_163256 (|domain#$Memory_163256| |T@[Int]Bool|) (|contents#$Memory_163256| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_163037 0)) ((($Memory_163037 (|domain#$Memory_163037| |T@[Int]Bool|) (|contents#$Memory_163037| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_173426 0)) ((($Memory_173426 (|domain#$Memory_173426| |T@[Int]Bool|) (|contents#$Memory_173426| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155774 0)) ((($Memory_155774 (|domain#$Memory_155774| |T@[Int]Bool|) (|contents#$Memory_155774| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155687 0)) ((($Memory_155687 (|domain#$Memory_155687| |T@[Int]Bool|) (|contents#$Memory_155687| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_152484 0)) ((($Memory_152484 (|domain#$Memory_152484| |T@[Int]Bool|) (|contents#$Memory_152484| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152397 0)) ((($Memory_152397 (|domain#$Memory_152397| |T@[Int]Bool|) (|contents#$Memory_152397| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_173652 0)) ((($Memory_173652 (|domain#$Memory_173652| |T@[Int]Bool|) (|contents#$Memory_173652| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_156038 0)) ((($Memory_156038 (|domain#$Memory_156038| |T@[Int]Bool|) (|contents#$Memory_156038| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_165763 0)) ((($Memory_165763 (|domain#$Memory_165763| |T@[Int]Bool|) (|contents#$Memory_165763| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_156364 0)) ((($Memory_156364 (|domain#$Memory_156364| |T@[Int]Bool|) (|contents#$Memory_156364| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_173561 0)) ((($Memory_173561 (|domain#$Memory_173561| |T@[Int]Bool|) (|contents#$Memory_173561| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155947 0)) ((($Memory_155947 (|domain#$Memory_155947| |T@[Int]Bool|) (|contents#$Memory_155947| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_167652 0)) ((($Memory_167652 (|domain#$Memory_167652| |T@[Int]Bool|) (|contents#$Memory_167652| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_156265 0)) ((($Memory_156265 (|domain#$Memory_156265| |T@[Int]Bool|) (|contents#$Memory_156265| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_152099 0)) ((($Memory_152099 (|domain#$Memory_152099| |T@[Int]Bool|) (|contents#$Memory_152099| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_152035 0)) ((($Memory_152035 (|domain#$Memory_152035| |T@[Int]Bool|) (|contents#$Memory_152035| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_148038 0)) ((($Memory_148038 (|domain#$Memory_148038| |T@[Int]Bool|) (|contents#$Memory_148038| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_147951 0)) ((($Memory_147951 (|domain#$Memory_147951| |T@[Int]Bool|) (|contents#$Memory_147951| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_147864 0)) ((($Memory_147864 (|domain#$Memory_147864| |T@[Int]Bool|) (|contents#$Memory_147864| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_147777 0)) ((($Memory_147777 (|domain#$Memory_147777| |T@[Int]Bool|) (|contents#$Memory_147777| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_147690 0)) ((($Memory_147690 (|domain#$Memory_147690| |T@[Int]Bool|) (|contents#$Memory_147690| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_148303 0)) ((($Memory_148303 (|domain#$Memory_148303| |T@[Int]Bool|) (|contents#$Memory_148303| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_146816 0)) ((($Memory_146816 (|domain#$Memory_146816| |T@[Int]Bool|) (|contents#$Memory_146816| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_146882 0)) ((($Memory_146882 (|domain#$Memory_146882| |T@[Int]Bool|) (|contents#$Memory_146882| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_146735 0)) ((($Memory_146735 (|domain#$Memory_146735| |T@[Int]Bool|) (|contents#$Memory_146735| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_146654 0)) ((($Memory_146654 (|domain#$Memory_146654| |T@[Int]Bool|) (|contents#$Memory_146654| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_146573 0)) ((($Memory_146573 (|domain#$Memory_146573| |T@[Int]Bool|) (|contents#$Memory_146573| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_146492 0)) ((($Memory_146492 (|domain#$Memory_146492| |T@[Int]Bool|) (|contents#$Memory_146492| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_146378 0)) ((($Memory_146378 (|domain#$Memory_146378| |T@[Int]Bool|) (|contents#$Memory_146378| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_172563 0)) ((($Memory_172563 (|domain#$Memory_172563| |T@[Int]Bool|) (|contents#$Memory_172563| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_146411 0)) ((($Memory_146411 (|domain#$Memory_146411| |T@[Int]Bool|) (|contents#$Memory_146411| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_145867 0)) ((($Memory_145867 (|domain#$Memory_145867| |T@[Int]Bool|) (|contents#$Memory_145867| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_145309 0)) ((($Memory_145309 (|domain#$Memory_145309| |T@[Int]Bool|) (|contents#$Memory_145309| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_113696 0)) ((($Memory_113696 (|domain#$Memory_113696| |T@[Int]Bool|) (|contents#$Memory_113696| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_112252 0)) ((($Memory_112252 (|domain#$Memory_112252| |T@[Int]Bool|) (|contents#$Memory_112252| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_83261 0)) (((Multiset_83261 (|v#Multiset_83261| |T@[$EventRep]Int|) (|l#Multiset_83261| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_83261| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_83261|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_174647 0)) ((($Mutation_174647 (|l#$Mutation_174647| T@$Location) (|p#$Mutation_174647| (Seq Int)) (|v#$Mutation_174647| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_174603 0)) ((($Mutation_174603 (|l#$Mutation_174603| T@$Location) (|p#$Mutation_174603| (Seq Int)) (|v#$Mutation_174603| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_52073 0)) ((($Mutation_52073 (|l#$Mutation_52073| T@$Location) (|p#$Mutation_52073| (Seq Int)) (|v#$Mutation_52073| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_161757 0)) ((($Mutation_161757 (|l#$Mutation_161757| T@$Location) (|p#$Mutation_161757| (Seq Int)) (|v#$Mutation_161757| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_150776 0)) ((($Mutation_150776 (|l#$Mutation_150776| T@$Location) (|p#$Mutation_150776| (Seq Int)) (|v#$Mutation_150776| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_112747 0)) ((($Mutation_112747 (|l#$Mutation_112747| T@$Location) (|p#$Mutation_112747| (Seq Int)) (|v#$Mutation_112747| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_106036 0)) ((($Mutation_106036 (|l#$Mutation_106036| T@$Location) (|p#$Mutation_106036| (Seq Int)) (|v#$Mutation_106036| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_101349 0)) ((($Mutation_101349 (|l#$Mutation_101349| T@$Location) (|p#$Mutation_101349| (Seq Int)) (|v#$Mutation_101349| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_100603 0)) ((($Mutation_100603 (|l#$Mutation_100603| T@$Location) (|p#$Mutation_100603| (Seq Int)) (|v#$Mutation_100603| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_99163 0)) ((($Mutation_99163 (|l#$Mutation_99163| T@$Location) (|p#$Mutation_99163| (Seq Int)) (|v#$Mutation_99163| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_98417 0)) ((($Mutation_98417 (|l#$Mutation_98417| T@$Location) (|p#$Mutation_98417| (Seq Int)) (|v#$Mutation_98417| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_96977 0)) ((($Mutation_96977 (|l#$Mutation_96977| T@$Location) (|p#$Mutation_96977| (Seq Int)) (|v#$Mutation_96977| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_96231 0)) ((($Mutation_96231 (|l#$Mutation_96231| T@$Location) (|p#$Mutation_96231| (Seq Int)) (|v#$Mutation_96231| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_94791 0)) ((($Mutation_94791 (|l#$Mutation_94791| T@$Location) (|p#$Mutation_94791| (Seq Int)) (|v#$Mutation_94791| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_94045 0)) ((($Mutation_94045 (|l#$Mutation_94045| T@$Location) (|p#$Mutation_94045| (Seq Int)) (|v#$Mutation_94045| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_92605 0)) ((($Mutation_92605 (|l#$Mutation_92605| T@$Location) (|p#$Mutation_92605| (Seq Int)) (|v#$Mutation_92605| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_91859 0)) ((($Mutation_91859 (|l#$Mutation_91859| T@$Location) (|p#$Mutation_91859| (Seq Int)) (|v#$Mutation_91859| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_90419 0)) ((($Mutation_90419 (|l#$Mutation_90419| T@$Location) (|p#$Mutation_90419| (Seq Int)) (|v#$Mutation_90419| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_89673 0)) ((($Mutation_89673 (|l#$Mutation_89673| T@$Location) (|p#$Mutation_89673| (Seq Int)) (|v#$Mutation_89673| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_88233 0)) ((($Mutation_88233 (|l#$Mutation_88233| T@$Location) (|p#$Mutation_88233| (Seq Int)) (|v#$Mutation_88233| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_87487 0)) ((($Mutation_87487 (|l#$Mutation_87487| T@$Location) (|p#$Mutation_87487| (Seq Int)) (|v#$Mutation_87487| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_86009 0)) ((($Mutation_86009 (|l#$Mutation_86009| T@$Location) (|p#$Mutation_86009| (Seq Int)) (|v#$Mutation_86009| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_85263 0)) ((($Mutation_85263 (|l#$Mutation_85263| T@$Location) (|p#$Mutation_85263| (Seq Int)) (|v#$Mutation_85263| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_83261_| (|T@[$1_Event_EventHandle]Multiset_83261| T@$1_Event_EventHandle) T@Multiset_83261)
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
(declare-fun ReverseVec_75046 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_74061 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_74258 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_74455 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_75243 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_74849 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_74652 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_73864 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_83261| |T@[$1_Event_EventHandle]Multiset_83261|) |T@[$1_Event_EventHandle]Multiset_83261|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Rolesandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Rolesandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Rolesandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Rolesandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Rolesandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Rolesandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Rolesandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Rolesandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |Rolesandybpl.590:13|
 :skolemid |15|
))))
 :qid |Rolesandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Rolesandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Rolesandybpl.603:17|
 :skolemid |18|
)))))
 :qid |Rolesandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |Rolesandybpl.770:13|
 :skolemid |20|
))))
 :qid |Rolesandybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Rolesandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Rolesandybpl.783:17|
 :skolemid |23|
)))))
 :qid |Rolesandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |Rolesandybpl.950:13|
 :skolemid |25|
))))
 :qid |Rolesandybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Rolesandybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Rolesandybpl.963:17|
 :skolemid |28|
)))))
 :qid |Rolesandybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |Rolesandybpl.1130:13|
 :skolemid |30|
))))
 :qid |Rolesandybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Rolesandybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Rolesandybpl.1143:17|
 :skolemid |33|
)))))
 :qid |Rolesandybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |Rolesandybpl.1310:13|
 :skolemid |35|
))))
 :qid |Rolesandybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Rolesandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Rolesandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |Rolesandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |Rolesandybpl.1490:13|
 :skolemid |40|
))))
 :qid |Rolesandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Rolesandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Rolesandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |Rolesandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |Rolesandybpl.1670:13|
 :skolemid |45|
))))
 :qid |Rolesandybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Rolesandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Rolesandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |Rolesandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |Rolesandybpl.1850:13|
 :skolemid |50|
))))
 :qid |Rolesandybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Rolesandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Rolesandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |Rolesandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |Rolesandybpl.2030:13|
 :skolemid |55|
))))
 :qid |Rolesandybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Rolesandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Rolesandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |Rolesandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u8'| (seq.nth v@@22 i@@27)))
 :qid |Rolesandybpl.2210:13|
 :skolemid |60|
))))
 :qid |Rolesandybpl.2208:28|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u8''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u8'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Rolesandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Rolesandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |Rolesandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u8'| v@@23 e@@8))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Rolesandybpl.2396:15|
 :skolemid |65|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Rolesandybpl.2412:15|
 :skolemid |66|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Rolesandybpl.2479:15|
 :skolemid |67|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Rolesandybpl.2482:15|
 :skolemid |68|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_83261| stream) 0) (forall ((v@@24 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream) v@@24) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Rolesandybpl.2584:80|
 :skolemid |71|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Rolesandybpl.2590:15|
 :skolemid |72|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Rolesandybpl.2640:82|
 :skolemid |73|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Rolesandybpl.2646:15|
 :skolemid |74|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Rolesandybpl.2696:80|
 :skolemid |75|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Rolesandybpl.2702:15|
 :skolemid |76|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Rolesandybpl.2752:79|
 :skolemid |77|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Rolesandybpl.2758:15|
 :skolemid |78|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Rolesandybpl.2808:76|
 :skolemid |79|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Rolesandybpl.2814:15|
 :skolemid |80|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Rolesandybpl.2864:78|
 :skolemid |81|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Rolesandybpl.2870:15|
 :skolemid |82|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Rolesandybpl.2920:74|
 :skolemid |83|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Rolesandybpl.2926:15|
 :skolemid |84|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Rolesandybpl.2976:69|
 :skolemid |85|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Rolesandybpl.2982:15|
 :skolemid |86|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Rolesandybpl.3032:70|
 :skolemid |87|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Rolesandybpl.3038:15|
 :skolemid |88|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Rolesandybpl.3088:60|
 :skolemid |89|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |Rolesandybpl.3094:15|
 :skolemid |90|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Rolesandybpl.3144:66|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |Rolesandybpl.3150:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Rolesandybpl.3200:60|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |Rolesandybpl.3206:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Rolesandybpl.3256:63|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |Rolesandybpl.3262:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Rolesandybpl.3312:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |Rolesandybpl.3318:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Rolesandybpl.3368:82|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |Rolesandybpl.3374:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Rolesandybpl.3424:88|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |Rolesandybpl.3430:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Rolesandybpl.3480:72|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |Rolesandybpl.3486:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |Rolesandybpl.3540:15|
 :skolemid |105|
)))
(assert (forall ((addr Int) ) (! true
 :qid |Rolesandybpl.3549:15|
 :skolemid |106|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |Rolesandybpl.3574:61|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |Rolesandybpl.4140:36|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |Rolesandybpl.10242:71|
 :skolemid |333|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |Rolesandybpl.10306:46|
 :skolemid |334|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |Rolesandybpl.10319:64|
 :skolemid |335|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |Rolesandybpl.10332:75|
 :skolemid |336|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |Rolesandybpl.10345:72|
 :skolemid |337|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |Rolesandybpl.10374:55|
 :skolemid |338|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |Rolesandybpl.10396:46|
 :skolemid |339|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |Rolesandybpl.10414:49|
 :skolemid |340|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |Rolesandybpl.10489:71|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |Rolesandybpl.10503:91|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |Rolesandybpl.10517:113|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |Rolesandybpl.10531:75|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |Rolesandybpl.10545:73|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |Rolesandybpl.10565:48|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |Rolesandybpl.10581:57|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |Rolesandybpl.10595:83|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |Rolesandybpl.10609:103|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |Rolesandybpl.10623:125|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |Rolesandybpl.10637:87|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |Rolesandybpl.10651:85|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |Rolesandybpl.10665:48|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |Rolesandybpl.10686:45|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |Rolesandybpl.10700:51|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |Rolesandybpl.10723:48|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |Rolesandybpl.11029:49|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |Rolesandybpl.11042:65|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |Rolesandybpl.11546:45|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |Rolesandybpl.11559:45|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30) true)
 :qid |Rolesandybpl.11572:55|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31) true)
 :qid |Rolesandybpl.11586:55|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@31))
)))
(assert (forall ((s@@32 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@32)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@32)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@32))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@32))))
 :qid |Rolesandybpl.11606:38|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@33))))
 :qid |Rolesandybpl.11627:44|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@33))
)))
(assert (forall ((s@@34 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@34))))
 :qid |Rolesandybpl.11678:53|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@35))))
 :qid |Rolesandybpl.11740:53|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36) true)
 :qid |Rolesandybpl.11766:55|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37) true)
 :qid |Rolesandybpl.11780:55|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@38)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@38)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@38))))
 :qid |Rolesandybpl.11797:38|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@39)))
 :qid |Rolesandybpl.11811:48|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@40)))
 :qid |Rolesandybpl.11825:48|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@41)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@41)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@41))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@41))))
 :qid |Rolesandybpl.11845:41|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@42)))
 :qid |Rolesandybpl.11860:53|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@43)))
 :qid |Rolesandybpl.11874:53|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@44))))
 :qid |Rolesandybpl.11891:60|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@45))))
 :qid |Rolesandybpl.11908:60|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@46))))
 :qid |Rolesandybpl.11925:57|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@46))
)))
(assert (forall ((s@@47 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47) true)
 :qid |Rolesandybpl.14126:68|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@47))
)))
(assert (forall ((s@@48 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@48))))
 :qid |Rolesandybpl.14148:66|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@49))))
 :qid |Rolesandybpl.14174:66|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@50))))
 :qid |Rolesandybpl.14203:56|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@51))))
 :qid |Rolesandybpl.14233:56|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@52) true)
 :qid |Rolesandybpl.14567:31|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@52))
)))
(assert (forall ((s@@53 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@53) true)
 :qid |Rolesandybpl.14911:31|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@54)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@54)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@54))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@54))))
 :qid |Rolesandybpl.14930:35|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@54))
)))
(assert (forall ((s@@55 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@55)))
 :qid |Rolesandybpl.15351:45|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@56))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@56))))
 :qid |Rolesandybpl.15370:50|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@57)))
 :qid |Rolesandybpl.15385:52|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@58) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@58)))
 :qid |Rolesandybpl.15409:38|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@59) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@59)))
 :qid |Rolesandybpl.15423:39|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@59))
)))
(assert (forall ((s@@60 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@60))))
 :qid |Rolesandybpl.15450:65|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@60))
)))
(assert (forall ((s@@61 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@61)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@61))))
 :qid |Rolesandybpl.15835:60|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@62))))
 :qid |Rolesandybpl.15852:66|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@63)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@63)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@63))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@63))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@63))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@63))))
 :qid |Rolesandybpl.15881:50|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@64) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@64)))
 :qid |Rolesandybpl.15900:45|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@65)) true))
 :qid |Rolesandybpl.16219:87|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@66)))
 :qid |Rolesandybpl.16431:47|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@67)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@67))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@67))))
 :qid |Rolesandybpl.16451:58|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@68) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@68)))
 :qid |Rolesandybpl.16466:39|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@68))
)))
(assert (forall ((s@@69 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@69)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@69))))
 :qid |Rolesandybpl.16488:58|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@70))))
 :qid |Rolesandybpl.16505:58|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71) true)
 :qid |Rolesandybpl.16520:51|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@72))))
 :qid |Rolesandybpl.16537:60|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@73)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@73))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@73))))
 :qid |Rolesandybpl.16835:47|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@74)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@74))))
 :qid |Rolesandybpl.16857:63|
 :skolemid |405|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@75)))
 :qid |Rolesandybpl.16872:57|
 :skolemid |406|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@75))
)))
(assert (forall ((s@@76 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@76)))
 :qid |Rolesandybpl.16885:55|
 :skolemid |407|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@77)))
 :qid |Rolesandybpl.16899:55|
 :skolemid |408|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@77))
)))
(assert (forall ((s@@78 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@78)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@78))))
 :qid |Rolesandybpl.16916:54|
 :skolemid |409|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@79)))
 :qid |Rolesandybpl.16930:55|
 :skolemid |410|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@80)))
 :qid |Rolesandybpl.16944:57|
 :skolemid |411|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@81)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@81))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@81))))
 :qid |Rolesandybpl.16966:56|
 :skolemid |412|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@82))))
 :qid |Rolesandybpl.16991:52|
 :skolemid |413|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@83)))
 :qid |Rolesandybpl.17007:54|
 :skolemid |414|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@84)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@84))))
 :qid |Rolesandybpl.17879:47|
 :skolemid |415|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@85)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@85))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@85))))
 :qid |Rolesandybpl.17903:47|
 :skolemid |416|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@86)))
 :qid |Rolesandybpl.18144:49|
 :skolemid |417|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@87)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@87))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@87))))
 :qid |Rolesandybpl.18187:49|
 :skolemid |418|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@88)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@88))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@88))))
 :qid |Rolesandybpl.18216:48|
 :skolemid |419|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@89)))
 :qid |Rolesandybpl.18511:47|
 :skolemid |420|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@89))
)))
(assert (forall ((v@@25 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@25)))
 (and (= (seq.len r@@0) (seq.len v@@25)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len r@@0))) (= (seq.nth r@@0 i@@30) (seq.nth v@@25 (- (- (seq.len v@@25) i@@30) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@30))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@25))
)))
(assert (forall ((v@@26 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_75046 v@@26)))
 (and (= (seq.len r@@1) (seq.len v@@26)) (forall ((i@@31 Int) ) (!  (=> (and (>= i@@31 0) (< i@@31 (seq.len r@@1))) (= (seq.nth r@@1 i@@31) (seq.nth v@@26 (- (- (seq.len v@@26) i@@31) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@31))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_75046 v@@26))
)))
(assert (forall ((v@@27 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_74061 v@@27)))
 (and (= (seq.len r@@2) (seq.len v@@27)) (forall ((i@@32 Int) ) (!  (=> (and (>= i@@32 0) (< i@@32 (seq.len r@@2))) (= (seq.nth r@@2 i@@32) (seq.nth v@@27 (- (- (seq.len v@@27) i@@32) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@32))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_74061 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_74258 v@@28)))
 (and (= (seq.len r@@3) (seq.len v@@28)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@3))) (= (seq.nth r@@3 i@@33) (seq.nth v@@28 (- (- (seq.len v@@28) i@@33) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@33))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_74258 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_74455 v@@29)))
 (and (= (seq.len r@@4) (seq.len v@@29)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@4))) (= (seq.nth r@@4 i@@34) (seq.nth v@@29 (- (- (seq.len v@@29) i@@34) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@34))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_74455 v@@29))
)))
(assert (forall ((v@@30 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_75243 v@@30)))
 (and (= (seq.len r@@5) (seq.len v@@30)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@5))) (= (seq.nth r@@5 i@@35) (seq.nth v@@30 (- (- (seq.len v@@30) i@@35) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@35))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_75243 v@@30))
)))
(assert (forall ((v@@31 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_74849 v@@31)))
 (and (= (seq.len r@@6) (seq.len v@@31)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@6))) (= (seq.nth r@@6 i@@36) (seq.nth v@@31 (- (- (seq.len v@@31) i@@36) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@36))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_74849 v@@31))
)))
(assert (forall ((v@@32 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_74652 v@@32)))
 (and (= (seq.len r@@7) (seq.len v@@32)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@7))) (= (seq.nth r@@7 i@@37) (seq.nth v@@32 (- (- (seq.len v@@32) i@@37) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@37))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_74652 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_73864 v@@33)))
 (and (= (seq.len r@@8) (seq.len v@@33)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@8))) (= (seq.nth r@@8 i@@38) (seq.nth v@@33 (- (- (seq.len v@@33) i@@38) 1))))
 :qid |Rolesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@38))
))))
 :qid |Rolesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_73864 v@@33))
)))
(assert (forall ((|l#0| Bool) (i@@39 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39) |l#0|)
 :qid |Rolesandybpl.245:54|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@39))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_83261|) (|l#1| |T@[$1_Event_EventHandle]Multiset_83261|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_83261| (|Select__T@[$1_Event_EventHandle]Multiset_83261_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_83261| (|Select__T@[$1_Event_EventHandle]Multiset_83261_| |l#1| handle@@0))))
(Multiset_83261 (|lambda#3| (|v#Multiset_83261| (|Select__T@[$1_Event_EventHandle]Multiset_83261_| |l#0@@0| handle@@0)) (|v#Multiset_83261| (|Select__T@[$1_Event_EventHandle]Multiset_83261_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Rolesandybpl.2553:13|
 :skolemid |497|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@34 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@34) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@34)))
 :qid |Rolesandybpl.124:29|
 :skolemid |498|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@34))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_112747)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_112747)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_112252)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_113696)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_112252)
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
(declare-fun $t14 () T@$Mutation_112747)
(declare-fun $t14@0 () T@$Mutation_112747)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_112747)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 273460) (let ((L5_correct  (=> (and (= $t24@0 ($Mutation_12329 (|l#$Mutation_112747| $t14@1) (seq.++ (|p#$Mutation_112747| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_112747| $t14@1)))) (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2))) (=> (and (and (= $t14@2 ($Mutation_112747 (|l#$Mutation_112747| $t14@1) (|p#$Mutation_112747| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1)))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 173345816)) 0)))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 186537453)) 1))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_112252 (|Store__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_112747| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_112747| $t14@2)) (|v#$Mutation_112747| $t14@2)))))) (and (=> (= (ControlFlow 0 192848) (- 0 274096)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 173345816)) 0))) (and (=> (= (ControlFlow 0 192848) (- 0 274110)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 186537453)) 1))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 192848) (- 0 274137)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 192848) (- 0 274147)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 192848) (- 0 274161)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 192848) (- 0 274185)) (= $t25 _$t2)))))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 192906) 192848)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 192676) 192848)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 192672) (- 0 274229)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 192672) (- 0 274266)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 192902) 192672))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 192886) 192906) anon25_Then_correct) (=> (= (ControlFlow 0 192886) 192902) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 192556) 192672))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 192540) 192676) anon26_Then_correct) (=> (= (ControlFlow 0 192540) 192556) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 192504) 192540)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 192510) 192504)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_112747| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_112747| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 192458) 192886) anon24_Then_correct) (=> (= (ControlFlow 0 192458) 192510) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 192920) 192672))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 192972) 192920) anon23_Then_correct) (=> (= (ControlFlow 0 192972) 192458) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 192970) 192972)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_112747 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 192412) 192920) anon23_Then_correct) (=> (= (ControlFlow 0 192412) 192458) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 192390) (- 0 273758)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 192390) 192970) anon22_Then_correct) (=> (= (ControlFlow 0 192390) 192412) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 193002) 192672))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 192370) 193002) anon21_Then_correct) (=> (= (ControlFlow 0 192370) 192390) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 193028) 192672))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |Rolesandybpl.3763:20|
 :skolemid |108|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 192348) 193028) anon20_Then_correct) (=> (= (ControlFlow 0 192348) 192370) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_83261| stream@@0) 0) (forall ((v@@35 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@0) v@@35) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 192236) 192348)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_112747| $t7)) 0) (= (seq.len (|p#$Mutation_112747| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 192246) 192236))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 273460) 192246) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@0 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $t6 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t18 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t14@0@@0 () Int)
(declare-fun $t13@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t13 () T@$1_Roles_RoleId)
(declare-fun $t9@@0 () Int)
(declare-fun $t13@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun $t10@0 () Bool)
(declare-fun $t12@@0 () Int)
(declare-fun $t7@@0 () Bool)
(declare-fun $t8 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_diem_root$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 274515) (let ((anon18_Then_correct  (=> $t16@0 (and (=> (= (ControlFlow 0 193951) (- 0 274894)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 193951) (- 0 274908)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 193951) (- 0 274920)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6)) 0))) (and (=> (= (ControlFlow 0 193951) (- 0 274938)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 193951) (- 0 274952)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@0)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@0)) 0))))
 :qid |Rolesandybpl.4387:15|
 :skolemid |111|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@1)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@1)) 0))))
 :qid |Rolesandybpl.4387:15|
 :skolemid |111|
)) (and (=> (= (ControlFlow 0 193951) (- 0 275001)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@2)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@2)) 1))))
 :qid |Rolesandybpl.4391:15|
 :skolemid |112|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@3)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@3)) 1))))
 :qid |Rolesandybpl.4391:15|
 :skolemid |112|
)) (and (=> (= (ControlFlow 0 193951) (- 0 275050)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@4)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@4)) 3))))
 :qid |Rolesandybpl.4395:15|
 :skolemid |113|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@5)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@5)) 3))))
 :qid |Rolesandybpl.4395:15|
 :skolemid |113|
)) (and (=> (= (ControlFlow 0 193951) (- 0 275099)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@6)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@6)) 4))))
 :qid |Rolesandybpl.4399:15|
 :skolemid |114|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@7)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@7)) 4))))
 :qid |Rolesandybpl.4399:15|
 :skolemid |114|
)) (and (=> (= (ControlFlow 0 193951) (- 0 275148)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@8)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@8)) 2))))
 :qid |Rolesandybpl.4403:15|
 :skolemid |115|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@9)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@9)) 2))))
 :qid |Rolesandybpl.4403:15|
 :skolemid |115|
)) (and (=> (= (ControlFlow 0 193951) (- 0 275197)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@10)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@10)) 5))))
 :qid |Rolesandybpl.4407:15|
 :skolemid |116|
))) (=> (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@11)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@11)) 5))))
 :qid |Rolesandybpl.4407:15|
 :skolemid |116|
)) (=> (= (ControlFlow 0 193951) (- 0 275246)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@12)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@12)) 6))))
 :qid |Rolesandybpl.4411:15|
 :skolemid |117|
))))))))))))))))))))))))))
(let ((L5_correct@@0  (and (=> (= (ControlFlow 0 193442) (- 0 275330)) (or (or (or (not (= (|$addr#$signer| _$t0@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (or (or (or (not (= (|$addr#$signer| _$t0@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6)) 0))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (=> (= (ControlFlow 0 193442) (- 0 275374)) (or (or (or (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t8@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6)) (= 5 $t8@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6)) 0)) (= 3 $t8@0))) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t8@0))))))))
(let ((anon18_Else_correct  (=> (and (and (not $t16@0) (= $t18 $t18)) (and (= $t8@0 $t18) (= (ControlFlow 0 193528) 193442))) L5_correct@@0)))
(let ((anon17_Else_correct  (=> (not $abort_flag@0@@0) (=> (and (and (and (= $t14@0@@0 (|$role_id#$1_Roles_RoleId| $t13@1)) (|$IsValid'u64'| 0)) (and (= $t16@0 (= $t14@0@@0 0)) (|$IsValid'u64'| 1))) (and (and (|$IsValid'u64'| $t18) (= $t18 3)) (and (= $t18 $t18) (= $t16@0 $t16@0)))) (and (=> (= (ControlFlow 0 193512) 193951) anon18_Then_correct) (=> (= (ControlFlow 0 193512) 193528) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t8@0 $abort_code@1@@0) (= (ControlFlow 0 193965) 193442))) L5_correct@@0)))
(let ((anon16_Then$1_correct  (=> (= $t13@1 $t13) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 194017) 193965) anon17_Then_correct) (=> (= (ControlFlow 0 194017) 193512) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@0)) (= (ControlFlow 0 194015) 194017)) anon16_Then$1_correct)))
(let ((anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@0) (=> (and (and (= $t13@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@0)) (= $t13@1 $t13@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 193460) 193965) anon17_Then_correct) (=> (= (ControlFlow 0 193460) 193512) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> $t10@0 (and (=> (= (ControlFlow 0 193446) 194015) anon16_Then_correct) (=> (= (ControlFlow 0 193446) 193460) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (not $t10@0) (= $t12@@0 $t12@@0)) (and (= $t8@0 $t12@@0) (= (ControlFlow 0 193306) 193442))) L5_correct@@0)))
(let ((anon14_Else_correct  (=> (and (not $t7@@0) (|$IsValid'address'| $t9@@0)) (=> (and (and (and (= $t9@@0 (|$addr#$signer| _$t0@@0)) (= $t9@@0 $t9@@0)) (and (= $t10@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@0)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@0) (= $t12@@0 5)) (and (= $t12@@0 $t12@@0) (= $t10@0 $t10@0)))) (and (=> (= (ControlFlow 0 193290) 193446) anon15_Then_correct) (=> (= (ControlFlow 0 193290) 193306) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> $t7@@0 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t8)) (= $t8 $t8)) (and (= $t8@0 $t8) (= (ControlFlow 0 194047) 193442))) L5_correct@@0))))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |Rolesandybpl.4187:20|
 :skolemid |110|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@0))
)) (= $t6 (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t7@@0  (not (= (|$addr#$signer| _$t0@@0) 173345816))))) (and (=> (= (ControlFlow 0 193228) 194047) anon14_Then_correct) (=> (= (ControlFlow 0 193228) 193290) anon14_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_83261| stream@@1) 0) (forall ((v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@1) v@@36) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 193152) 193228)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 274515) 193152) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t16@0@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t8@0@@0 () Int)
(declare-fun $t18@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t14@0@@1 () Int)
(declare-fun $t13@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t13@@0 () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $t13@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t10@0@@0 () Bool)
(declare-fun $t12@@1 () Int)
(declare-fun $t7@@1 () Bool)
(declare-fun $t8@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_treasury_compliance$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 275459) (let ((anon18_Then_correct@@0  (=> $t16@0@@0 (and (=> (= (ControlFlow 0 194924) (- 0 275844)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 194924) (- 0 275856)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (and (=> (= (ControlFlow 0 194924) (- 0 275874)) (not (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 186537453))) (and (=> (= (ControlFlow 0 194924) (- 0 275888)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@13)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@13)) 0))))
 :qid |Rolesandybpl.4672:15|
 :skolemid |119|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@14)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@14)) 0))))
 :qid |Rolesandybpl.4672:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 194924) (- 0 275937)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@15)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@15)) 1))))
 :qid |Rolesandybpl.4676:15|
 :skolemid |120|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@16)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@16)) 1))))
 :qid |Rolesandybpl.4676:15|
 :skolemid |120|
)) (and (=> (= (ControlFlow 0 194924) (- 0 275986)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@17)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@17)) 3))))
 :qid |Rolesandybpl.4680:15|
 :skolemid |121|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@18)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@18)) 3))))
 :qid |Rolesandybpl.4680:15|
 :skolemid |121|
)) (and (=> (= (ControlFlow 0 194924) (- 0 276035)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@19)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@19)) 4))))
 :qid |Rolesandybpl.4684:15|
 :skolemid |122|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@20)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@20)) 4))))
 :qid |Rolesandybpl.4684:15|
 :skolemid |122|
)) (and (=> (= (ControlFlow 0 194924) (- 0 276084)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@21)) 2))))
 :qid |Rolesandybpl.4688:15|
 :skolemid |123|
))) (=> (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@22)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@22)) 2))))
 :qid |Rolesandybpl.4688:15|
 :skolemid |123|
)) (and (=> (= (ControlFlow 0 194924) (- 0 276133)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@23)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@23)) 5))))
 :qid |Rolesandybpl.4692:15|
 :skolemid |124|
))) (=> (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@24)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@24)) 5))))
 :qid |Rolesandybpl.4692:15|
 :skolemid |124|
)) (=> (= (ControlFlow 0 194924) (- 0 276182)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@25)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@25)) 6))))
 :qid |Rolesandybpl.4696:15|
 :skolemid |125|
))))))))))))))))))))))))
(let ((L5_correct@@1  (and (=> (= (ControlFlow 0 194425) (- 0 276266)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) 1))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (=> (= (ControlFlow 0 194425) (- 0 276299)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t8@0@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@0)) 1)) (= 3 $t8@0@@0))) (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t8@0@@0))))))))
(let ((anon18_Else_correct@@0  (=> (and (and (not $t16@0@@0) (= $t18@@0 $t18@@0)) (and (= $t8@0@@0 $t18@@0) (= (ControlFlow 0 194515) 194425))) L5_correct@@1)))
(let ((anon17_Else_correct@@0  (=> (not $abort_flag@0@@1) (=> (and (and (and (= $t14@0@@1 (|$role_id#$1_Roles_RoleId| $t13@1@@0)) (|$IsValid'u64'| 1)) (and (= $t16@0@@0 (= $t14@0@@1 1)) (|$IsValid'u64'| 2))) (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 3)) (and (= $t18@@0 $t18@@0) (= $t16@0@@0 $t16@0@@0)))) (and (=> (= (ControlFlow 0 194499) 194924) anon18_Then_correct@@0) (=> (= (ControlFlow 0 194499) 194515) anon18_Else_correct@@0))))))
(let ((anon17_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t8@0@@0 $abort_code@1@@1) (= (ControlFlow 0 194938) 194425))) L5_correct@@1)))
(let ((anon16_Then$1_correct@@0  (=> (= $t13@1@@0 $t13@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 194990) 194938) anon17_Then_correct@@0) (=> (= (ControlFlow 0 194990) 194499) anon17_Else_correct@@0))))))
(let ((anon16_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@1)) (= (ControlFlow 0 194988) 194990)) anon16_Then$1_correct@@0)))
(let ((anon16_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@1) (=> (and (and (= $t13@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@1)) (= $t13@1@@0 $t13@0@@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 194443) 194938) anon17_Then_correct@@0) (=> (= (ControlFlow 0 194443) 194499) anon17_Else_correct@@0))))))
(let ((anon15_Then_correct@@0  (=> $t10@0@@0 (and (=> (= (ControlFlow 0 194429) 194988) anon16_Then_correct@@0) (=> (= (ControlFlow 0 194429) 194443) anon16_Else_correct@@0)))))
(let ((anon15_Else_correct@@0  (=> (and (and (not $t10@0@@0) (= $t12@@1 $t12@@1)) (and (= $t8@0@@0 $t12@@1) (= (ControlFlow 0 194321) 194425))) L5_correct@@1)))
(let ((anon14_Else_correct@@0  (=> (and (not $t7@@1) (|$IsValid'address'| $t9@@1)) (=> (and (and (and (= $t9@@1 (|$addr#$signer| _$t0@@1)) (= $t9@@1 $t9@@1)) (and (= $t10@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t9@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@1) (= $t12@@1 5)) (and (= $t12@@1 $t12@@1) (= $t10@0@@0 $t10@0@@0)))) (and (=> (= (ControlFlow 0 194305) 194429) anon15_Then_correct@@0) (=> (= (ControlFlow 0 194305) 194321) anon15_Else_correct@@0))))))
(let ((anon14_Then_correct@@0  (=> $t7@@1 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t8@@0)) (= $t8@@0 $t8@@0)) (and (= $t8@0@@0 $t8@@0) (= (ControlFlow 0 195020) 194425))) L5_correct@@1))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |Rolesandybpl.4475:20|
 :skolemid |118|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@1))
)) (= $t6@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= $t7@@1  (not (= (|$addr#$signer| _$t0@@1) 186537453))))) (and (=> (= (ControlFlow 0 194243) 195020) anon14_Then_correct@@0) (=> (= (ControlFlow 0 194243) 194305) anon14_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_83261| stream@@2) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@2) v@@37) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 194167) 194243)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 275459) 194167) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@2 () Bool)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t10@0@@1 () Int)
(declare-fun $t16 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t12@0 () Int)
(declare-fun $t11@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t11@@0 () T@$1_Roles_RoleId)
(declare-fun $t6@@1 () Int)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t9@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 276366) (let ((anon15_Then_correct@@1  (=> $t14@0@@2 (and (=> (= (ControlFlow 0 195826) (- 0 276689)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)))) (and (=> (= (ControlFlow 0 195826) (- 0 276702)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) 6))) (and (=> (= (ControlFlow 0 195826) (- 0 276721)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@26)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@26)) 0))))
 :qid |Rolesandybpl.4915:15|
 :skolemid |127|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@27)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@27)) 0))))
 :qid |Rolesandybpl.4915:15|
 :skolemid |127|
)) (and (=> (= (ControlFlow 0 195826) (- 0 276770)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@28)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@28)) 1))))
 :qid |Rolesandybpl.4919:15|
 :skolemid |128|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@29)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@29)) 1))))
 :qid |Rolesandybpl.4919:15|
 :skolemid |128|
)) (and (=> (= (ControlFlow 0 195826) (- 0 276819)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@30)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@30)) 3))))
 :qid |Rolesandybpl.4923:15|
 :skolemid |129|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@31)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@31)) 3))))
 :qid |Rolesandybpl.4923:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 195826) (- 0 276868)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@32)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@32)) 4))))
 :qid |Rolesandybpl.4927:15|
 :skolemid |130|
))) (=> (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@33)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@33)) 4))))
 :qid |Rolesandybpl.4927:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 195826) (- 0 276917)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@34)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@34)) 2))))
 :qid |Rolesandybpl.4931:15|
 :skolemid |131|
))) (=> (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@35)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@35)) 2))))
 :qid |Rolesandybpl.4931:15|
 :skolemid |131|
)) (and (=> (= (ControlFlow 0 195826) (- 0 276966)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@36)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@36)) 5))))
 :qid |Rolesandybpl.4935:15|
 :skolemid |132|
))) (=> (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@37)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@37)) 5))))
 :qid |Rolesandybpl.4935:15|
 :skolemid |132|
)) (=> (= (ControlFlow 0 195826) (- 0 277015)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@38)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@38)) 6))))
 :qid |Rolesandybpl.4939:15|
 :skolemid |133|
))))))))))))))))))))))
(let ((L5_correct@@2  (and (=> (= (ControlFlow 0 195337) (- 0 277095)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) 6)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) 6))) (=> (= (ControlFlow 0 195337) (- 0 277119)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (= 5 $t10@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) 6)) (= 3 $t10@0@@1))))))))
(let ((anon15_Else_correct@@1  (=> (and (and (not $t14@0@@2) (= $t16 $t16)) (and (= $t10@0@@1 $t16) (= (ControlFlow 0 195427) 195337))) L5_correct@@2)))
(let ((anon14_Else_correct@@1  (=> (not $abort_flag@0@@2) (=> (and (and (and (= $t12@0 (|$role_id#$1_Roles_RoleId| $t11@1)) (|$IsValid'u64'| 6)) (and (= $t14@0@@2 (= $t12@0 6)) (|$IsValid'u64'| 9))) (and (and (|$IsValid'u64'| $t16) (= $t16 3)) (and (= $t16 $t16) (= $t14@0@@2 $t14@0@@2)))) (and (=> (= (ControlFlow 0 195411) 195826) anon15_Then_correct@@1) (=> (= (ControlFlow 0 195411) 195427) anon15_Else_correct@@1))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t10@0@@1 $abort_code@1@@2) (= (ControlFlow 0 195840) 195337))) L5_correct@@2)))
(let ((anon13_Then$1_correct  (=> (= $t11@1 $t11@@0) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 195892) 195840) anon14_Then_correct@@1) (=> (= (ControlFlow 0 195892) 195411) anon14_Else_correct@@1))))))
(let ((anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@1)) (= (ControlFlow 0 195890) 195892)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@1) (=> (and (and (= $t11@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@1)) (= $t11@1 $t11@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 195355) 195840) anon14_Then_correct@@1) (=> (= (ControlFlow 0 195355) 195411) anon14_Else_correct@@1))))))
(let ((anon12_Then_correct  (=> $t7@0 (and (=> (= (ControlFlow 0 195341) 195890) anon13_Then_correct) (=> (= (ControlFlow 0 195341) 195355) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (and (not $t7@0) (= $t9@@2 $t9@@2)) (and (= $t10@0@@1 $t9@@2) (= (ControlFlow 0 195257) 195337))) L5_correct@@2)))
(let ((anon0$1_correct@@2  (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |Rolesandybpl.4758:20|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= _$t0@@2 _$t0@@2) (|$IsValid'address'| $t6@@1))) (=> (and (and (and (= $t6@@1 (|$addr#$signer| _$t0@@2)) (= $t6@@1 $t6@@1)) (and (= $t7@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@2) (= $t9@@2 5)) (and (= $t9@@2 $t9@@2) (= $t7@0 $t7@0)))) (and (=> (= (ControlFlow 0 195241) 195341) anon12_Then_correct) (=> (= (ControlFlow 0 195241) 195257) anon12_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_83261| stream@@3) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@3) v@@38) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 195137) 195241)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 276366) 195137) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t15@0@@0 () Bool)
(declare-fun $t6@@2 () Int)
(declare-fun $t11@0@@1 () Int)
(declare-fun $t17 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $t13@0@@1 () Int)
(declare-fun $t12@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t12@@2 () T@$1_Roles_RoleId)
(declare-fun $t7@@2 () Int)
(declare-fun $t12@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t8@0@@1 () Bool)
(declare-fun $t10@@0 () Int)
(declare-fun _$t0@@3 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 277170) (let ((anon15_Then_correct@@2  (=> $t15@0@@0 (and (=> (= (ControlFlow 0 196698) (- 0 277506)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2))) (and (=> (= (ControlFlow 0 196698) (- 0 277518)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) 2)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) 2))) (and (=> (= (ControlFlow 0 196698) (- 0 277536)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@39)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@39)) 0))))
 :qid |Rolesandybpl.5164:15|
 :skolemid |135|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@40)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@40)) 0))))
 :qid |Rolesandybpl.5164:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 196698) (- 0 277585)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@41)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@41)) 1))))
 :qid |Rolesandybpl.5168:15|
 :skolemid |136|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@42)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@42)) 1))))
 :qid |Rolesandybpl.5168:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 196698) (- 0 277634)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@43)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |Rolesandybpl.5172:15|
 :skolemid |137|
))) (=> (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@44)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@44)) 3))))
 :qid |Rolesandybpl.5172:15|
 :skolemid |137|
)) (and (=> (= (ControlFlow 0 196698) (- 0 277683)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@45)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@45)) 4))))
 :qid |Rolesandybpl.5176:15|
 :skolemid |138|
))) (=> (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@46)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@46)) 4))))
 :qid |Rolesandybpl.5176:15|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 196698) (- 0 277732)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@47)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@47)) 2))))
 :qid |Rolesandybpl.5180:15|
 :skolemid |139|
))) (=> (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@48)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@48)) 2))))
 :qid |Rolesandybpl.5180:15|
 :skolemid |139|
)) (and (=> (= (ControlFlow 0 196698) (- 0 277781)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@49)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@49)) 5))))
 :qid |Rolesandybpl.5184:15|
 :skolemid |140|
))) (=> (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@50)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@50)) 5))))
 :qid |Rolesandybpl.5184:15|
 :skolemid |140|
)) (=> (= (ControlFlow 0 196698) (- 0 277830)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@51)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@51)) 6))))
 :qid |Rolesandybpl.5188:15|
 :skolemid |141|
))))))))))))))))))))))
(let ((L5_correct@@3  (and (=> (= (ControlFlow 0 196213) (- 0 277910)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) 2)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) 2))) (=> (= (ControlFlow 0 196213) (- 0 277932)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) (= 5 $t11@0@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@2)) 2)) (= 3 $t11@0@@1))))))))
(let ((anon15_Else_correct@@2  (=> (and (and (not $t15@0@@0) (= $t17 $t17)) (and (= $t11@0@@1 $t17) (= (ControlFlow 0 196303) 196213))) L5_correct@@3)))
(let ((anon14_Else_correct@@2  (=> (not $abort_flag@0@@3) (=> (and (and (and (= $t13@0@@1 (|$role_id#$1_Roles_RoleId| $t12@1)) (|$IsValid'u64'| 2)) (and (= $t15@0@@0 (= $t13@0@@1 2)) (|$IsValid'u64'| 6))) (and (and (|$IsValid'u64'| $t17) (= $t17 3)) (and (= $t17 $t17) (= $t15@0@@0 $t15@0@@0)))) (and (=> (= (ControlFlow 0 196287) 196698) anon15_Then_correct@@2) (=> (= (ControlFlow 0 196287) 196303) anon15_Else_correct@@2))))))
(let ((anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t11@0@@1 $abort_code@1@@3) (= (ControlFlow 0 196712) 196213))) L5_correct@@3)))
(let ((anon13_Then$1_correct@@0  (=> (= $t12@1 $t12@@2) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 196764) 196712) anon14_Then_correct@@2) (=> (= (ControlFlow 0 196764) 196287) anon14_Else_correct@@2))))))
(let ((anon13_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@2)) (= (ControlFlow 0 196762) 196764)) anon13_Then$1_correct@@0)))
(let ((anon13_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@2) (=> (and (and (= $t12@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@2)) (= $t12@1 $t12@0@@0)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 196231) 196712) anon14_Then_correct@@2) (=> (= (ControlFlow 0 196231) 196287) anon14_Else_correct@@2))))))
(let ((anon12_Then_correct@@0  (=> $t8@0@@1 (and (=> (= (ControlFlow 0 196217) 196762) anon13_Then_correct@@0) (=> (= (ControlFlow 0 196217) 196231) anon13_Else_correct@@0)))))
(let ((anon12_Else_correct@@0  (=> (and (and (not $t8@0@@1) (= $t10@@0 $t10@@0)) (and (= $t11@0@@1 $t10@@0) (= (ControlFlow 0 196141) 196213))) L5_correct@@3)))
(let ((anon0$1_correct@@3  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (=> (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |Rolesandybpl.5002:20|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@3))
)) (= $t6@@2 (|$addr#$signer| _$t0@@3))) (and (= _$t0@@3 _$t0@@3) (|$IsValid'address'| $t7@@2))) (=> (and (and (and (= $t7@@2 (|$addr#$signer| _$t0@@3)) (= $t7@@2 $t7@@2)) (and (= $t8@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t10@@0) (= $t10@@0 5)) (and (= $t10@@0 $t10@@0) (= $t8@0@@1 $t8@0@@1)))) (and (=> (= (ControlFlow 0 196125) 196217) anon12_Then_correct@@0) (=> (= (ControlFlow 0 196125) 196141) anon12_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_83261| stream@@4) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@4) v@@39) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 196009) 196125)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 277170) 196009) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t5@0 () Bool)
(declare-fun $t8@@1 () Int)
(declare-fun $t9@@3 () Int)
(declare-fun $t14@0@@3 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t18@0@@0 () Bool)
(declare-fun $t21@0 () Bool)
(declare-fun $t16@0@@1 () Int)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t15@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t15 () T@$1_Roles_RoleId)
(declare-fun $t10@@1 () Int)
(declare-fun $t15@0@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun $t11@0@@2 () Bool)
(declare-fun $t13@@1 () Int)
(declare-fun _$t0@@4 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_or_child_vasp$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 277981) (let ((anon19_Then_correct  (=> $t5@0 (and (=> (= (ControlFlow 0 197627) (- 0 278399)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@1))) (and (=> (= (ControlFlow 0 197627) (- 0 278411)) (not (and (not (= $t9@@3 5)) (not (= $t9@@3 6))))) (=> (not (and (not (= $t9@@3 5)) (not (= $t9@@3 6)))) (and (=> (= (ControlFlow 0 197627) (- 0 278434)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@52)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@52)) 0))))
 :qid |Rolesandybpl.5472:15|
 :skolemid |143|
))) (=> (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@53)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@53)) 0))))
 :qid |Rolesandybpl.5472:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 197627) (- 0 278483)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@54)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@54)) 1))))
 :qid |Rolesandybpl.5476:15|
 :skolemid |144|
))) (=> (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@55)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@55)) 1))))
 :qid |Rolesandybpl.5476:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 197627) (- 0 278532)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@56)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@56)) 3))))
 :qid |Rolesandybpl.5480:15|
 :skolemid |145|
))) (=> (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@57)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@57)) 3))))
 :qid |Rolesandybpl.5480:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 197627) (- 0 278581)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@58)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@58)) 4))))
 :qid |Rolesandybpl.5484:15|
 :skolemid |146|
))) (=> (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@59)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@59)) 4))))
 :qid |Rolesandybpl.5484:15|
 :skolemid |146|
)) (and (=> (= (ControlFlow 0 197627) (- 0 278630)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@60)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@60)) 2))))
 :qid |Rolesandybpl.5488:15|
 :skolemid |147|
))) (=> (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@61)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@61)) 2))))
 :qid |Rolesandybpl.5488:15|
 :skolemid |147|
)) (and (=> (= (ControlFlow 0 197627) (- 0 278679)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@62)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@62)) 5))))
 :qid |Rolesandybpl.5492:15|
 :skolemid |148|
))) (=> (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@63)) 5))))
 :qid |Rolesandybpl.5492:15|
 :skolemid |148|
)) (=> (= (ControlFlow 0 197627) (- 0 278728)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@64)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@64)) 6))))
 :qid |Rolesandybpl.5496:15|
 :skolemid |149|
))))))))))))))))))))))
(let ((L9_correct  (and (=> (= (ControlFlow 0 197102) (- 0 278808)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@1)) (and (not (= $t9@@3 5)) (not (= $t9@@3 6))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@1)) (and (not (= $t9@@3 5)) (not (= $t9@@3 6)))) (=> (= (ControlFlow 0 197102) (- 0 278835)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@1)) (= 5 $t14@0@@3)) (and (and (not (= $t9@@3 5)) (not (= $t9@@3 6))) (= 3 $t14@0@@3))))))))
(let ((anon19_Else_correct  (=> (and (and (not $t5@0) (= $t23@@0 $t23@@0)) (and (= $t14@0@@3 $t23@@0) (= (ControlFlow 0 197228) 197102))) L9_correct)))
(let ((L5_correct@@4  (=> (|$IsValid'u64'| 4) (=> (and (and (|$IsValid'u64'| $t23@@0) (= $t23@@0 3)) (and (= $t23@@0 $t23@@0) (= $t5@0 $t5@0))) (and (=> (= (ControlFlow 0 197212) 197627) anon19_Then_correct) (=> (= (ControlFlow 0 197212) 197228) anon19_Else_correct))))))
(let ((anon18_Else_correct@@1  (=> (and (not $t18@0@@0) (|$IsValid'u64'| 6)) (=> (and (and (= $t21@0 (= $t16@0@@1 6)) (= $t21@0 $t21@0)) (and (= $t5@0 $t21@0) (= (ControlFlow 0 197178) 197212))) L5_correct@@4))))
(let ((anon18_Then_correct@@1  (=> (and (and $t18@0@@0 (= true true)) (and (= $t5@0 true) (= (ControlFlow 0 197645) 197212))) L5_correct@@4)))
(let ((anon17_Else_correct@@1  (=> (not $abort_flag@0@@4) (=> (and (and (= $t16@0@@1 (|$role_id#$1_Roles_RoleId| $t15@1)) (= $t16@0@@1 $t16@0@@1)) (and (|$IsValid'u64'| 5) (= $t18@0@@0 (= $t16@0@@1 5)))) (and (=> (= (ControlFlow 0 197152) 197645) anon18_Then_correct@@1) (=> (= (ControlFlow 0 197152) 197178) anon18_Else_correct@@1))))))
(let ((anon17_Then_correct@@1  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t14@0@@3 $abort_code@1@@4) (= (ControlFlow 0 197659) 197102))) L9_correct)))
(let ((anon16_Then$1_correct@@1  (=> (= $t15@1 $t15) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 197711) 197659) anon17_Then_correct@@1) (=> (= (ControlFlow 0 197711) 197152) anon17_Else_correct@@1))))))
(let ((anon16_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@1)) (= (ControlFlow 0 197709) 197711)) anon16_Then$1_correct@@1)))
(let ((anon16_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@1) (=> (and (and (= $t15@0@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@1)) (= $t15@1 $t15@0@@1)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 197120) 197659) anon17_Then_correct@@1) (=> (= (ControlFlow 0 197120) 197152) anon17_Else_correct@@1))))))
(let ((anon15_Then_correct@@3  (=> $t11@0@@2 (and (=> (= (ControlFlow 0 197106) 197709) anon16_Then_correct@@1) (=> (= (ControlFlow 0 197106) 197120) anon16_Else_correct@@1)))))
(let ((anon15_Else_correct@@3  (=> (and (and (not $t11@0@@2) (= $t13@@1 $t13@@1)) (and (= $t14@0@@3 $t13@@1) (= (ControlFlow 0 197022) 197102))) L9_correct)))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |Rolesandybpl.5257:20|
 :skolemid |142|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@4))
))) (=> (and (and (= $t8@@1 (|$addr#$signer| _$t0@@4)) (= $t9@@3 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@1)))) (and (= _$t0@@4 _$t0@@4) (|$IsValid'address'| $t10@@1))) (=> (and (and (and (= $t10@@1 (|$addr#$signer| _$t0@@4)) (= $t10@@1 $t10@@1)) (and (= $t11@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@1)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t13@@1) (= $t13@@1 5)) (and (= $t13@@1 $t13@@1) (= $t11@0@@2 $t11@0@@2)))) (and (=> (= (ControlFlow 0 197006) 197106) anon15_Then_correct@@3) (=> (= (ControlFlow 0 197006) 197022) anon15_Else_correct@@3)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_83261| stream@@5) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@5) v@@40) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 196876) 197006)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 277981) 196876) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t5@0@@0 () Bool)
(declare-fun $t8@@2 () Int)
(declare-fun $t9@@4 () Int)
(declare-fun $t14@0@@4 () Int)
(declare-fun $t23@@1 () Int)
(declare-fun $t18@0@@1 () Bool)
(declare-fun $t21@0@@0 () Bool)
(declare-fun $t16@0@@2 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t15@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $t15@@0 () T@$1_Roles_RoleId)
(declare-fun $t10@@2 () Int)
(declare-fun $t15@0@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t11@0@@3 () Bool)
(declare-fun $t13@@2 () Int)
(declare-fun _$t0@@5 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_or_designated_dealer$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 278889) (let ((anon19_Then_correct@@0  (=> $t5@0@@0 (and (=> (= (ControlFlow 0 198572) (- 0 279307)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@2))) (and (=> (= (ControlFlow 0 198572) (- 0 279319)) (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (not (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (and (=> (= (ControlFlow 0 198572) (- 0 279342)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@65)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@65)) 0))))
 :qid |Rolesandybpl.5780:15|
 :skolemid |151|
))) (=> (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@66)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@66)) 0))))
 :qid |Rolesandybpl.5780:15|
 :skolemid |151|
)) (and (=> (= (ControlFlow 0 198572) (- 0 279391)) (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@67)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@67)) 1))))
 :qid |Rolesandybpl.5784:15|
 :skolemid |152|
))) (=> (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@68)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@68)) 1))))
 :qid |Rolesandybpl.5784:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 198572) (- 0 279440)) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@69)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@69)) 3))))
 :qid |Rolesandybpl.5788:15|
 :skolemid |153|
))) (=> (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@70)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@70)) 3))))
 :qid |Rolesandybpl.5788:15|
 :skolemid |153|
)) (and (=> (= (ControlFlow 0 198572) (- 0 279489)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@71)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |Rolesandybpl.5792:15|
 :skolemid |154|
))) (=> (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@72)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@72)) 4))))
 :qid |Rolesandybpl.5792:15|
 :skolemid |154|
)) (and (=> (= (ControlFlow 0 198572) (- 0 279538)) (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@73)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |Rolesandybpl.5796:15|
 :skolemid |155|
))) (=> (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@74)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@74)) 2))))
 :qid |Rolesandybpl.5796:15|
 :skolemid |155|
)) (and (=> (= (ControlFlow 0 198572) (- 0 279587)) (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@75)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@75)) 5))))
 :qid |Rolesandybpl.5800:15|
 :skolemid |156|
))) (=> (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@76)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@76)) 5))))
 :qid |Rolesandybpl.5800:15|
 :skolemid |156|
)) (=> (= (ControlFlow 0 198572) (- 0 279636)) (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@77)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@77)) 6))))
 :qid |Rolesandybpl.5804:15|
 :skolemid |157|
))))))))))))))))))))))
(let ((L9_correct@@0  (and (=> (= (ControlFlow 0 198047) (- 0 279716)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@2)) (and (not (= $t9@@4 5)) (not (= $t9@@4 2))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@2)) (and (not (= $t9@@4 5)) (not (= $t9@@4 2)))) (=> (= (ControlFlow 0 198047) (- 0 279743)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@2)) (= 5 $t14@0@@4)) (and (and (not (= $t9@@4 5)) (not (= $t9@@4 2))) (= 3 $t14@0@@4))))))))
(let ((anon19_Else_correct@@0  (=> (and (and (not $t5@0@@0) (= $t23@@1 $t23@@1)) (and (= $t14@0@@4 $t23@@1) (= (ControlFlow 0 198173) 198047))) L9_correct@@0)))
(let ((L5_correct@@5  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t23@@1) (= $t23@@1 3)) (and (= $t23@@1 $t23@@1) (= $t5@0@@0 $t5@0@@0))) (and (=> (= (ControlFlow 0 198157) 198572) anon19_Then_correct@@0) (=> (= (ControlFlow 0 198157) 198173) anon19_Else_correct@@0))))))
(let ((anon18_Else_correct@@2  (=> (and (not $t18@0@@1) (|$IsValid'u64'| 2)) (=> (and (and (= $t21@0@@0 (= $t16@0@@2 2)) (= $t21@0@@0 $t21@0@@0)) (and (= $t5@0@@0 $t21@0@@0) (= (ControlFlow 0 198123) 198157))) L5_correct@@5))))
(let ((anon18_Then_correct@@2  (=> (and (and $t18@0@@1 (= true true)) (and (= $t5@0@@0 true) (= (ControlFlow 0 198590) 198157))) L5_correct@@5)))
(let ((anon17_Else_correct@@2  (=> (not $abort_flag@0@@5) (=> (and (and (= $t16@0@@2 (|$role_id#$1_Roles_RoleId| $t15@1@@0)) (= $t16@0@@2 $t16@0@@2)) (and (|$IsValid'u64'| 5) (= $t18@0@@1 (= $t16@0@@2 5)))) (and (=> (= (ControlFlow 0 198097) 198590) anon18_Then_correct@@2) (=> (= (ControlFlow 0 198097) 198123) anon18_Else_correct@@2))))))
(let ((anon17_Then_correct@@2  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t14@0@@4 $abort_code@1@@5) (= (ControlFlow 0 198604) 198047))) L9_correct@@0)))
(let ((anon16_Then$1_correct@@2  (=> (= $t15@1@@0 $t15@@0) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 198656) 198604) anon17_Then_correct@@2) (=> (= (ControlFlow 0 198656) 198097) anon17_Else_correct@@2))))))
(let ((anon16_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@2)) (= (ControlFlow 0 198654) 198656)) anon16_Then$1_correct@@2)))
(let ((anon16_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@2) (=> (and (and (= $t15@0@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@2)) (= $t15@1@@0 $t15@0@@2)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 198065) 198604) anon17_Then_correct@@2) (=> (= (ControlFlow 0 198065) 198097) anon17_Else_correct@@2))))))
(let ((anon15_Then_correct@@4  (=> $t11@0@@3 (and (=> (= (ControlFlow 0 198051) 198654) anon16_Then_correct@@2) (=> (= (ControlFlow 0 198051) 198065) anon16_Else_correct@@2)))))
(let ((anon15_Else_correct@@4  (=> (and (and (not $t11@0@@3) (= $t13@@2 $t13@@2)) (and (= $t14@0@@4 $t13@@2) (= (ControlFlow 0 197967) 198047))) L9_correct@@0)))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |Rolesandybpl.5565:20|
 :skolemid |150|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@5))
))) (=> (and (and (= $t8@@2 (|$addr#$signer| _$t0@@5)) (= $t9@@4 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t8@@2)))) (and (= _$t0@@5 _$t0@@5) (|$IsValid'address'| $t10@@2))) (=> (and (and (and (= $t10@@2 (|$addr#$signer| _$t0@@5)) (= $t10@@2 $t10@@2)) (and (= $t11@0@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t10@@2)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t13@@2) (= $t13@@2 5)) (and (= $t13@@2 $t13@@2) (= $t11@0@@3 $t11@0@@3)))) (and (=> (= (ControlFlow 0 197951) 198051) anon15_Then_correct@@4) (=> (= (ControlFlow 0 197951) 197967) anon15_Else_correct@@4)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_83261| stream@@6) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@6) v@@41) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 197821) 197951)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 278889) 197821) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t15@0@@3 () Bool)
(declare-fun $t6@@3 () Int)
(declare-fun $t11@0@@4 () Int)
(declare-fun $t17@@0 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t13@0@@2 () Int)
(declare-fun $t12@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t12@@3 () T@$1_Roles_RoleId)
(declare-fun $t7@@3 () Int)
(declare-fun $t12@0@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t8@0@@2 () Bool)
(declare-fun $t10@@3 () Int)
(declare-fun _$t0@@6 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279797) (let ((anon15_Then_correct@@5  (=> $t15@0@@3 (and (=> (= (ControlFlow 0 199455) (- 0 280133)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3))) (and (=> (= (ControlFlow 0 199455) (- 0 280145)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) 5))) (and (=> (= (ControlFlow 0 199455) (- 0 280163)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@78)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@78)) 0))))
 :qid |Rolesandybpl.6029:15|
 :skolemid |159|
))) (=> (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@79)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@79)) 0))))
 :qid |Rolesandybpl.6029:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 199455) (- 0 280212)) (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@80)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@80)) 1))))
 :qid |Rolesandybpl.6033:15|
 :skolemid |160|
))) (=> (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@81)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@81)) 1))))
 :qid |Rolesandybpl.6033:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 199455) (- 0 280261)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@82)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@82)) 3))))
 :qid |Rolesandybpl.6037:15|
 :skolemid |161|
))) (=> (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@83)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@83)) 3))))
 :qid |Rolesandybpl.6037:15|
 :skolemid |161|
)) (and (=> (= (ControlFlow 0 199455) (- 0 280310)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@84)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@84)) 4))))
 :qid |Rolesandybpl.6041:15|
 :skolemid |162|
))) (=> (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@85)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@85)) 4))))
 :qid |Rolesandybpl.6041:15|
 :skolemid |162|
)) (and (=> (= (ControlFlow 0 199455) (- 0 280359)) (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@86)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@86)) 2))))
 :qid |Rolesandybpl.6045:15|
 :skolemid |163|
))) (=> (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@87)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@87)) 2))))
 :qid |Rolesandybpl.6045:15|
 :skolemid |163|
)) (and (=> (= (ControlFlow 0 199455) (- 0 280408)) (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@88)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@88)) 5))))
 :qid |Rolesandybpl.6049:15|
 :skolemid |164|
))) (=> (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@89)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@89)) 5))))
 :qid |Rolesandybpl.6049:15|
 :skolemid |164|
)) (=> (= (ControlFlow 0 199455) (- 0 280457)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@90)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@90)) 6))))
 :qid |Rolesandybpl.6053:15|
 :skolemid |165|
))))))))))))))))))))))
(let ((L5_correct@@6  (and (=> (= (ControlFlow 0 198970) (- 0 280537)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) 5)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) 5))) (=> (= (ControlFlow 0 198970) (- 0 280559)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) (= 5 $t11@0@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@3)) 5)) (= 3 $t11@0@@4))))))))
(let ((anon15_Else_correct@@5  (=> (and (and (not $t15@0@@3) (= $t17@@0 $t17@@0)) (and (= $t11@0@@4 $t17@@0) (= (ControlFlow 0 199060) 198970))) L5_correct@@6)))
(let ((anon14_Else_correct@@3  (=> (not $abort_flag@0@@6) (=> (and (and (and (= $t13@0@@2 (|$role_id#$1_Roles_RoleId| $t12@1@@0)) (|$IsValid'u64'| 5)) (and (= $t15@0@@3 (= $t13@0@@2 5)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t17@@0) (= $t17@@0 3)) (and (= $t17@@0 $t17@@0) (= $t15@0@@3 $t15@0@@3)))) (and (=> (= (ControlFlow 0 199044) 199455) anon15_Then_correct@@5) (=> (= (ControlFlow 0 199044) 199060) anon15_Else_correct@@5))))))
(let ((anon14_Then_correct@@3  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t11@0@@4 $abort_code@1@@6) (= (ControlFlow 0 199469) 198970))) L5_correct@@6)))
(let ((anon13_Then$1_correct@@1  (=> (= $t12@1@@0 $t12@@3) (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 199521) 199469) anon14_Then_correct@@3) (=> (= (ControlFlow 0 199521) 199044) anon14_Else_correct@@3))))))
(let ((anon13_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@3)) (= (ControlFlow 0 199519) 199521)) anon13_Then$1_correct@@1)))
(let ((anon13_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@3) (=> (and (and (= $t12@0@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@3)) (= $t12@1@@0 $t12@0@@1)) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 198988) 199469) anon14_Then_correct@@3) (=> (= (ControlFlow 0 198988) 199044) anon14_Else_correct@@3))))))
(let ((anon12_Then_correct@@1  (=> $t8@0@@2 (and (=> (= (ControlFlow 0 198974) 199519) anon13_Then_correct@@1) (=> (= (ControlFlow 0 198974) 198988) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not $t8@0@@2) (= $t10@@3 $t10@@3)) (and (= $t11@0@@4 $t10@@3) (= (ControlFlow 0 198898) 198970))) L5_correct@@6)))
(let ((anon0$1_correct@@6  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |Rolesandybpl.5867:20|
 :skolemid |158|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t6@@3 (|$addr#$signer| _$t0@@6))) (and (= _$t0@@6 _$t0@@6) (|$IsValid'address'| $t7@@3))) (=> (and (and (and (= $t7@@3 (|$addr#$signer| _$t0@@6)) (= $t7@@3 $t7@@3)) (and (= $t8@0@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t7@@3)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t10@@3) (= $t10@@3 5)) (and (= $t10@@3 $t10@@3) (= $t8@0@@2 $t8@0@@2)))) (and (=> (= (ControlFlow 0 198882) 198974) anon12_Then_correct@@1) (=> (= (ControlFlow 0 198882) 198898) anon12_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_83261| stream@@7) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@7) v@@42) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 198766) 198882)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 279797) 198766) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@5 () Bool)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $t10@0@@2 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $t12@0@@2 () Int)
(declare-fun $t11@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t11@@1 () T@$1_Roles_RoleId)
(declare-fun $t6@@4 () Int)
(declare-fun $t11@0@@5 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun $t7@0@@0 () Bool)
(declare-fun $t9@@5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 280608) (let ((anon15_Then_correct@@6  (=> $t14@0@@5 (and (=> (= (ControlFlow 0 200322) (- 0 280931)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7)))) (and (=> (= (ControlFlow 0 200322) (- 0 280944)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) 3)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) 3))) (and (=> (= (ControlFlow 0 200322) (- 0 280963)) (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@91)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@91)) 0))))
 :qid |Rolesandybpl.6272:15|
 :skolemid |167|
))) (=> (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@92)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@92)) 0))))
 :qid |Rolesandybpl.6272:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 200322) (- 0 281012)) (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@93)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@93)) 1))))
 :qid |Rolesandybpl.6276:15|
 :skolemid |168|
))) (=> (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@94)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@94)) 1))))
 :qid |Rolesandybpl.6276:15|
 :skolemid |168|
)) (and (=> (= (ControlFlow 0 200322) (- 0 281061)) (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@95)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@95)) 3))))
 :qid |Rolesandybpl.6280:15|
 :skolemid |169|
))) (=> (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@96)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@96)) 3))))
 :qid |Rolesandybpl.6280:15|
 :skolemid |169|
)) (and (=> (= (ControlFlow 0 200322) (- 0 281110)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@97)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@97)) 4))))
 :qid |Rolesandybpl.6284:15|
 :skolemid |170|
))) (=> (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@98)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@98)) 4))))
 :qid |Rolesandybpl.6284:15|
 :skolemid |170|
)) (and (=> (= (ControlFlow 0 200322) (- 0 281159)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@99)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@99)) 2))))
 :qid |Rolesandybpl.6288:15|
 :skolemid |171|
))) (=> (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@100)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@100)) 2))))
 :qid |Rolesandybpl.6288:15|
 :skolemid |171|
)) (and (=> (= (ControlFlow 0 200322) (- 0 281208)) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@101)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@101)) 5))))
 :qid |Rolesandybpl.6292:15|
 :skolemid |172|
))) (=> (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@102)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@102) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@102)) 5))))
 :qid |Rolesandybpl.6292:15|
 :skolemid |172|
)) (=> (= (ControlFlow 0 200322) (- 0 281257)) (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@103)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@103) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@103)) 6))))
 :qid |Rolesandybpl.6296:15|
 :skolemid |173|
))))))))))))))))))))))
(let ((L5_correct@@7  (and (=> (= (ControlFlow 0 199833) (- 0 281337)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) 3)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) 3))) (=> (= (ControlFlow 0 199833) (- 0 281361)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) (= 5 $t10@0@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@7))) 3)) (= 3 $t10@0@@2))))))))
(let ((anon15_Else_correct@@6  (=> (and (and (not $t14@0@@5) (= $t16@@0 $t16@@0)) (and (= $t10@0@@2 $t16@@0) (= (ControlFlow 0 199923) 199833))) L5_correct@@7)))
(let ((anon14_Else_correct@@4  (=> (not $abort_flag@0@@7) (=> (and (and (and (= $t12@0@@2 (|$role_id#$1_Roles_RoleId| $t11@1@@0)) (|$IsValid'u64'| 3)) (and (= $t14@0@@5 (= $t12@0@@2 3)) (|$IsValid'u64'| 7))) (and (and (|$IsValid'u64'| $t16@@0) (= $t16@@0 3)) (and (= $t16@@0 $t16@@0) (= $t14@0@@5 $t14@0@@5)))) (and (=> (= (ControlFlow 0 199907) 200322) anon15_Then_correct@@6) (=> (= (ControlFlow 0 199907) 199923) anon15_Else_correct@@6))))))
(let ((anon14_Then_correct@@4  (=> (and (and $abort_flag@0@@7 (= $abort_code@1@@7 $abort_code@1@@7)) (and (= $t10@0@@2 $abort_code@1@@7) (= (ControlFlow 0 200336) 199833))) L5_correct@@7)))
(let ((anon13_Then$1_correct@@2  (=> (= $t11@1@@0 $t11@@1) (=> (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 200388) 200336) anon14_Then_correct@@4) (=> (= (ControlFlow 0 200388) 199907) anon14_Else_correct@@4))))))
(let ((anon13_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@4)) (= (ControlFlow 0 200386) 200388)) anon13_Then$1_correct@@2)))
(let ((anon13_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@4) (=> (and (and (= $t11@0@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@4)) (= $t11@1@@0 $t11@0@@5)) (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7))) (and (=> (= (ControlFlow 0 199851) 200336) anon14_Then_correct@@4) (=> (= (ControlFlow 0 199851) 199907) anon14_Else_correct@@4))))))
(let ((anon12_Then_correct@@2  (=> $t7@0@@0 (and (=> (= (ControlFlow 0 199837) 200386) anon13_Then_correct@@2) (=> (= (ControlFlow 0 199837) 199851) anon13_Else_correct@@2)))))
(let ((anon12_Else_correct@@2  (=> (and (and (not $t7@0@@0) (= $t9@@5 $t9@@5)) (and (= $t10@0@@2 $t9@@5) (= (ControlFlow 0 199753) 199833))) L5_correct@@7)))
(let ((anon0$1_correct@@7  (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |Rolesandybpl.6115:20|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@7))
))) (and (= _$t0@@7 _$t0@@7) (|$IsValid'address'| $t6@@4))) (=> (and (and (and (= $t6@@4 (|$addr#$signer| _$t0@@7)) (= $t6@@4 $t6@@4)) (and (= $t7@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@4)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@5) (= $t9@@5 5)) (and (= $t9@@5 $t9@@5) (= $t7@0@@0 $t7@0@@0)))) (and (=> (= (ControlFlow 0 199737) 199837) anon12_Then_correct@@2) (=> (= (ControlFlow 0 199737) 199753) anon12_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_83261| stream@@8) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@8) v@@43) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 199633) 199737)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 280608) 199633) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t14@0@@6 () Bool)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t10@0@@3 () Int)
(declare-fun $t16@@1 () Int)
(declare-fun $abort_flag@0@@8 () Bool)
(declare-fun $t12@0@@3 () Int)
(declare-fun $t11@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@8 () Int)
(declare-fun $t11@@2 () T@$1_Roles_RoleId)
(declare-fun $t6@@5 () Int)
(declare-fun $t11@0@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@8 () Int)
(declare-fun $t7@0@@1 () Bool)
(declare-fun $t9@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_assert_validator_operator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281412) (let ((anon15_Then_correct@@7  (=> $t14@0@@6 (and (=> (= (ControlFlow 0 201194) (- 0 281735)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8)))) (and (=> (= (ControlFlow 0 201194) (- 0 281748)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (and (=> (= (ControlFlow 0 201194) (- 0 281767)) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@104)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@104) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@104)) 0))))
 :qid |Rolesandybpl.6515:15|
 :skolemid |175|
))) (=> (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@105)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@105) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@105)) 0))))
 :qid |Rolesandybpl.6515:15|
 :skolemid |175|
)) (and (=> (= (ControlFlow 0 201194) (- 0 281816)) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@106)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@106) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@106)) 1))))
 :qid |Rolesandybpl.6519:15|
 :skolemid |176|
))) (=> (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@107)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@107) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@107)) 1))))
 :qid |Rolesandybpl.6519:15|
 :skolemid |176|
)) (and (=> (= (ControlFlow 0 201194) (- 0 281865)) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@108)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@108) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@108)) 3))))
 :qid |Rolesandybpl.6523:15|
 :skolemid |177|
))) (=> (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@109)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@109) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@109)) 3))))
 :qid |Rolesandybpl.6523:15|
 :skolemid |177|
)) (and (=> (= (ControlFlow 0 201194) (- 0 281914)) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@110)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@110)) 4))))
 :qid |Rolesandybpl.6527:15|
 :skolemid |178|
))) (=> (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@111)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@111)) 4))))
 :qid |Rolesandybpl.6527:15|
 :skolemid |178|
)) (and (=> (= (ControlFlow 0 201194) (- 0 281963)) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@112)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@112)) 2))))
 :qid |Rolesandybpl.6531:15|
 :skolemid |179|
))) (=> (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@113)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@113)) 2))))
 :qid |Rolesandybpl.6531:15|
 :skolemid |179|
)) (and (=> (= (ControlFlow 0 201194) (- 0 282012)) (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@114)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@114) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@114)) 5))))
 :qid |Rolesandybpl.6535:15|
 :skolemid |180|
))) (=> (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@115)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@115) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@115)) 5))))
 :qid |Rolesandybpl.6535:15|
 :skolemid |180|
)) (=> (= (ControlFlow 0 201194) (- 0 282061)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@116)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@116) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@116)) 6))))
 :qid |Rolesandybpl.6539:15|
 :skolemid |181|
))))))))))))))))))))))
(let ((L5_correct@@8  (and (=> (= (ControlFlow 0 200705) (- 0 282141)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4))) (=> (= (ControlFlow 0 200705) (- 0 282165)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) (= 5 $t10@0@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@8))) 4)) (= 3 $t10@0@@3))))))))
(let ((anon15_Else_correct@@7  (=> (and (and (not $t14@0@@6) (= $t16@@1 $t16@@1)) (and (= $t10@0@@3 $t16@@1) (= (ControlFlow 0 200795) 200705))) L5_correct@@8)))
(let ((anon14_Else_correct@@5  (=> (not $abort_flag@0@@8) (=> (and (and (and (= $t12@0@@3 (|$role_id#$1_Roles_RoleId| $t11@1@@1)) (|$IsValid'u64'| 4)) (and (= $t14@0@@6 (= $t12@0@@3 4)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| $t16@@1) (= $t16@@1 3)) (and (= $t16@@1 $t16@@1) (= $t14@0@@6 $t14@0@@6)))) (and (=> (= (ControlFlow 0 200779) 201194) anon15_Then_correct@@7) (=> (= (ControlFlow 0 200779) 200795) anon15_Else_correct@@7))))))
(let ((anon14_Then_correct@@5  (=> (and (and $abort_flag@0@@8 (= $abort_code@1@@8 $abort_code@1@@8)) (and (= $t10@0@@3 $abort_code@1@@8) (= (ControlFlow 0 201208) 200705))) L5_correct@@8)))
(let ((anon13_Then$1_correct@@3  (=> (= $t11@1@@1 $t11@@2) (=> (and (= $abort_flag@0@@8 true) (= $abort_code@1@@8 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 201260) 201208) anon14_Then_correct@@5) (=> (= (ControlFlow 0 201260) 200779) anon14_Else_correct@@5))))))
(let ((anon13_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@5)) (= (ControlFlow 0 201258) 201260)) anon13_Then$1_correct@@3)))
(let ((anon13_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@5) (=> (and (and (= $t11@0@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@5)) (= $t11@1@@1 $t11@0@@6)) (and (= $abort_flag@0@@8 false) (= $abort_code@1@@8 $abort_code@0@@8))) (and (=> (= (ControlFlow 0 200723) 201208) anon14_Then_correct@@5) (=> (= (ControlFlow 0 200723) 200779) anon14_Else_correct@@5))))))
(let ((anon12_Then_correct@@3  (=> $t7@0@@1 (and (=> (= (ControlFlow 0 200709) 201258) anon13_Then_correct@@3) (=> (= (ControlFlow 0 200709) 200723) anon13_Else_correct@@3)))))
(let ((anon12_Else_correct@@3  (=> (and (and (not $t7@0@@1) (= $t9@@6 $t9@@6)) (and (= $t10@0@@3 $t9@@6) (= (ControlFlow 0 200625) 200705))) L5_correct@@8)))
(let ((anon0$1_correct@@8  (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |Rolesandybpl.6358:20|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@8))
))) (and (= _$t0@@8 _$t0@@8) (|$IsValid'address'| $t6@@5))) (=> (and (and (and (= $t6@@5 (|$addr#$signer| _$t0@@8)) (= $t6@@5 $t6@@5)) (and (= $t7@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@5)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t9@@6) (= $t9@@6 5)) (and (= $t9@@6 $t9@@6) (= $t7@0@@1 $t7@0@@1)))) (and (=> (= (ControlFlow 0 200609) 200709) anon12_Then_correct@@3) (=> (= (ControlFlow 0 200609) 200625) anon12_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_83261| stream@@9) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@9) v@@44) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 200505) 200609)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 281412) 200505) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0 () Bool)
(declare-fun $abort_flag@12 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $t1@0 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
(declare-fun $abort_flag@10 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun _$t0@@9 () T@$signer)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@0@@9 () Bool)
(declare-fun $abort_code@1@@9 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@9 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(push 1)
(set-info :boogie-vc-id $1_Roles_can_hold_balance$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 282217) (let ((L7_correct  (=> (= $t2@0 $t2@0) (and (=> (= (ControlFlow 0 203878) (- 0 283752)) (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@117)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@117) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@117)) 0))))
 :qid |Rolesandybpl.6718:15|
 :skolemid |183|
))) (=> (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@118)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@118)) 0))))
 :qid |Rolesandybpl.6718:15|
 :skolemid |183|
)) (and (=> (= (ControlFlow 0 203878) (- 0 283801)) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@119)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@119)) 1))))
 :qid |Rolesandybpl.6722:15|
 :skolemid |184|
))) (=> (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@120)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@120)) 1))))
 :qid |Rolesandybpl.6722:15|
 :skolemid |184|
)) (and (=> (= (ControlFlow 0 203878) (- 0 283850)) (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@121)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@121)) 3))))
 :qid |Rolesandybpl.6726:15|
 :skolemid |185|
))) (=> (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@122)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@122) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@122)) 3))))
 :qid |Rolesandybpl.6726:15|
 :skolemid |185|
)) (and (=> (= (ControlFlow 0 203878) (- 0 283899)) (forall ((addr@@123 Int) ) (!  (=> (|$IsValid'address'| addr@@123) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@123)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@123)) 4))))
 :qid |Rolesandybpl.6730:15|
 :skolemid |186|
))) (=> (forall ((addr@@124 Int) ) (!  (=> (|$IsValid'address'| addr@@124) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@124)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@124)) 4))))
 :qid |Rolesandybpl.6730:15|
 :skolemid |186|
)) (and (=> (= (ControlFlow 0 203878) (- 0 283948)) (forall ((addr@@125 Int) ) (!  (=> (|$IsValid'address'| addr@@125) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@125)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@125)) 2))))
 :qid |Rolesandybpl.6734:15|
 :skolemid |187|
))) (=> (forall ((addr@@126 Int) ) (!  (=> (|$IsValid'address'| addr@@126) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@126)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@126)) 2))))
 :qid |Rolesandybpl.6734:15|
 :skolemid |187|
)) (and (=> (= (ControlFlow 0 203878) (- 0 283997)) (forall ((addr@@127 Int) ) (!  (=> (|$IsValid'address'| addr@@127) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@127)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@127)) 5))))
 :qid |Rolesandybpl.6738:15|
 :skolemid |188|
))) (=> (forall ((addr@@128 Int) ) (!  (=> (|$IsValid'address'| addr@@128) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@128)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@128)) 5))))
 :qid |Rolesandybpl.6738:15|
 :skolemid |188|
)) (=> (= (ControlFlow 0 203878) (- 0 284046)) (forall ((addr@@129 Int) ) (!  (=> (|$IsValid'address'| addr@@129) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@129)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@129)) 6))))
 :qid |Rolesandybpl.6742:15|
 :skolemid |189|
))))))))))))))))))
(let ((anon18_Else_correct@@3  (=> (and (and (not $abort_flag@12) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (and (= $t2@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= (ControlFlow 0 203507) 203878))) L7_correct)))
(let ((anon17_Then_correct@@3  (=> (and (and $t1@0 (= true true)) (and (= $t2@0 true) (= (ControlFlow 0 203916) 203878))) L7_correct)))
(let ((anon18_Then_correct@@3 true))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 203465) 203892) anon18_Then_correct@@3) (=> (= (ControlFlow 0 203465) 203507) anon18_Else_correct@@3)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 203483) 203892) anon18_Then_correct@@3) (=> (= (ControlFlow 0 203483) 203507) anon18_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@8 $abort_code@8) (= $abort_flag@11 true)) (and (= $abort_code@10 $abort_code@8) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 203389) 203483) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 203389) 203465) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 203325) 203483) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 203325) 203465) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@9 $abort_code@8) (= (ControlFlow 0 203371) 203325)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 203441) 203389) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 203441) 203371) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 203439) 203441)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 203343) 203389) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 203343) 203371) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 203329) 203439) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 203329) 203343) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@10 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@9 $abort_code@7) (= (ControlFlow 0 203313) 203325))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| _$t0@@9))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 203293) 203329) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 203293) 203313) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 203447) 203293)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((anon17_Else_correct@@3  (=> (and (not $t1@0) (= (ControlFlow 0 203489) 203447)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((anon16_Else_correct@@3  (=> (not $abort_flag@7) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@7 $abort_code@6) (= $t1@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1))) (and (=> (= (ControlFlow 0 202807) 203916) anon17_Then_correct@@3) (=> (= (ControlFlow 0 202807) 203489) anon17_Else_correct@@3))))))
(let ((anon15_Then_correct@@8  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= $abort_flag@8 $abort_flag@3)) (and (= $abort_code@7 $abort_code@3) (= $t1@0 true))) (and (=> (= (ControlFlow 0 203948) 203916) anon17_Then_correct@@3) (=> (= (ControlFlow 0 203948) 203489) anon17_Else_correct@@3))))))
(let ((anon16_Then_correct@@3 true))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@7 $abort_flag@6))) (and (=> (= (ControlFlow 0 202765) 203930) anon16_Then_correct@@3) (=> (= (ControlFlow 0 202765) 202807) anon16_Else_correct@@3)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@7 true))) (and (=> (= (ControlFlow 0 202783) 203930) anon16_Then_correct@@3) (=> (= (ControlFlow 0 202783) 202807) anon16_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@4 (=> (and (and (= $abort_code@4 $abort_code@4) (= $abort_code@6 $abort_code@4)) (and (= $abort_flag@6 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 202689) 202783) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 202689) 202765) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 202625) 202783) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 202625) 202765) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@5 $abort_code@4) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@5 $abort_flag@4) (= (ControlFlow 0 202671) 202625)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 202741) 202689) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 202741) 202671) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 202739) 202741)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@4 $abort_code@3) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 202643) 202689) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 202643) 202671) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 202629) 202739) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 202629) 202643) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@5 $abort_code@3) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@5 $abort_flag@3) (= (ControlFlow 0 202613) 202625))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| _$t0@@9))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 202593) 202629) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 202593) 202613) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 202747) 202593)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((anon15_Else_correct@@8  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 202789) 202747)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((anon14_Else_correct@@6  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 202109) 203948) anon15_Then_correct@@8) (=> (= (ControlFlow 0 202109) 202789) anon15_Else_correct@@8)))))
(let ((anon14_Then_correct@@6 true))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3 $abort_flag@2))) (and (=> (= (ControlFlow 0 202077) 203962) anon14_Then_correct@@6) (=> (= (ControlFlow 0 202077) 202109) anon14_Else_correct@@6)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@3 true))) (and (=> (= (ControlFlow 0 202095) 203962) anon14_Then_correct@@6) (=> (= (ControlFlow 0 202095) 202109) anon14_Else_correct@@6)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@9 (=> (and (and (= $abort_code@1@@9 $abort_code@1@@9) (= $abort_code@3 $abort_code@1@@9)) (and (= $abort_flag@2 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 202001) 202095) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 202001) 202077) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 201937) 202095) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 201937) 202077) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@9) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2 $abort_code@1@@9) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1 $abort_flag@0@@9) (= (ControlFlow 0 201983) 201937)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@9 true) (=> (and (= $abort_code@1@@9 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 202053) 202001) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 202053) 201983) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 202051) 202053)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@9 false)) (and (= $abort_code@1@@9 $abort_code@0@@9) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 201955) 202001) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 201955) 201983) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 201941) 202051) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 201941) 201955) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2 $abort_code@0@@9) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@1 false) (= (ControlFlow 0 201925) 201937))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@9 _$t0@@9) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| _$t0@@9))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 201905) 201941) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 201905) 201925) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t0@@9 _$t0@@9) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 202059) 201905)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((anon0$1_correct@@9  (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@9)) (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |Rolesandybpl.6591:20|
 :skolemid |182|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@9))
))) (and (= _$t0@@9 _$t0@@9) (= (ControlFlow 0 202101) 202059))) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_83261| stream@@10) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@10) v@@45) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 201377) 202101)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 282217) 201377) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9)))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@10 () Bool)
(declare-fun $t8@0@@3 () Int)
(declare-fun $t7@1 () T@$1_Roles_RoleId)
(declare-fun $t7@@4 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@10 () Int)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@10 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_get_role_id$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284112) (let ((anon12_Else_correct@@4  (=> (not $abort_flag@0@@10) (=> (and (= $t8@0@@3 (|$role_id#$1_Roles_RoleId| $t7@1)) (= $t8@0@@3 $t8@0@@3)) (and (=> (= (ControlFlow 0 204651) (- 0 284364)) (forall ((addr@@130 Int) ) (!  (=> (|$IsValid'address'| addr@@130) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@130)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@130)) 0))))
 :qid |Rolesandybpl.6869:15|
 :skolemid |191|
))) (=> (forall ((addr@@131 Int) ) (!  (=> (|$IsValid'address'| addr@@131) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@131)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@131)) 0))))
 :qid |Rolesandybpl.6869:15|
 :skolemid |191|
)) (and (=> (= (ControlFlow 0 204651) (- 0 284413)) (forall ((addr@@132 Int) ) (!  (=> (|$IsValid'address'| addr@@132) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@132)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@132)) 1))))
 :qid |Rolesandybpl.6873:15|
 :skolemid |192|
))) (=> (forall ((addr@@133 Int) ) (!  (=> (|$IsValid'address'| addr@@133) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@133)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@133)) 1))))
 :qid |Rolesandybpl.6873:15|
 :skolemid |192|
)) (and (=> (= (ControlFlow 0 204651) (- 0 284462)) (forall ((addr@@134 Int) ) (!  (=> (|$IsValid'address'| addr@@134) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@134)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@134)) 3))))
 :qid |Rolesandybpl.6877:15|
 :skolemid |193|
))) (=> (forall ((addr@@135 Int) ) (!  (=> (|$IsValid'address'| addr@@135) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@135)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@135)) 3))))
 :qid |Rolesandybpl.6877:15|
 :skolemid |193|
)) (and (=> (= (ControlFlow 0 204651) (- 0 284511)) (forall ((addr@@136 Int) ) (!  (=> (|$IsValid'address'| addr@@136) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@136)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@136)) 4))))
 :qid |Rolesandybpl.6881:15|
 :skolemid |194|
))) (=> (forall ((addr@@137 Int) ) (!  (=> (|$IsValid'address'| addr@@137) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@137)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@137)) 4))))
 :qid |Rolesandybpl.6881:15|
 :skolemid |194|
)) (and (=> (= (ControlFlow 0 204651) (- 0 284560)) (forall ((addr@@138 Int) ) (!  (=> (|$IsValid'address'| addr@@138) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@138)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@138)) 2))))
 :qid |Rolesandybpl.6885:15|
 :skolemid |195|
))) (=> (forall ((addr@@139 Int) ) (!  (=> (|$IsValid'address'| addr@@139) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@139)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@139)) 2))))
 :qid |Rolesandybpl.6885:15|
 :skolemid |195|
)) (and (=> (= (ControlFlow 0 204651) (- 0 284609)) (forall ((addr@@140 Int) ) (!  (=> (|$IsValid'address'| addr@@140) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@140)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@140)) 5))))
 :qid |Rolesandybpl.6889:15|
 :skolemid |196|
))) (=> (forall ((addr@@141 Int) ) (!  (=> (|$IsValid'address'| addr@@141) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@141)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@141)) 5))))
 :qid |Rolesandybpl.6889:15|
 :skolemid |196|
)) (=> (= (ControlFlow 0 204651) (- 0 284658)) (forall ((addr@@142 Int) ) (!  (=> (|$IsValid'address'| addr@@142) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@142)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@142)) 6))))
 :qid |Rolesandybpl.6893:15|
 :skolemid |197|
)))))))))))))))))))
(let ((anon12_Then_correct@@4 true))
(let ((anon11_Then$1_correct  (=> (= $t7@1 $t7@@4) (=> (and (= $abort_flag@0@@10 true) (= $abort_code@1@@10 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 204717) 204665) anon12_Then_correct@@4) (=> (= (ControlFlow 0 204717) 204651) anon12_Else_correct@@4))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) _$t0@@10)) (= (ControlFlow 0 204715) 204717)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) _$t0@@10) (=> (and (and (= $t7@0@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) _$t0@@10)) (= $t7@1 $t7@0@@2)) (and (= $abort_flag@0@@10 false) (= $abort_code@1@@10 $abort_code@0@@10))) (and (=> (= (ControlFlow 0 204270) 204665) anon12_Then_correct@@4) (=> (= (ControlFlow 0 204270) 204651) anon12_Else_correct@@4))))))
(let ((anon10_Then_correct  (=> $t3@0 (and (=> (= (ControlFlow 0 204256) 204715) anon11_Then_correct) (=> (= (ControlFlow 0 204256) 204270) anon11_Else_correct)))))
(let ((anon10_Else_correct true))
(let ((anon0$1_correct@@10  (=> (|$IsValid'address'| _$t0@@10) (=> (and (and (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@10)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@10))
 :qid |Rolesandybpl.6787:20|
 :skolemid |190|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@10))
)) (= _$t0@@10 _$t0@@10)) (and (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) _$t0@@10)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t5) (= $t5 5)) (and (= $t5 $t5) (= $t3@0 $t3@0)))) (and (=> (= (ControlFlow 0 204230) 204256) anon10_Then_correct) (=> (= (ControlFlow 0 204230) 204246) anon10_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_83261| stream@@11) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@11) v@@46) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 204146) 204230)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 284112) 204146) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10)))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@11 () T@$signer)
(declare-fun $t2 () Int)
(declare-fun $t6@@6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_113696)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284717) (let ((L2_correct  (and (=> (= (ControlFlow 0 205601) (- 0 285463)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@11) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@11) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 205601) (- 0 285494)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@11) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct@@4  (=> $t6@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 205489) 205601))) L2_correct))))
(let ((anon12_Then_correct@@5  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@11) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 205631) 205601))) L2_correct))))
(let ((anon11_Then_correct@@0  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 205657) 205601))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@11)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@11))) 0)) (and (=> (= (ControlFlow 0 205447) (- 0 285109)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 205447) (- 0 285119)) (not (not (= (|$addr#$signer| _$t0@@11) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@11) 173345816))) (and (=> (= (ControlFlow 0 205447) (- 0 285133)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11))) (and (=> (= (ControlFlow 0 205447) (- 0 285144)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 205447) (- 0 285154)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@11))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@11)) (and (=> (= (ControlFlow 0 205447) (- 0 285163)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@11))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@11))) 0) (and (=> (= (ControlFlow 0 205447) (- 0 285178)) (forall ((addr@@143 Int) ) (!  (=> (|$IsValid'address'| addr@@143) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@143)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@143)) 1))))
 :qid |Rolesandybpl.7128:15|
 :skolemid |200|
))) (=> (forall ((addr@@144 Int) ) (!  (=> (|$IsValid'address'| addr@@144) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@144)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@144)) 1))))
 :qid |Rolesandybpl.7128:15|
 :skolemid |200|
)) (and (=> (= (ControlFlow 0 205447) (- 0 285225)) (forall ((addr@@145 Int) ) (!  (=> (|$IsValid'address'| addr@@145) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@145)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@145)) 3))))
 :qid |Rolesandybpl.7132:15|
 :skolemid |201|
))) (=> (forall ((addr@@146 Int) ) (!  (=> (|$IsValid'address'| addr@@146) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@146)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@146)) 3))))
 :qid |Rolesandybpl.7132:15|
 :skolemid |201|
)) (and (=> (= (ControlFlow 0 205447) (- 0 285272)) (forall ((addr@@147 Int) ) (!  (=> (|$IsValid'address'| addr@@147) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@147)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@147)) 4))))
 :qid |Rolesandybpl.7136:15|
 :skolemid |202|
))) (=> (forall ((addr@@148 Int) ) (!  (=> (|$IsValid'address'| addr@@148) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@148)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@148)) 4))))
 :qid |Rolesandybpl.7136:15|
 :skolemid |202|
)) (and (=> (= (ControlFlow 0 205447) (- 0 285319)) (forall ((addr@@149 Int) ) (!  (=> (|$IsValid'address'| addr@@149) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@149)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@149)) 2))))
 :qid |Rolesandybpl.7140:15|
 :skolemid |203|
))) (=> (forall ((addr@@150 Int) ) (!  (=> (|$IsValid'address'| addr@@150) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@150)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@150)) 2))))
 :qid |Rolesandybpl.7140:15|
 :skolemid |203|
)) (and (=> (= (ControlFlow 0 205447) (- 0 285366)) (forall ((addr@@151 Int) ) (!  (=> (|$IsValid'address'| addr@@151) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@151)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@151)) 5))))
 :qid |Rolesandybpl.7144:15|
 :skolemid |204|
))) (=> (forall ((addr@@152 Int) ) (!  (=> (|$IsValid'address'| addr@@152) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@152)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@152)) 5))))
 :qid |Rolesandybpl.7144:15|
 :skolemid |204|
)) (=> (= (ControlFlow 0 205447) (- 0 285413)) (forall ((addr@@153 Int) ) (!  (=> (|$IsValid'address'| addr@@153) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@153) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2) addr@@153)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@153) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@153)) 6))))
 :qid |Rolesandybpl.7148:15|
 :skolemid |205|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct@@7  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 205041) 205447))) anon9_correct)))
(let ((anon14_Then_correct@@7  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 205461) 205447))) anon9_correct)))
(let ((anon13_Else_correct@@4  (=> (not $t6@@6) (and (=> (= (ControlFlow 0 205027) 205461) anon14_Then_correct@@7) (=> (= (ControlFlow 0 205027) 205041) anon14_Else_correct@@7)))))
(let ((anon12_Else_correct@@5  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5@@0 (|$addr#$signer| _$t0@@11))) (and (=> (= (ControlFlow 0 205021) (- 0 284959)) (=> (= 0 0) (= $t5@@0 173345816))) (=> (=> (= 0 0) (= $t5@@0 173345816)) (and (=> (= (ControlFlow 0 205021) (- 0 284975)) (=> (= 0 1) (= $t5@@0 186537453))) (=> (=> (= 0 1) (= $t5@@0 186537453)) (and (=> (= (ControlFlow 0 205021) (- 0 284991)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@11))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@11)) (=> (= $t6@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@11))) (and (=> (= (ControlFlow 0 205021) 205489) anon13_Then_correct@@4) (=> (= (ControlFlow 0 205021) 205027) anon13_Else_correct@@4)))))))))))))
(let ((anon11_Else_correct@@0  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@11) 173345816)))) (and (=> (= (ControlFlow 0 204943) 205631) anon12_Then_correct@@5) (=> (= (ControlFlow 0 204943) 205021) anon12_Else_correct@@5)))))
(let ((anon0$1_correct@@11  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@11)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@11))
 :qid |Rolesandybpl.6942:20|
 :skolemid |198|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@11))
))) (=> (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@12)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@12))
 :qid |Rolesandybpl.6946:20|
 :skolemid |199|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@12))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@11))) (and (= _$t0@@11 _$t0@@11) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 204921) 205657) anon11_Then_correct@@0) (=> (= (ControlFlow 0 204921) 204943) anon11_Else_correct@@0)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_83261| stream@@12) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@12) v@@47) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 204813) 204921)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 284717) 204813) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@11 () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_113696)
(declare-fun _$t0@@12 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0@@4 () Int)
(declare-fun $abort_code@1@@11 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_113696)
(declare-fun $t11@0@@7 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@11 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@7 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 285572) (let ((anon12_Else_correct@@6  (=> (not $abort_flag@0@@11) (and (=> (= (ControlFlow 0 206690) (- 0 286210)) (forall ((addr@@154 Int) ) (!  (=> (|$IsValid'address'| addr@@154) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@154) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@154) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@154)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@154))))))
 :qid |Rolesandybpl.7378:15|
 :skolemid |216|
))) (=> (forall ((addr@@155 Int) ) (!  (=> (|$IsValid'address'| addr@@155) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@155) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@155) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@155)) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@155))))))
 :qid |Rolesandybpl.7378:15|
 :skolemid |216|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286252)) (forall ((addr@@156 Int) ) (!  (=> (|$IsValid'address'| addr@@156) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@156) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@156)) 0)) (= addr@@156 173345816)))
 :qid |Rolesandybpl.7384:15|
 :skolemid |217|
))) (=> (forall ((addr@@157 Int) ) (!  (=> (|$IsValid'address'| addr@@157) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@157) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@157)) 0)) (= addr@@157 173345816)))
 :qid |Rolesandybpl.7384:15|
 :skolemid |217|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286277)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 173345816)) 0)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 173345816)) 0))) (and (=> (= (ControlFlow 0 206690) (- 0 286291)) (forall ((addr@@158 Int) ) (!  (=> (|$IsValid'address'| addr@@158) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@158) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@158)) 1)) (= addr@@158 186537453)))
 :qid |Rolesandybpl.7396:15|
 :skolemid |218|
))) (=> (forall ((addr@@159 Int) ) (!  (=> (|$IsValid'address'| addr@@159) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@159) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@159)) 1)) (= addr@@159 186537453)))
 :qid |Rolesandybpl.7396:15|
 :skolemid |218|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286316)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 186537453)) 1)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) 186537453)) 1))) (and (=> (= (ControlFlow 0 206690) (- 0 286330)) (forall ((addr@@160 Int) ) (!  (=> (|$IsValid'address'| addr@@160) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@160)) 2))))))
 :qid |Rolesandybpl.7408:15|
 :skolemid |219|
))) (=> (forall ((addr@@161 Int) ) (!  (=> (|$IsValid'address'| addr@@161) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@161)) 2))))))
 :qid |Rolesandybpl.7408:15|
 :skolemid |219|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286356)) (forall ((addr@@162 Int) ) (!  (=> (|$IsValid'address'| addr@@162) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@162)) 2))))))
 :qid |Rolesandybpl.7414:15|
 :skolemid |220|
))) (=> (forall ((addr@@163 Int) ) (!  (=> (|$IsValid'address'| addr@@163) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@163)) 2))))))
 :qid |Rolesandybpl.7414:15|
 :skolemid |220|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286382)) (forall ((addr@@164 Int) ) (!  (=> (|$IsValid'address'| addr@@164) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@164)) 2))))))
 :qid |Rolesandybpl.7420:15|
 :skolemid |221|
))) (=> (forall ((addr@@165 Int) ) (!  (=> (|$IsValid'address'| addr@@165) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@165)) 2))))))
 :qid |Rolesandybpl.7420:15|
 :skolemid |221|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286408)) (forall ((addr@@166 Int) ) (!  (=> (|$IsValid'address'| addr@@166) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@166)) 2))))))
 :qid |Rolesandybpl.7426:15|
 :skolemid |222|
))) (=> (forall ((addr@@167 Int) ) (!  (=> (|$IsValid'address'| addr@@167) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@167)) 2))))))
 :qid |Rolesandybpl.7426:15|
 :skolemid |222|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286434)) (forall ((addr@@168 Int) ) (!  (=> (|$IsValid'address'| addr@@168) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@168)) 2)))))
 :qid |Rolesandybpl.7432:15|
 :skolemid |223|
))) (=> (forall ((addr@@169 Int) ) (!  (=> (|$IsValid'address'| addr@@169) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@169)) 2)))))
 :qid |Rolesandybpl.7432:15|
 :skolemid |223|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286458)) (forall ((addr@@170 Int) ) (!  (=> (|$IsValid'address'| addr@@170) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@170)) 2)))))
 :qid |Rolesandybpl.7438:15|
 :skolemid |224|
))) (=> (forall ((addr@@171 Int) ) (!  (=> (|$IsValid'address'| addr@@171) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@171)) 2)))))
 :qid |Rolesandybpl.7438:15|
 :skolemid |224|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286482)) (forall ((addr@@172 Int) ) (!  (=> (|$IsValid'address'| addr@@172) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@172)) 2)))))
 :qid |Rolesandybpl.7444:15|
 :skolemid |225|
))) (=> (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) addr@@173)) 2)))))
 :qid |Rolesandybpl.7444:15|
 :skolemid |225|
)) (and (=> (= (ControlFlow 0 206690) (- 0 286509)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) (and (=> (= (ControlFlow 0 206690) (- 0 286520)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@12))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@12)) (=> (= (ControlFlow 0 206690) (- 0 286529)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@12))) _$t1@@0)))))))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 206053) (- 0 286180)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12)) (=> (= (ControlFlow 0 206053) (- 0 286186)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12)) (= 6 $t10@0@@4)))))))
(let ((anon12_Then_correct@@6  (=> (and (and $abort_flag@0@@11 (= $abort_code@1@@11 $abort_code@1@@11)) (and (= $t10@0@@4 $abort_code@1@@11) (= (ControlFlow 0 206704) 206053))) L3_correct)))
(let ((anon11_Then$1_correct@@0  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@11 true) (= $abort_code@1@@11 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 206756) 206704) anon12_Then_correct@@6) (=> (= (ControlFlow 0 206756) 206690) anon12_Else_correct@@6))))))
(let ((anon11_Then_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12)) (= (ControlFlow 0 206754) 206756)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@1  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@12) $t11@0@@7))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@11 false) (= $abort_code@1@@11 $abort_code@0@@11))) (and (=> (= (ControlFlow 0 206336) 206704) anon12_Then_correct@@6) (=> (= (ControlFlow 0 206336) 206690) anon12_Else_correct@@6))))))
(let ((anon10_Then_correct@@0  (=> (and inline$$Not$0$dst@1 (= $t11@0@@7 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 206314) (- 0 285818)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@12))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@12)) (=> (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@174) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@174)) 0)) (= addr@@174 173345816)))
 :qid |Rolesandybpl.7314:20|
 :skolemid |207|
)) (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 173345816) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 173345816)) 0))) (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@175)) 1)) (= addr@@175 186537453)))
 :qid |Rolesandybpl.7322:20|
 :skolemid |208|
))) (=> (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) 186537453) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) 186537453)) 1))) (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176)) 0)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@176)) 2))))))
 :qid |Rolesandybpl.7330:20|
 :skolemid |209|
))) (and (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177)) 1)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@177)) 2))))))
 :qid |Rolesandybpl.7334:20|
 :skolemid |210|
)) (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178)) 3)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@178)) 2))))))
 :qid |Rolesandybpl.7338:20|
 :skolemid |211|
)))) (and (and (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179)) 4)) (not (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@179)) 2))))))
 :qid |Rolesandybpl.7342:20|
 :skolemid |212|
)) (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180)) 2)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@180)) 2)))))
 :qid |Rolesandybpl.7346:20|
 :skolemid |213|
))) (and (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181)) 5)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@181)) 2)))))
 :qid |Rolesandybpl.7350:20|
 :skolemid |214|
)) (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182)) 6)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@182)) 2)))))
 :qid |Rolesandybpl.7354:20|
 :skolemid |215|
))))) (and (=> (= (ControlFlow 0 206314) 206754) anon11_Then_correct@@1) (=> (= (ControlFlow 0 206314) 206336) anon11_Else_correct@@1))))))))))
(let ((anon10_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@7 $t9@@7)) (and (= $t10@0@@4 $t9@@7) (= (ControlFlow 0 206021) 206053))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@7) (= $t9@@7 6)) (and (= $t9@@7 $t9@@7) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 206005) 206314) anon10_Then_correct@@0) (=> (= (ControlFlow 0 206005) 206021) anon10_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 205969) 206005)) anon0$2_correct)))
(let ((anon0$1_correct@@12  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@12)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@13)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@13))
 :qid |Rolesandybpl.7210:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@13))
))) (and (= $t4 (|$addr#$signer| _$t0@@12)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@12))) (and (= _$t0@@12 _$t0@@12) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@1) (= $t5@@1 (|$addr#$signer| _$t0@@12))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t5@@1)) (= (ControlFlow 0 205975) 205969)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_83261| stream@@13) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@13) v@@48) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 205807) 205975)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 285572) 205807) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@13 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@4 () Bool)
(declare-fun $t7@@5 () Bool)
(declare-fun $t6@@7 () Int)
(declare-fun $t5@@2 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_113696)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 286549) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 207926) (- 0 287522)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@13) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@13) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 207926) (- 0 287588)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@13) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct@@4  (=> $t10@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 207714) 207926))) L2_correct@@0))))
(let ((anon15_Then_correct@@9  (=> (and (and $t7@@5 (or (or (or (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@7)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@7)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 208018) 207926))) L2_correct@@0)))
(let ((anon14_Then_correct@@8  (=> $t5@@2 (=> (and (and (not (= (|$addr#$signer| _$t0@@13) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 208048) 207926))) L2_correct@@0))))
(let ((anon13_Then_correct@@5  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 208074) 207926))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@13)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@13))) 1)) (and (=> (= (ControlFlow 0 207672) (- 0 287124)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 207672) (- 0 287134)) (not (not (= (|$addr#$signer| _$t0@@13) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@13) 186537453))) (and (=> (= (ControlFlow 0 207672) (- 0 287148)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 207672) (- 0 287160)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 207672) (- 0 287178)) (not (not (= (|$addr#$signer| _$t1@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 173345816))) (and (=> (= (ControlFlow 0 207672) (- 0 287192)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13))) (and (=> (= (ControlFlow 0 207672) (- 0 287203)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 207672) (- 0 287213)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@13))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@13)) (and (=> (= (ControlFlow 0 207672) (- 0 287222)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@13))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@13))) 1) (and (=> (= (ControlFlow 0 207672) (- 0 287237)) (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@183)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@183) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@183)) 0))))
 :qid |Rolesandybpl.7771:15|
 :skolemid |228|
))) (=> (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@184)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@184) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@184)) 0))))
 :qid |Rolesandybpl.7771:15|
 :skolemid |228|
)) (and (=> (= (ControlFlow 0 207672) (- 0 287284)) (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@185)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@185) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@185)) 3))))
 :qid |Rolesandybpl.7775:15|
 :skolemid |229|
))) (=> (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@186)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@186) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@186)) 3))))
 :qid |Rolesandybpl.7775:15|
 :skolemid |229|
)) (and (=> (= (ControlFlow 0 207672) (- 0 287331)) (forall ((addr@@187 Int) ) (!  (=> (|$IsValid'address'| addr@@187) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@187) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@187)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@187) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@187)) 4))))
 :qid |Rolesandybpl.7779:15|
 :skolemid |230|
))) (=> (forall ((addr@@188 Int) ) (!  (=> (|$IsValid'address'| addr@@188) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@188)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@188)) 4))))
 :qid |Rolesandybpl.7779:15|
 :skolemid |230|
)) (and (=> (= (ControlFlow 0 207672) (- 0 287378)) (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@189)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@189)) 2))))
 :qid |Rolesandybpl.7783:15|
 :skolemid |231|
))) (=> (forall ((addr@@190 Int) ) (!  (=> (|$IsValid'address'| addr@@190) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@190)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@190) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@190)) 2))))
 :qid |Rolesandybpl.7783:15|
 :skolemid |231|
)) (and (=> (= (ControlFlow 0 207672) (- 0 287425)) (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@191)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@191) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@191)) 5))))
 :qid |Rolesandybpl.7787:15|
 :skolemid |232|
))) (=> (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@192)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@192) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@192)) 5))))
 :qid |Rolesandybpl.7787:15|
 :skolemid |232|
)) (=> (= (ControlFlow 0 207672) (- 0 287472)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@0) addr@@193)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@193) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@193)) 6))))
 :qid |Rolesandybpl.7791:15|
 :skolemid |233|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 207222) 207672))) anon11_correct)))
(let ((anon17_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 207686) 207672))) anon11_correct)))
(let ((anon16_Else_correct@@4  (=> (not $t10@@4) (and (=> (= (ControlFlow 0 207208) 207686) anon17_Then_correct@@4) (=> (= (ControlFlow 0 207208) 207222) anon17_Else_correct@@4)))))
(let ((anon15_Else_correct@@9  (=> (not $t7@@5) (=> (and (|$IsValid'u64'| 1) (= $t9@@8 (|$addr#$signer| _$t0@@13))) (and (=> (= (ControlFlow 0 207202) (- 0 286974)) (=> (= 1 0) (= $t9@@8 173345816))) (=> (=> (= 1 0) (= $t9@@8 173345816)) (and (=> (= (ControlFlow 0 207202) (- 0 286990)) (=> (= 1 1) (= $t9@@8 186537453))) (=> (=> (= 1 1) (= $t9@@8 186537453)) (and (=> (= (ControlFlow 0 207202) (- 0 287006)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@13))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@13)) (=> (= $t10@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@13))) (and (=> (= (ControlFlow 0 207202) 207714) anon16_Then_correct@@4) (=> (= (ControlFlow 0 207202) 207208) anon16_Else_correct@@4)))))))))))))
(let ((anon14_Else_correct@@8  (=> (not $t5@@2) (=> (and (= $t6@@7 (|$addr#$signer| _$t1@@1)) (= $t7@@5  (or (or (or (not (= (|$addr#$signer| _$t1@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t6@@7)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))))) (and (=> (= (ControlFlow 0 207124) 208018) anon15_Then_correct@@9) (=> (= (ControlFlow 0 207124) 207202) anon15_Else_correct@@9))))))
(let ((anon13_Else_correct@@5  (=> (and (not $t3@@0) (= $t5@@2  (not (= (|$addr#$signer| _$t0@@13) 186537453)))) (and (=> (= (ControlFlow 0 207052) 208048) anon14_Then_correct@@8) (=> (= (ControlFlow 0 207052) 207124) anon14_Else_correct@@8)))))
(let ((anon0$1_correct@@13  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@13))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@14)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@14))
 :qid |Rolesandybpl.7528:20|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@15)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@15))
 :qid |Rolesandybpl.7532:20|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@15))
)) (= $t2@@0 (|$addr#$signer| _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@13)) (= _$t0@@13 _$t0@@13)) (and (= _$t1@@1 _$t1@@1) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_112252| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 207030) 208074) anon13_Then_correct@@5) (=> (= (ControlFlow 0 207030) 207052) anon13_Else_correct@@5))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_83261| stream@@14) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@14) v@@49) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 206902) 207030)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 286549) 206902) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@0@@12 () Bool)
(declare-fun $abort_code@1@@12 () Int)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@12 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@0 () Bool)
(declare-fun _$t0@@14 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_child_VASP_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 287725) (let ((anon4_Else_correct  (=> (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0)) (and (=> (= (ControlFlow 0 209162) (- 0 288164)) (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@194)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@194) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@194)) 0))))
 :qid |Rolesandybpl.7923:15|
 :skolemid |235|
))) (=> (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@195)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@195) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@195)) 0))))
 :qid |Rolesandybpl.7923:15|
 :skolemid |235|
)) (and (=> (= (ControlFlow 0 209162) (- 0 288213)) (forall ((addr@@196 Int) ) (!  (=> (|$IsValid'address'| addr@@196) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@196)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@196) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@196)) 1))))
 :qid |Rolesandybpl.7927:15|
 :skolemid |236|
))) (=> (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@197)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@197)) 1))))
 :qid |Rolesandybpl.7927:15|
 :skolemid |236|
)) (and (=> (= (ControlFlow 0 209162) (- 0 288262)) (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@198)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@198)) 3))))
 :qid |Rolesandybpl.7931:15|
 :skolemid |237|
))) (=> (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@199)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@199)) 3))))
 :qid |Rolesandybpl.7931:15|
 :skolemid |237|
)) (and (=> (= (ControlFlow 0 209162) (- 0 288311)) (forall ((addr@@200 Int) ) (!  (=> (|$IsValid'address'| addr@@200) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@200)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@200)) 4))))
 :qid |Rolesandybpl.7935:15|
 :skolemid |238|
))) (=> (forall ((addr@@201 Int) ) (!  (=> (|$IsValid'address'| addr@@201) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@201)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@201) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@201)) 4))))
 :qid |Rolesandybpl.7935:15|
 :skolemid |238|
)) (and (=> (= (ControlFlow 0 209162) (- 0 288360)) (forall ((addr@@202 Int) ) (!  (=> (|$IsValid'address'| addr@@202) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@202)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@202)) 2))))
 :qid |Rolesandybpl.7939:15|
 :skolemid |239|
))) (=> (forall ((addr@@203 Int) ) (!  (=> (|$IsValid'address'| addr@@203) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@203)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@203)) 2))))
 :qid |Rolesandybpl.7939:15|
 :skolemid |239|
)) (and (=> (= (ControlFlow 0 209162) (- 0 288409)) (forall ((addr@@204 Int) ) (!  (=> (|$IsValid'address'| addr@@204) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@204)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@204)) 5))))
 :qid |Rolesandybpl.7943:15|
 :skolemid |240|
))) (=> (forall ((addr@@205 Int) ) (!  (=> (|$IsValid'address'| addr@@205) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@205)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@205)) 5))))
 :qid |Rolesandybpl.7943:15|
 :skolemid |240|
)) (=> (= (ControlFlow 0 209162) (- 0 288458)) (forall ((addr@@206 Int) ) (!  (=> (|$IsValid'address'| addr@@206) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@206) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@206)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@206) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@206)) 6))))
 :qid |Rolesandybpl.7947:15|
 :skolemid |241|
))))))))))))))))))
(let ((anon4_Then_correct true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@0  (=> $abort_flag@0@@12 (=> (and (and (= $abort_code@1@@12 $abort_code@1@@12) (= $abort_code@3@@0 $abort_code@1@@12)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@0@@0))) (and (=> (= (ControlFlow 0 208727) 209180) anon4_Then_correct) (=> (= (ControlFlow 0 208727) 209162) anon4_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@0 inline$$1_Roles_has_role$0$$t2@1@@0) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$t2@1@@0))) (and (=> (= (ControlFlow 0 208663) 209180) anon4_Then_correct) (=> (= (ControlFlow 0 208663) 209162) anon4_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@12) (= inline$$1_Roles_has_role$0$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@0))) (and (= inline$$1_Roles_has_role$0$$t9@1@@0 (= inline$$1_Roles_has_role$0$$t8@1@@0 6)) (= inline$$1_Roles_has_role$0$$t9@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0))) (and (and (= $abort_code@2@@0 $abort_code@1@@12) (= inline$$1_Roles_has_role$0$$t2@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0)) (and (= $abort_flag@1@@0 $abort_flag@0@@12) (= (ControlFlow 0 208709) 208663)))) inline$$1_Roles_has_role$0$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0  (=> (= $abort_flag@0@@12 true) (=> (and (= $abort_code@1@@12 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@0@@0)) (and (=> (= (ControlFlow 0 208779) 208727) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 208779) 208709) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= (ControlFlow 0 208777) 208779)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= $abort_flag@0@@12 false)) (and (= $abort_code@1@@12 $abort_code@0@@12) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@1@@0))) (and (=> (= (ControlFlow 0 208681) 208727) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 208681) 208709) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$0$$t5@1@@0 (and (=> (= (ControlFlow 0 208667) 208777) inline$$1_Roles_has_role$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 208667) 208681) inline$$1_Roles_has_role$0$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@12) (= inline$$1_Roles_has_role$0$$t2@1@@0 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 208651) 208663))) inline$$1_Roles_has_role$0$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@0  (=> (and (= _$t0@@14 _$t0@@14) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t4@0@@0 (|$addr#$signer| _$t0@@14))) (and (= inline$$1_Roles_has_role$0$$t4@0@@0 inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)))) (and (=> (= (ControlFlow 0 208631) 208667) inline$$1_Roles_has_role$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 208631) 208651) inline$$1_Roles_has_role$0$anon9_Else_correct@@0))))))
(let ((anon0$1_correct@@14  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@14)) (=> (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@16)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@16))
 :qid |Rolesandybpl.7890:20|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@16))
)) (= _$t0@@14 _$t0@@14)) (and (|$IsValid'u64'| 6) (= (ControlFlow 0 208785) 208631))) inline$$1_Roles_has_role$0$anon0_correct@@0))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_83261| stream@@15) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@15) v@@50) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 208249) 208785)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 287725) 208249) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@0@@13 () Bool)
(declare-fun $abort_code@1@@13 () Int)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@1 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@13 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@1 () Bool)
(declare-fun _$t0@@15 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 288518) (let ((anon4_Else_correct@@0  (=> (and (not $abort_flag@2@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1)) (and (=> (= (ControlFlow 0 210209) (- 0 288957)) (forall ((addr@@207 Int) ) (!  (=> (|$IsValid'address'| addr@@207) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@207)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@207)) 0))))
 :qid |Rolesandybpl.8071:15|
 :skolemid |243|
))) (=> (forall ((addr@@208 Int) ) (!  (=> (|$IsValid'address'| addr@@208) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@208)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@208)) 0))))
 :qid |Rolesandybpl.8071:15|
 :skolemid |243|
)) (and (=> (= (ControlFlow 0 210209) (- 0 289006)) (forall ((addr@@209 Int) ) (!  (=> (|$IsValid'address'| addr@@209) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@209)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@209)) 1))))
 :qid |Rolesandybpl.8075:15|
 :skolemid |244|
))) (=> (forall ((addr@@210 Int) ) (!  (=> (|$IsValid'address'| addr@@210) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@210)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@210)) 1))))
 :qid |Rolesandybpl.8075:15|
 :skolemid |244|
)) (and (=> (= (ControlFlow 0 210209) (- 0 289055)) (forall ((addr@@211 Int) ) (!  (=> (|$IsValid'address'| addr@@211) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@211)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@211)) 3))))
 :qid |Rolesandybpl.8079:15|
 :skolemid |245|
))) (=> (forall ((addr@@212 Int) ) (!  (=> (|$IsValid'address'| addr@@212) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@212)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@212)) 3))))
 :qid |Rolesandybpl.8079:15|
 :skolemid |245|
)) (and (=> (= (ControlFlow 0 210209) (- 0 289104)) (forall ((addr@@213 Int) ) (!  (=> (|$IsValid'address'| addr@@213) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@213)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@213)) 4))))
 :qid |Rolesandybpl.8083:15|
 :skolemid |246|
))) (=> (forall ((addr@@214 Int) ) (!  (=> (|$IsValid'address'| addr@@214) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@214)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@214)) 4))))
 :qid |Rolesandybpl.8083:15|
 :skolemid |246|
)) (and (=> (= (ControlFlow 0 210209) (- 0 289153)) (forall ((addr@@215 Int) ) (!  (=> (|$IsValid'address'| addr@@215) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@215) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@215)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@215) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@215)) 2))))
 :qid |Rolesandybpl.8087:15|
 :skolemid |247|
))) (=> (forall ((addr@@216 Int) ) (!  (=> (|$IsValid'address'| addr@@216) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@216) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@216)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@216) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@216)) 2))))
 :qid |Rolesandybpl.8087:15|
 :skolemid |247|
)) (and (=> (= (ControlFlow 0 210209) (- 0 289202)) (forall ((addr@@217 Int) ) (!  (=> (|$IsValid'address'| addr@@217) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@217) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@217)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@217) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@217)) 5))))
 :qid |Rolesandybpl.8091:15|
 :skolemid |248|
))) (=> (forall ((addr@@218 Int) ) (!  (=> (|$IsValid'address'| addr@@218) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@218) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@218)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@218) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@218)) 5))))
 :qid |Rolesandybpl.8091:15|
 :skolemid |248|
)) (=> (= (ControlFlow 0 210209) (- 0 289251)) (forall ((addr@@219 Int) ) (!  (=> (|$IsValid'address'| addr@@219) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@219) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@219)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@219) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@219)) 6))))
 :qid |Rolesandybpl.8095:15|
 :skolemid |249|
))))))))))))))))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@1  (=> $abort_flag@0@@13 (=> (and (and (= $abort_code@1@@13 $abort_code@1@@13) (= $abort_code@3@@1 $abort_code@1@@13)) (and (= $abort_flag@2@@1 true) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@0@@1))) (and (=> (= (ControlFlow 0 209774) 210227) anon4_Then_correct@@0) (=> (= (ControlFlow 0 209774) 210209) anon4_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@1 inline$$1_Roles_has_role$0$$t2@1@@1) (= $abort_code@3@@1 $abort_code@2@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$t2@1@@1))) (and (=> (= (ControlFlow 0 209710) 210227) anon4_Then_correct@@0) (=> (= (ControlFlow 0 209710) 210209) anon4_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@13) (= inline$$1_Roles_has_role$0$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@1))) (and (= inline$$1_Roles_has_role$0$$t9@1@@1 (= inline$$1_Roles_has_role$0$$t8@1@@1 2)) (= inline$$1_Roles_has_role$0$$t9@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1))) (and (and (= $abort_code@2@@1 $abort_code@1@@13) (= inline$$1_Roles_has_role$0$$t2@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1)) (and (= $abort_flag@1@@1 $abort_flag@0@@13) (= (ControlFlow 0 209756) 209710)))) inline$$1_Roles_has_role$0$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1  (=> (= $abort_flag@0@@13 true) (=> (and (= $abort_code@1@@13 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@0@@1)) (and (=> (= (ControlFlow 0 209826) 209774) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 209826) 209756) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= (ControlFlow 0 209824) 209826)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= $abort_flag@0@@13 false)) (and (= $abort_code@1@@13 $abort_code@0@@13) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@1@@1))) (and (=> (= (ControlFlow 0 209728) 209774) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 209728) 209756) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$0$$t5@1@@1 (and (=> (= (ControlFlow 0 209714) 209824) inline$$1_Roles_has_role$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 209714) 209728) inline$$1_Roles_has_role$0$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@2@@1 $abort_code@0@@13) (= inline$$1_Roles_has_role$0$$t2@1@@1 false)) (and (= $abort_flag@1@@1 false) (= (ControlFlow 0 209698) 209710))) inline$$1_Roles_has_role$0$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@1  (=> (and (= _$t0@@15 _$t0@@15) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t4@0@@1 (|$addr#$signer| _$t0@@15))) (and (= inline$$1_Roles_has_role$0$$t4@0@@1 inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)))) (and (=> (= (ControlFlow 0 209678) 209714) inline$$1_Roles_has_role$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 209678) 209698) inline$$1_Roles_has_role$0$anon9_Else_correct@@1))))))
(let ((anon0$1_correct@@15  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@15)) (=> (and (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@17)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@17))
 :qid |Rolesandybpl.8038:20|
 :skolemid |242|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@17))
)) (= _$t0@@15 _$t0@@15)) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 209832) 209678))) inline$$1_Roles_has_role$0$anon0_correct@@1))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_83261| stream@@16) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@16) v@@51) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 209296) 209832)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 288518) 209296) inline$$InitEventStore$0$anon0_correct@@15)))
anon0_correct@@15)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@2 () Bool)
(declare-fun $abort_flag@0@@14 () Bool)
(declare-fun $abort_code@1@@14 () Int)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@2 () Bool)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@2 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@14 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@2 () Bool)
(declare-fun _$t0@@16 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 289311) (let ((anon4_Else_correct@@1  (=> (and (not $abort_flag@2@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$ret0@1@@2)) (and (=> (= (ControlFlow 0 211256) (- 0 289750)) (forall ((addr@@220 Int) ) (!  (=> (|$IsValid'address'| addr@@220) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@220) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@220)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@220) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@220)) 0))))
 :qid |Rolesandybpl.8167:15|
 :skolemid |251|
))) (=> (forall ((addr@@221 Int) ) (!  (=> (|$IsValid'address'| addr@@221) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@221) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@221)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@221) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@221)) 0))))
 :qid |Rolesandybpl.8167:15|
 :skolemid |251|
)) (and (=> (= (ControlFlow 0 211256) (- 0 289799)) (forall ((addr@@222 Int) ) (!  (=> (|$IsValid'address'| addr@@222) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@222) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@222)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@222) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@222)) 1))))
 :qid |Rolesandybpl.8171:15|
 :skolemid |252|
))) (=> (forall ((addr@@223 Int) ) (!  (=> (|$IsValid'address'| addr@@223) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@223) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@223)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@223) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@223)) 1))))
 :qid |Rolesandybpl.8171:15|
 :skolemid |252|
)) (and (=> (= (ControlFlow 0 211256) (- 0 289848)) (forall ((addr@@224 Int) ) (!  (=> (|$IsValid'address'| addr@@224) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@224) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@224)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@224) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@224)) 3))))
 :qid |Rolesandybpl.8175:15|
 :skolemid |253|
))) (=> (forall ((addr@@225 Int) ) (!  (=> (|$IsValid'address'| addr@@225) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@225) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@225)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@225) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@225)) 3))))
 :qid |Rolesandybpl.8175:15|
 :skolemid |253|
)) (and (=> (= (ControlFlow 0 211256) (- 0 289897)) (forall ((addr@@226 Int) ) (!  (=> (|$IsValid'address'| addr@@226) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@226) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@226)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@226) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@226)) 4))))
 :qid |Rolesandybpl.8179:15|
 :skolemid |254|
))) (=> (forall ((addr@@227 Int) ) (!  (=> (|$IsValid'address'| addr@@227) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@227) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@227)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@227) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@227)) 4))))
 :qid |Rolesandybpl.8179:15|
 :skolemid |254|
)) (and (=> (= (ControlFlow 0 211256) (- 0 289946)) (forall ((addr@@228 Int) ) (!  (=> (|$IsValid'address'| addr@@228) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@228) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@228)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@228) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@228)) 2))))
 :qid |Rolesandybpl.8183:15|
 :skolemid |255|
))) (=> (forall ((addr@@229 Int) ) (!  (=> (|$IsValid'address'| addr@@229) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@229) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@229)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@229) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@229)) 2))))
 :qid |Rolesandybpl.8183:15|
 :skolemid |255|
)) (and (=> (= (ControlFlow 0 211256) (- 0 289995)) (forall ((addr@@230 Int) ) (!  (=> (|$IsValid'address'| addr@@230) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@230) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@230)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@230) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@230)) 5))))
 :qid |Rolesandybpl.8187:15|
 :skolemid |256|
))) (=> (forall ((addr@@231 Int) ) (!  (=> (|$IsValid'address'| addr@@231) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@231) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@231)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@231) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@231)) 5))))
 :qid |Rolesandybpl.8187:15|
 :skolemid |256|
)) (=> (= (ControlFlow 0 211256) (- 0 290044)) (forall ((addr@@232 Int) ) (!  (=> (|$IsValid'address'| addr@@232) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@232) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@232)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@232) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@232)) 6))))
 :qid |Rolesandybpl.8191:15|
 :skolemid |257|
))))))))))))))))))
(let ((anon4_Then_correct@@1 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@2  (=> $abort_flag@0@@14 (=> (and (and (= $abort_code@1@@14 $abort_code@1@@14) (= $abort_code@3@@2 $abort_code@1@@14)) (and (= $abort_flag@2@@2 true) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$ret0@0@@2))) (and (=> (= (ControlFlow 0 210821) 211274) anon4_Then_correct@@1) (=> (= (ControlFlow 0 210821) 211256) anon4_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@2  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@2 inline$$1_Roles_has_role$0$$t2@1@@2) (= $abort_code@3@@2 $abort_code@2@@2)) (and (= $abort_flag@2@@2 $abort_flag@1@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@2 inline$$1_Roles_has_role$0$$t2@1@@2))) (and (=> (= (ControlFlow 0 210757) 211274) anon4_Then_correct@@1) (=> (= (ControlFlow 0 210757) 211256) anon4_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@2  (=> (and (and (and (not $abort_flag@0@@14) (= inline$$1_Roles_has_role$0$$t8@1@@2 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@2))) (and (= inline$$1_Roles_has_role$0$$t9@1@@2 (= inline$$1_Roles_has_role$0$$t8@1@@2 0)) (= inline$$1_Roles_has_role$0$$t9@1@@2 inline$$1_Roles_has_role$0$$t9@1@@2))) (and (and (= $abort_code@2@@2 $abort_code@1@@14) (= inline$$1_Roles_has_role$0$$t2@1@@2 inline$$1_Roles_has_role$0$$t9@1@@2)) (and (= $abort_flag@1@@2 $abort_flag@0@@14) (= (ControlFlow 0 210803) 210757)))) inline$$1_Roles_has_role$0$L3_correct@@2)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@2  (=> (= $abort_flag@0@@14 true) (=> (and (= $abort_code@1@@14 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@2 inline$$1_Roles_has_role$0$$t6@0@@2)) (and (=> (= (ControlFlow 0 210873) 210821) inline$$1_Roles_has_role$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 210873) 210803) inline$$1_Roles_has_role$0$anon11_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)) (= (ControlFlow 0 210871) 210873)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@2)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)) (= $abort_flag@0@@14 false)) (and (= $abort_code@1@@14 $abort_code@0@@14) (= inline$$1_Roles_has_role$0$$t6@2@@2 inline$$1_Roles_has_role$0$$t6@1@@2))) (and (=> (= (ControlFlow 0 210775) 210821) inline$$1_Roles_has_role$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 210775) 210803) inline$$1_Roles_has_role$0$anon11_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@2  (=> inline$$1_Roles_has_role$0$$t5@1@@2 (and (=> (= (ControlFlow 0 210761) 210871) inline$$1_Roles_has_role$0$anon10_Then_correct@@2) (=> (= (ControlFlow 0 210761) 210775) inline$$1_Roles_has_role$0$anon10_Else_correct@@2)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@2  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@2) (= false false)) (=> (and (and (= $abort_code@2@@2 $abort_code@0@@14) (= inline$$1_Roles_has_role$0$$t2@1@@2 false)) (and (= $abort_flag@1@@2 false) (= (ControlFlow 0 210745) 210757))) inline$$1_Roles_has_role$0$L3_correct@@2))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@2  (=> (and (= _$t0@@16 _$t0@@16) (= 0 0)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@2) (= inline$$1_Roles_has_role$0$$t4@0@@2 (|$addr#$signer| _$t0@@16))) (and (= inline$$1_Roles_has_role$0$$t4@0@@2 inline$$1_Roles_has_role$0$$t4@0@@2) (= inline$$1_Roles_has_role$0$$t5@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@2)))) (and (=> (= (ControlFlow 0 210725) 210761) inline$$1_Roles_has_role$0$anon9_Then_correct@@2) (=> (= (ControlFlow 0 210725) 210745) inline$$1_Roles_has_role$0$anon9_Else_correct@@2))))))
(let ((anon0$1_correct@@16  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@16)) (=> (and (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@18)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@18))
 :qid |Rolesandybpl.8134:20|
 :skolemid |250|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@18))
)) (= _$t0@@16 _$t0@@16)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 210879) 210725))) inline$$1_Roles_has_role$0$anon0_correct@@2))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_83261| stream@@17) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@17) v@@52) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 210343) 210879)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (ControlFlow 0 289311) 210343) inline$$InitEventStore$0$anon0_correct@@16)))
anon0_correct@@16)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@3 () Bool)
(declare-fun $abort_flag@0@@15 () Bool)
(declare-fun $abort_code@1@@15 () Int)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@3 () Bool)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@3 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@3 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@3 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@3 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@3 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@15 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@3 () Bool)
(declare-fun _$t0@@17 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_parent_VASP_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 290104) (let ((anon4_Else_correct@@2  (=> (and (not $abort_flag@2@@3) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$ret0@1@@3)) (and (=> (= (ControlFlow 0 212303) (- 0 290543)) (forall ((addr@@233 Int) ) (!  (=> (|$IsValid'address'| addr@@233) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@233) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@233)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@233) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@233)) 0))))
 :qid |Rolesandybpl.8315:15|
 :skolemid |259|
))) (=> (forall ((addr@@234 Int) ) (!  (=> (|$IsValid'address'| addr@@234) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@234) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@234)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@234) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@234)) 0))))
 :qid |Rolesandybpl.8315:15|
 :skolemid |259|
)) (and (=> (= (ControlFlow 0 212303) (- 0 290592)) (forall ((addr@@235 Int) ) (!  (=> (|$IsValid'address'| addr@@235) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@235) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@235)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@235) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@235)) 1))))
 :qid |Rolesandybpl.8319:15|
 :skolemid |260|
))) (=> (forall ((addr@@236 Int) ) (!  (=> (|$IsValid'address'| addr@@236) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@236) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@236)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@236) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@236)) 1))))
 :qid |Rolesandybpl.8319:15|
 :skolemid |260|
)) (and (=> (= (ControlFlow 0 212303) (- 0 290641)) (forall ((addr@@237 Int) ) (!  (=> (|$IsValid'address'| addr@@237) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@237) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@237)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@237) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@237)) 3))))
 :qid |Rolesandybpl.8323:15|
 :skolemid |261|
))) (=> (forall ((addr@@238 Int) ) (!  (=> (|$IsValid'address'| addr@@238) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@238) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@238)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@238) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@238)) 3))))
 :qid |Rolesandybpl.8323:15|
 :skolemid |261|
)) (and (=> (= (ControlFlow 0 212303) (- 0 290690)) (forall ((addr@@239 Int) ) (!  (=> (|$IsValid'address'| addr@@239) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@239) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@239)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@239) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@239)) 4))))
 :qid |Rolesandybpl.8327:15|
 :skolemid |262|
))) (=> (forall ((addr@@240 Int) ) (!  (=> (|$IsValid'address'| addr@@240) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@240) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@240)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@240) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@240)) 4))))
 :qid |Rolesandybpl.8327:15|
 :skolemid |262|
)) (and (=> (= (ControlFlow 0 212303) (- 0 290739)) (forall ((addr@@241 Int) ) (!  (=> (|$IsValid'address'| addr@@241) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@241) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@241)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@241) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@241)) 2))))
 :qid |Rolesandybpl.8331:15|
 :skolemid |263|
))) (=> (forall ((addr@@242 Int) ) (!  (=> (|$IsValid'address'| addr@@242) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@242) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@242)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@242) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@242)) 2))))
 :qid |Rolesandybpl.8331:15|
 :skolemid |263|
)) (and (=> (= (ControlFlow 0 212303) (- 0 290788)) (forall ((addr@@243 Int) ) (!  (=> (|$IsValid'address'| addr@@243) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@243)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@243) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@243)) 5))))
 :qid |Rolesandybpl.8335:15|
 :skolemid |264|
))) (=> (forall ((addr@@244 Int) ) (!  (=> (|$IsValid'address'| addr@@244) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@244) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@244)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@244) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@244)) 5))))
 :qid |Rolesandybpl.8335:15|
 :skolemid |264|
)) (=> (= (ControlFlow 0 212303) (- 0 290837)) (forall ((addr@@245 Int) ) (!  (=> (|$IsValid'address'| addr@@245) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@245) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@245)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@245) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@245)) 6))))
 :qid |Rolesandybpl.8339:15|
 :skolemid |265|
))))))))))))))))))
(let ((anon4_Then_correct@@2 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@3  (=> $abort_flag@0@@15 (=> (and (and (= $abort_code@1@@15 $abort_code@1@@15) (= $abort_code@3@@3 $abort_code@1@@15)) (and (= $abort_flag@2@@3 true) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$ret0@0@@3))) (and (=> (= (ControlFlow 0 211868) 212321) anon4_Then_correct@@2) (=> (= (ControlFlow 0 211868) 212303) anon4_Else_correct@@2))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@3  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@3 inline$$1_Roles_has_role$0$$t2@1@@3) (= $abort_code@3@@3 $abort_code@2@@3)) (and (= $abort_flag@2@@3 $abort_flag@1@@3) (= inline$$1_Roles_has_role$0$$ret0@1@@3 inline$$1_Roles_has_role$0$$t2@1@@3))) (and (=> (= (ControlFlow 0 211804) 212321) anon4_Then_correct@@2) (=> (= (ControlFlow 0 211804) 212303) anon4_Else_correct@@2)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@3  (=> (and (and (and (not $abort_flag@0@@15) (= inline$$1_Roles_has_role$0$$t8@1@@3 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@3))) (and (= inline$$1_Roles_has_role$0$$t9@1@@3 (= inline$$1_Roles_has_role$0$$t8@1@@3 5)) (= inline$$1_Roles_has_role$0$$t9@1@@3 inline$$1_Roles_has_role$0$$t9@1@@3))) (and (and (= $abort_code@2@@3 $abort_code@1@@15) (= inline$$1_Roles_has_role$0$$t2@1@@3 inline$$1_Roles_has_role$0$$t9@1@@3)) (and (= $abort_flag@1@@3 $abort_flag@0@@15) (= (ControlFlow 0 211850) 211804)))) inline$$1_Roles_has_role$0$L3_correct@@3)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@3  (=> (= $abort_flag@0@@15 true) (=> (and (= $abort_code@1@@15 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@3 inline$$1_Roles_has_role$0$$t6@0@@3)) (and (=> (= (ControlFlow 0 211920) 211868) inline$$1_Roles_has_role$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 211920) 211850) inline$$1_Roles_has_role$0$anon11_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)) (= (ControlFlow 0 211918) 211920)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@3)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)) (= $abort_flag@0@@15 false)) (and (= $abort_code@1@@15 $abort_code@0@@15) (= inline$$1_Roles_has_role$0$$t6@2@@3 inline$$1_Roles_has_role$0$$t6@1@@3))) (and (=> (= (ControlFlow 0 211822) 211868) inline$$1_Roles_has_role$0$anon11_Then_correct@@3) (=> (= (ControlFlow 0 211822) 211850) inline$$1_Roles_has_role$0$anon11_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@3  (=> inline$$1_Roles_has_role$0$$t5@1@@3 (and (=> (= (ControlFlow 0 211808) 211918) inline$$1_Roles_has_role$0$anon10_Then_correct@@3) (=> (= (ControlFlow 0 211808) 211822) inline$$1_Roles_has_role$0$anon10_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@3  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@3) (= false false)) (=> (and (and (= $abort_code@2@@3 $abort_code@0@@15) (= inline$$1_Roles_has_role$0$$t2@1@@3 false)) (and (= $abort_flag@1@@3 false) (= (ControlFlow 0 211792) 211804))) inline$$1_Roles_has_role$0$L3_correct@@3))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@3  (=> (and (= _$t0@@17 _$t0@@17) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@3) (= inline$$1_Roles_has_role$0$$t4@0@@3 (|$addr#$signer| _$t0@@17))) (and (= inline$$1_Roles_has_role$0$$t4@0@@3 inline$$1_Roles_has_role$0$$t4@0@@3) (= inline$$1_Roles_has_role$0$$t5@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@3)))) (and (=> (= (ControlFlow 0 211772) 211808) inline$$1_Roles_has_role$0$anon9_Then_correct@@3) (=> (= (ControlFlow 0 211772) 211792) inline$$1_Roles_has_role$0$anon9_Else_correct@@3))))))
(let ((anon0$1_correct@@17  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@17)) (=> (and (and (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@19)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@19))
 :qid |Rolesandybpl.8282:20|
 :skolemid |258|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@19))
)) (= _$t0@@17 _$t0@@17)) (and (|$IsValid'u64'| 5) (= (ControlFlow 0 211926) 211772))) inline$$1_Roles_has_role$0$anon0_correct@@3))))
(let ((inline$$InitEventStore$0$anon0_correct@@17  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_83261| stream@@18) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@18) v@@53) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 211390) 211926)) anon0$1_correct@@17)))
(let ((anon0_correct@@17  (=> (= (ControlFlow 0 290104) 211390) inline$$InitEventStore$0$anon0_correct@@17)))
anon0_correct@@17)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@0@@0 () Bool)
(declare-fun $abort_flag@0@@16 () Bool)
(declare-fun $t8@0@@4 () Int)
(declare-fun $t6@1 () T@$1_Roles_RoleId)
(declare-fun $t9@0 () Bool)
(declare-fun _$t1@@2 () Int)
(declare-fun $t6@@8 () T@$1_Roles_RoleId)
(declare-fun $abort_code@1@@16 () Int)
(declare-fun $t4@@1 () Int)
(declare-fun $t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@16 () Int)
(declare-fun $t5@0@@1 () Bool)
(declare-fun _$t0@@18 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 290898) (let ((anon12_Then_correct@@7 true))
(let ((L3_correct@@0  (=> (= $t2@0@@0 $t2@0@@0) (and (=> (= (ControlFlow 0 212916) (- 0 291192)) (forall ((addr@@246 Int) ) (!  (=> (|$IsValid'address'| addr@@246) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@246) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@246)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@246) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@246)) 0))))
 :qid |Rolesandybpl.8622:15|
 :skolemid |267|
))) (=> (forall ((addr@@247 Int) ) (!  (=> (|$IsValid'address'| addr@@247) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@247) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@247)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@247) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@247)) 0))))
 :qid |Rolesandybpl.8622:15|
 :skolemid |267|
)) (and (=> (= (ControlFlow 0 212916) (- 0 291241)) (forall ((addr@@248 Int) ) (!  (=> (|$IsValid'address'| addr@@248) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@248) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@248)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@248) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@248)) 1))))
 :qid |Rolesandybpl.8626:15|
 :skolemid |268|
))) (=> (forall ((addr@@249 Int) ) (!  (=> (|$IsValid'address'| addr@@249) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@249) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@249)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@249) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@249)) 1))))
 :qid |Rolesandybpl.8626:15|
 :skolemid |268|
)) (and (=> (= (ControlFlow 0 212916) (- 0 291290)) (forall ((addr@@250 Int) ) (!  (=> (|$IsValid'address'| addr@@250) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@250) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@250)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@250) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@250)) 3))))
 :qid |Rolesandybpl.8630:15|
 :skolemid |269|
))) (=> (forall ((addr@@251 Int) ) (!  (=> (|$IsValid'address'| addr@@251) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@251) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@251)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@251) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@251)) 3))))
 :qid |Rolesandybpl.8630:15|
 :skolemid |269|
)) (and (=> (= (ControlFlow 0 212916) (- 0 291339)) (forall ((addr@@252 Int) ) (!  (=> (|$IsValid'address'| addr@@252) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@252) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@252)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@252) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@252)) 4))))
 :qid |Rolesandybpl.8634:15|
 :skolemid |270|
))) (=> (forall ((addr@@253 Int) ) (!  (=> (|$IsValid'address'| addr@@253) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@253) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@253)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@253) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@253)) 4))))
 :qid |Rolesandybpl.8634:15|
 :skolemid |270|
)) (and (=> (= (ControlFlow 0 212916) (- 0 291388)) (forall ((addr@@254 Int) ) (!  (=> (|$IsValid'address'| addr@@254) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@254) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@254)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@254) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@254)) 2))))
 :qid |Rolesandybpl.8638:15|
 :skolemid |271|
))) (=> (forall ((addr@@255 Int) ) (!  (=> (|$IsValid'address'| addr@@255) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@255) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@255)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@255) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@255)) 2))))
 :qid |Rolesandybpl.8638:15|
 :skolemid |271|
)) (and (=> (= (ControlFlow 0 212916) (- 0 291437)) (forall ((addr@@256 Int) ) (!  (=> (|$IsValid'address'| addr@@256) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@256) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@256)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@256) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@256)) 5))))
 :qid |Rolesandybpl.8642:15|
 :skolemid |272|
))) (=> (forall ((addr@@257 Int) ) (!  (=> (|$IsValid'address'| addr@@257) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@257) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@257)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@257) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@257)) 5))))
 :qid |Rolesandybpl.8642:15|
 :skolemid |272|
)) (=> (= (ControlFlow 0 212916) (- 0 291486)) (forall ((addr@@258 Int) ) (!  (=> (|$IsValid'address'| addr@@258) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@258) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@258)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@258) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@258)) 6))))
 :qid |Rolesandybpl.8646:15|
 :skolemid |273|
))))))))))))))))))
(let ((anon12_Else_correct@@7  (=> (and (not $abort_flag@0@@16) (= $t8@0@@4 (|$role_id#$1_Roles_RoleId| $t6@1))) (=> (and (and (= $t9@0 (= $t8@0@@4 _$t1@@2)) (= $t9@0 $t9@0)) (and (= $t2@0@@0 $t9@0) (= (ControlFlow 0 212962) 212916))) L3_correct@@0))))
(let ((anon11_Then$1_correct@@1  (=> (= $t6@1 $t6@@8) (=> (and (= $abort_flag@0@@16 true) (= $abort_code@1@@16 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 213032) 212980) anon12_Then_correct@@7) (=> (= (ControlFlow 0 213032) 212962) anon12_Else_correct@@7))))))
(let ((anon11_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@1)) (= (ControlFlow 0 213030) 213032)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@1) (=> (and (and (= $t6@0@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@1)) (= $t6@1 $t6@0@@0)) (and (= $abort_flag@0@@16 false) (= $abort_code@1@@16 $abort_code@0@@16))) (and (=> (= (ControlFlow 0 212934) 212980) anon12_Then_correct@@7) (=> (= (ControlFlow 0 212934) 212962) anon12_Else_correct@@7))))))
(let ((anon10_Then_correct@@1  (=> $t5@0@@1 (and (=> (= (ControlFlow 0 212920) 213030) anon11_Then_correct@@2) (=> (= (ControlFlow 0 212920) 212934) anon11_Else_correct@@2)))))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t5@0@@1) (= false false)) (and (= $t2@0@@0 false) (= (ControlFlow 0 212545) 212916))) L3_correct@@0)))
(let ((anon0$1_correct@@18  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@18)) (=> (and (and (and (|$IsValid'u64'| _$t1@@2) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@20)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@20))
 :qid |Rolesandybpl.8521:20|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@20))
))) (and (= _$t0@@18 _$t0@@18) (= _$t1@@2 _$t1@@2))) (and (and (|$IsValid'address'| $t4@@1) (= $t4@@1 (|$addr#$signer| _$t0@@18))) (and (= $t4@@1 $t4@@1) (= $t5@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@1))))) (and (=> (= (ControlFlow 0 212525) 212920) anon10_Then_correct@@1) (=> (= (ControlFlow 0 212525) 212545) anon10_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@18  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_83261| stream@@19) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@19) v@@54) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 212439) 212525)) anon0$1_correct@@18)))
(let ((anon0_correct@@18  (=> (= (ControlFlow 0 290898) 212439) inline$$InitEventStore$0$anon0_correct@@18)))
anon0_correct@@18))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@4 () Bool)
(declare-fun $abort_flag@0@@17 () Bool)
(declare-fun $abort_code@1@@17 () Int)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@4 () Bool)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@4 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@4 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@4 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@4 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@4 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@17 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@4 () Bool)
(declare-fun _$t0@@19 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 291546) (let ((anon4_Else_correct@@3  (=> (and (not $abort_flag@2@@4) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$ret0@1@@4)) (and (=> (= (ControlFlow 0 214050) (- 0 291985)) (forall ((addr@@259 Int) ) (!  (=> (|$IsValid'address'| addr@@259) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@259) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@259)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@259) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@259)) 0))))
 :qid |Rolesandybpl.8718:15|
 :skolemid |275|
))) (=> (forall ((addr@@260 Int) ) (!  (=> (|$IsValid'address'| addr@@260) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@260) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@260)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@260) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@260)) 0))))
 :qid |Rolesandybpl.8718:15|
 :skolemid |275|
)) (and (=> (= (ControlFlow 0 214050) (- 0 292034)) (forall ((addr@@261 Int) ) (!  (=> (|$IsValid'address'| addr@@261) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@261) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@261)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@261) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@261)) 1))))
 :qid |Rolesandybpl.8722:15|
 :skolemid |276|
))) (=> (forall ((addr@@262 Int) ) (!  (=> (|$IsValid'address'| addr@@262) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@262) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@262)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@262) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@262)) 1))))
 :qid |Rolesandybpl.8722:15|
 :skolemid |276|
)) (and (=> (= (ControlFlow 0 214050) (- 0 292083)) (forall ((addr@@263 Int) ) (!  (=> (|$IsValid'address'| addr@@263) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@263) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@263)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@263) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@263)) 3))))
 :qid |Rolesandybpl.8726:15|
 :skolemid |277|
))) (=> (forall ((addr@@264 Int) ) (!  (=> (|$IsValid'address'| addr@@264) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@264) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@264)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@264) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@264)) 3))))
 :qid |Rolesandybpl.8726:15|
 :skolemid |277|
)) (and (=> (= (ControlFlow 0 214050) (- 0 292132)) (forall ((addr@@265 Int) ) (!  (=> (|$IsValid'address'| addr@@265) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@265) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@265)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@265) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@265)) 4))))
 :qid |Rolesandybpl.8730:15|
 :skolemid |278|
))) (=> (forall ((addr@@266 Int) ) (!  (=> (|$IsValid'address'| addr@@266) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@266) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@266)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@266) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@266)) 4))))
 :qid |Rolesandybpl.8730:15|
 :skolemid |278|
)) (and (=> (= (ControlFlow 0 214050) (- 0 292181)) (forall ((addr@@267 Int) ) (!  (=> (|$IsValid'address'| addr@@267) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@267) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@267)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@267) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@267)) 2))))
 :qid |Rolesandybpl.8734:15|
 :skolemid |279|
))) (=> (forall ((addr@@268 Int) ) (!  (=> (|$IsValid'address'| addr@@268) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@268) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@268)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@268) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@268)) 2))))
 :qid |Rolesandybpl.8734:15|
 :skolemid |279|
)) (and (=> (= (ControlFlow 0 214050) (- 0 292230)) (forall ((addr@@269 Int) ) (!  (=> (|$IsValid'address'| addr@@269) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@269) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@269)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@269) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@269)) 5))))
 :qid |Rolesandybpl.8738:15|
 :skolemid |280|
))) (=> (forall ((addr@@270 Int) ) (!  (=> (|$IsValid'address'| addr@@270) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@270) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@270)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@270) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@270)) 5))))
 :qid |Rolesandybpl.8738:15|
 :skolemid |280|
)) (=> (= (ControlFlow 0 214050) (- 0 292279)) (forall ((addr@@271 Int) ) (!  (=> (|$IsValid'address'| addr@@271) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@271) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@271)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@271) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@271)) 6))))
 :qid |Rolesandybpl.8742:15|
 :skolemid |281|
))))))))))))))))))
(let ((anon4_Then_correct@@3 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@4  (=> $abort_flag@0@@17 (=> (and (and (= $abort_code@1@@17 $abort_code@1@@17) (= $abort_code@3@@4 $abort_code@1@@17)) (and (= $abort_flag@2@@4 true) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$ret0@0@@4))) (and (=> (= (ControlFlow 0 213615) 214068) anon4_Then_correct@@3) (=> (= (ControlFlow 0 213615) 214050) anon4_Else_correct@@3))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@4  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@4 inline$$1_Roles_has_role$0$$t2@1@@4) (= $abort_code@3@@4 $abort_code@2@@4)) (and (= $abort_flag@2@@4 $abort_flag@1@@4) (= inline$$1_Roles_has_role$0$$ret0@1@@4 inline$$1_Roles_has_role$0$$t2@1@@4))) (and (=> (= (ControlFlow 0 213551) 214068) anon4_Then_correct@@3) (=> (= (ControlFlow 0 213551) 214050) anon4_Else_correct@@3)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@4  (=> (and (and (and (not $abort_flag@0@@17) (= inline$$1_Roles_has_role$0$$t8@1@@4 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@4))) (and (= inline$$1_Roles_has_role$0$$t9@1@@4 (= inline$$1_Roles_has_role$0$$t8@1@@4 1)) (= inline$$1_Roles_has_role$0$$t9@1@@4 inline$$1_Roles_has_role$0$$t9@1@@4))) (and (and (= $abort_code@2@@4 $abort_code@1@@17) (= inline$$1_Roles_has_role$0$$t2@1@@4 inline$$1_Roles_has_role$0$$t9@1@@4)) (and (= $abort_flag@1@@4 $abort_flag@0@@17) (= (ControlFlow 0 213597) 213551)))) inline$$1_Roles_has_role$0$L3_correct@@4)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@4  (=> (= $abort_flag@0@@17 true) (=> (and (= $abort_code@1@@17 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@4 inline$$1_Roles_has_role$0$$t6@0@@4)) (and (=> (= (ControlFlow 0 213667) 213615) inline$$1_Roles_has_role$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 213667) 213597) inline$$1_Roles_has_role$0$anon11_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@4  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)) (= (ControlFlow 0 213665) 213667)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@4)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@4  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)) (= $abort_flag@0@@17 false)) (and (= $abort_code@1@@17 $abort_code@0@@17) (= inline$$1_Roles_has_role$0$$t6@2@@4 inline$$1_Roles_has_role$0$$t6@1@@4))) (and (=> (= (ControlFlow 0 213569) 213615) inline$$1_Roles_has_role$0$anon11_Then_correct@@4) (=> (= (ControlFlow 0 213569) 213597) inline$$1_Roles_has_role$0$anon11_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@4  (=> inline$$1_Roles_has_role$0$$t5@1@@4 (and (=> (= (ControlFlow 0 213555) 213665) inline$$1_Roles_has_role$0$anon10_Then_correct@@4) (=> (= (ControlFlow 0 213555) 213569) inline$$1_Roles_has_role$0$anon10_Else_correct@@4)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@4  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@4) (= false false)) (=> (and (and (= $abort_code@2@@4 $abort_code@0@@17) (= inline$$1_Roles_has_role$0$$t2@1@@4 false)) (and (= $abort_flag@1@@4 false) (= (ControlFlow 0 213539) 213551))) inline$$1_Roles_has_role$0$L3_correct@@4))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@4  (=> (and (= _$t0@@19 _$t0@@19) (= 1 1)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@4) (= inline$$1_Roles_has_role$0$$t4@0@@4 (|$addr#$signer| _$t0@@19))) (and (= inline$$1_Roles_has_role$0$$t4@0@@4 inline$$1_Roles_has_role$0$$t4@0@@4) (= inline$$1_Roles_has_role$0$$t5@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@4)))) (and (=> (= (ControlFlow 0 213519) 213555) inline$$1_Roles_has_role$0$anon9_Then_correct@@4) (=> (= (ControlFlow 0 213519) 213539) inline$$1_Roles_has_role$0$anon9_Else_correct@@4))))))
(let ((anon0$1_correct@@19  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@19)) (=> (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@21)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@21))
 :qid |Rolesandybpl.8685:20|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@21))
)) (= _$t0@@19 _$t0@@19)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 213673) 213519))) inline$$1_Roles_has_role$0$anon0_correct@@4))))
(let ((inline$$InitEventStore$0$anon0_correct@@19  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@21 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@21)))
 (and (= (|l#Multiset_83261| stream@@20) 0) (forall ((v@@55 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@20) v@@55) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 213137) 213673)) anon0$1_correct@@19)))
(let ((anon0_correct@@19  (=> (= (ControlFlow 0 291546) 213137) inline$$InitEventStore$0$anon0_correct@@19)))
anon0_correct@@19)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@5 () Bool)
(declare-fun $abort_flag@0@@18 () Bool)
(declare-fun $abort_code@1@@18 () Int)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@5 () Bool)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@5 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@5 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@5 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@5 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@5 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@18 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@5 () Bool)
(declare-fun _$t0@@20 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 292339) (let ((anon4_Else_correct@@4  (=> (and (not $abort_flag@2@@5) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$ret0@1@@5)) (and (=> (= (ControlFlow 0 215097) (- 0 292778)) (forall ((addr@@272 Int) ) (!  (=> (|$IsValid'address'| addr@@272) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@272) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@272)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@272) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@272)) 0))))
 :qid |Rolesandybpl.8814:15|
 :skolemid |283|
))) (=> (forall ((addr@@273 Int) ) (!  (=> (|$IsValid'address'| addr@@273) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@273) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@273)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@273) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@273)) 0))))
 :qid |Rolesandybpl.8814:15|
 :skolemid |283|
)) (and (=> (= (ControlFlow 0 215097) (- 0 292827)) (forall ((addr@@274 Int) ) (!  (=> (|$IsValid'address'| addr@@274) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@274) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@274)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@274) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@274)) 1))))
 :qid |Rolesandybpl.8818:15|
 :skolemid |284|
))) (=> (forall ((addr@@275 Int) ) (!  (=> (|$IsValid'address'| addr@@275) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@275) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@275)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@275) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@275)) 1))))
 :qid |Rolesandybpl.8818:15|
 :skolemid |284|
)) (and (=> (= (ControlFlow 0 215097) (- 0 292876)) (forall ((addr@@276 Int) ) (!  (=> (|$IsValid'address'| addr@@276) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@276) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@276)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@276) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@276)) 3))))
 :qid |Rolesandybpl.8822:15|
 :skolemid |285|
))) (=> (forall ((addr@@277 Int) ) (!  (=> (|$IsValid'address'| addr@@277) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@277) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@277)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@277) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@277)) 3))))
 :qid |Rolesandybpl.8822:15|
 :skolemid |285|
)) (and (=> (= (ControlFlow 0 215097) (- 0 292925)) (forall ((addr@@278 Int) ) (!  (=> (|$IsValid'address'| addr@@278) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@278) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@278)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@278) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@278)) 4))))
 :qid |Rolesandybpl.8826:15|
 :skolemid |286|
))) (=> (forall ((addr@@279 Int) ) (!  (=> (|$IsValid'address'| addr@@279) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@279) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@279)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@279) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@279)) 4))))
 :qid |Rolesandybpl.8826:15|
 :skolemid |286|
)) (and (=> (= (ControlFlow 0 215097) (- 0 292974)) (forall ((addr@@280 Int) ) (!  (=> (|$IsValid'address'| addr@@280) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@280) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@280)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@280) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@280)) 2))))
 :qid |Rolesandybpl.8830:15|
 :skolemid |287|
))) (=> (forall ((addr@@281 Int) ) (!  (=> (|$IsValid'address'| addr@@281) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@281) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@281)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@281) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@281)) 2))))
 :qid |Rolesandybpl.8830:15|
 :skolemid |287|
)) (and (=> (= (ControlFlow 0 215097) (- 0 293023)) (forall ((addr@@282 Int) ) (!  (=> (|$IsValid'address'| addr@@282) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@282) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@282)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@282) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@282)) 5))))
 :qid |Rolesandybpl.8834:15|
 :skolemid |288|
))) (=> (forall ((addr@@283 Int) ) (!  (=> (|$IsValid'address'| addr@@283) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@283) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@283)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@283) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@283)) 5))))
 :qid |Rolesandybpl.8834:15|
 :skolemid |288|
)) (=> (= (ControlFlow 0 215097) (- 0 293072)) (forall ((addr@@284 Int) ) (!  (=> (|$IsValid'address'| addr@@284) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@284) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@284)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@284) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@284)) 6))))
 :qid |Rolesandybpl.8838:15|
 :skolemid |289|
))))))))))))))))))
(let ((anon4_Then_correct@@4 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@5  (=> $abort_flag@0@@18 (=> (and (and (= $abort_code@1@@18 $abort_code@1@@18) (= $abort_code@3@@5 $abort_code@1@@18)) (and (= $abort_flag@2@@5 true) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$ret0@0@@5))) (and (=> (= (ControlFlow 0 214662) 215115) anon4_Then_correct@@4) (=> (= (ControlFlow 0 214662) 215097) anon4_Else_correct@@4))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@5  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@5 inline$$1_Roles_has_role$0$$t2@1@@5) (= $abort_code@3@@5 $abort_code@2@@5)) (and (= $abort_flag@2@@5 $abort_flag@1@@5) (= inline$$1_Roles_has_role$0$$ret0@1@@5 inline$$1_Roles_has_role$0$$t2@1@@5))) (and (=> (= (ControlFlow 0 214598) 215115) anon4_Then_correct@@4) (=> (= (ControlFlow 0 214598) 215097) anon4_Else_correct@@4)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@5  (=> (and (and (and (not $abort_flag@0@@18) (= inline$$1_Roles_has_role$0$$t8@1@@5 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@5))) (and (= inline$$1_Roles_has_role$0$$t9@1@@5 (= inline$$1_Roles_has_role$0$$t8@1@@5 4)) (= inline$$1_Roles_has_role$0$$t9@1@@5 inline$$1_Roles_has_role$0$$t9@1@@5))) (and (and (= $abort_code@2@@5 $abort_code@1@@18) (= inline$$1_Roles_has_role$0$$t2@1@@5 inline$$1_Roles_has_role$0$$t9@1@@5)) (and (= $abort_flag@1@@5 $abort_flag@0@@18) (= (ControlFlow 0 214644) 214598)))) inline$$1_Roles_has_role$0$L3_correct@@5)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@5  (=> (= $abort_flag@0@@18 true) (=> (and (= $abort_code@1@@18 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@5 inline$$1_Roles_has_role$0$$t6@0@@5)) (and (=> (= (ControlFlow 0 214714) 214662) inline$$1_Roles_has_role$0$anon11_Then_correct@@5) (=> (= (ControlFlow 0 214714) 214644) inline$$1_Roles_has_role$0$anon11_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@5  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)) (= (ControlFlow 0 214712) 214714)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@5)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@5  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)) (= $abort_flag@0@@18 false)) (and (= $abort_code@1@@18 $abort_code@0@@18) (= inline$$1_Roles_has_role$0$$t6@2@@5 inline$$1_Roles_has_role$0$$t6@1@@5))) (and (=> (= (ControlFlow 0 214616) 214662) inline$$1_Roles_has_role$0$anon11_Then_correct@@5) (=> (= (ControlFlow 0 214616) 214644) inline$$1_Roles_has_role$0$anon11_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@5  (=> inline$$1_Roles_has_role$0$$t5@1@@5 (and (=> (= (ControlFlow 0 214602) 214712) inline$$1_Roles_has_role$0$anon10_Then_correct@@5) (=> (= (ControlFlow 0 214602) 214616) inline$$1_Roles_has_role$0$anon10_Else_correct@@5)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@5  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@5) (= false false)) (=> (and (and (= $abort_code@2@@5 $abort_code@0@@18) (= inline$$1_Roles_has_role$0$$t2@1@@5 false)) (and (= $abort_flag@1@@5 false) (= (ControlFlow 0 214586) 214598))) inline$$1_Roles_has_role$0$L3_correct@@5))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@5  (=> (and (= _$t0@@20 _$t0@@20) (= 4 4)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@5) (= inline$$1_Roles_has_role$0$$t4@0@@5 (|$addr#$signer| _$t0@@20))) (and (= inline$$1_Roles_has_role$0$$t4@0@@5 inline$$1_Roles_has_role$0$$t4@0@@5) (= inline$$1_Roles_has_role$0$$t5@1@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@5)))) (and (=> (= (ControlFlow 0 214566) 214602) inline$$1_Roles_has_role$0$anon9_Then_correct@@5) (=> (= (ControlFlow 0 214566) 214586) inline$$1_Roles_has_role$0$anon9_Else_correct@@5))))))
(let ((anon0$1_correct@@20  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@20)) (=> (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@22)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@22))
 :qid |Rolesandybpl.8781:20|
 :skolemid |282|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@22))
)) (= _$t0@@20 _$t0@@20)) (and (|$IsValid'u64'| 4) (= (ControlFlow 0 214720) 214566))) inline$$1_Roles_has_role$0$anon0_correct@@5))))
(let ((inline$$InitEventStore$0$anon0_correct@@20  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@22 T@$1_Event_EventHandle) ) (! (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@22)))
 (and (= (|l#Multiset_83261| stream@@21) 0) (forall ((v@@56 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@21) v@@56) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 214184) 214720)) anon0$1_correct@@20)))
(let ((anon0_correct@@20  (=> (= (ControlFlow 0 292339) 214184) inline$$InitEventStore$0$anon0_correct@@20)))
anon0_correct@@20)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@2@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@6 () Bool)
(declare-fun $abort_flag@0@@19 () Bool)
(declare-fun $abort_code@1@@19 () Int)
(declare-fun $abort_code@3@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@6 () Bool)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@6 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@6 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@6 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@6 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@19 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@6 () Bool)
(declare-fun _$t0@@21 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_has_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 293132) (let ((anon4_Else_correct@@5  (=> (and (not $abort_flag@2@@6) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$ret0@1@@6)) (and (=> (= (ControlFlow 0 216144) (- 0 293571)) (forall ((addr@@285 Int) ) (!  (=> (|$IsValid'address'| addr@@285) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@285) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@285)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@285) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@285)) 0))))
 :qid |Rolesandybpl.8910:15|
 :skolemid |291|
))) (=> (forall ((addr@@286 Int) ) (!  (=> (|$IsValid'address'| addr@@286) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@286) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@286)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@286) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@286)) 0))))
 :qid |Rolesandybpl.8910:15|
 :skolemid |291|
)) (and (=> (= (ControlFlow 0 216144) (- 0 293620)) (forall ((addr@@287 Int) ) (!  (=> (|$IsValid'address'| addr@@287) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@287) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@287)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@287) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@287)) 1))))
 :qid |Rolesandybpl.8914:15|
 :skolemid |292|
))) (=> (forall ((addr@@288 Int) ) (!  (=> (|$IsValid'address'| addr@@288) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@288) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@288)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@288) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@288)) 1))))
 :qid |Rolesandybpl.8914:15|
 :skolemid |292|
)) (and (=> (= (ControlFlow 0 216144) (- 0 293669)) (forall ((addr@@289 Int) ) (!  (=> (|$IsValid'address'| addr@@289) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@289) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@289)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@289) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@289)) 3))))
 :qid |Rolesandybpl.8918:15|
 :skolemid |293|
))) (=> (forall ((addr@@290 Int) ) (!  (=> (|$IsValid'address'| addr@@290) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@290) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@290)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@290) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@290)) 3))))
 :qid |Rolesandybpl.8918:15|
 :skolemid |293|
)) (and (=> (= (ControlFlow 0 216144) (- 0 293718)) (forall ((addr@@291 Int) ) (!  (=> (|$IsValid'address'| addr@@291) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@291) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@291)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@291) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@291)) 4))))
 :qid |Rolesandybpl.8922:15|
 :skolemid |294|
))) (=> (forall ((addr@@292 Int) ) (!  (=> (|$IsValid'address'| addr@@292) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@292) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@292)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@292) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@292)) 4))))
 :qid |Rolesandybpl.8922:15|
 :skolemid |294|
)) (and (=> (= (ControlFlow 0 216144) (- 0 293767)) (forall ((addr@@293 Int) ) (!  (=> (|$IsValid'address'| addr@@293) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@293) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@293)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@293) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@293)) 2))))
 :qid |Rolesandybpl.8926:15|
 :skolemid |295|
))) (=> (forall ((addr@@294 Int) ) (!  (=> (|$IsValid'address'| addr@@294) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@294) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@294)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@294) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@294)) 2))))
 :qid |Rolesandybpl.8926:15|
 :skolemid |295|
)) (and (=> (= (ControlFlow 0 216144) (- 0 293816)) (forall ((addr@@295 Int) ) (!  (=> (|$IsValid'address'| addr@@295) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@295) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@295)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@295) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@295)) 5))))
 :qid |Rolesandybpl.8930:15|
 :skolemid |296|
))) (=> (forall ((addr@@296 Int) ) (!  (=> (|$IsValid'address'| addr@@296) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@296) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@296)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@296) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@296)) 5))))
 :qid |Rolesandybpl.8930:15|
 :skolemid |296|
)) (=> (= (ControlFlow 0 216144) (- 0 293865)) (forall ((addr@@297 Int) ) (!  (=> (|$IsValid'address'| addr@@297) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@297) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@297)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@297) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@297)) 6))))
 :qid |Rolesandybpl.8934:15|
 :skolemid |297|
))))))))))))))))))
(let ((anon4_Then_correct@@5 true))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@6  (=> $abort_flag@0@@19 (=> (and (and (= $abort_code@1@@19 $abort_code@1@@19) (= $abort_code@3@@6 $abort_code@1@@19)) (and (= $abort_flag@2@@6 true) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$ret0@0@@6))) (and (=> (= (ControlFlow 0 215709) 216162) anon4_Then_correct@@5) (=> (= (ControlFlow 0 215709) 216144) anon4_Else_correct@@5))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@6  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@6 inline$$1_Roles_has_role$0$$t2@1@@6) (= $abort_code@3@@6 $abort_code@2@@6)) (and (= $abort_flag@2@@6 $abort_flag@1@@6) (= inline$$1_Roles_has_role$0$$ret0@1@@6 inline$$1_Roles_has_role$0$$t2@1@@6))) (and (=> (= (ControlFlow 0 215645) 216162) anon4_Then_correct@@5) (=> (= (ControlFlow 0 215645) 216144) anon4_Else_correct@@5)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@6  (=> (and (and (and (not $abort_flag@0@@19) (= inline$$1_Roles_has_role$0$$t8@1@@6 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@6))) (and (= inline$$1_Roles_has_role$0$$t9@1@@6 (= inline$$1_Roles_has_role$0$$t8@1@@6 3)) (= inline$$1_Roles_has_role$0$$t9@1@@6 inline$$1_Roles_has_role$0$$t9@1@@6))) (and (and (= $abort_code@2@@6 $abort_code@1@@19) (= inline$$1_Roles_has_role$0$$t2@1@@6 inline$$1_Roles_has_role$0$$t9@1@@6)) (and (= $abort_flag@1@@6 $abort_flag@0@@19) (= (ControlFlow 0 215691) 215645)))) inline$$1_Roles_has_role$0$L3_correct@@6)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@6  (=> (= $abort_flag@0@@19 true) (=> (and (= $abort_code@1@@19 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@6 inline$$1_Roles_has_role$0$$t6@0@@6)) (and (=> (= (ControlFlow 0 215761) 215709) inline$$1_Roles_has_role$0$anon11_Then_correct@@6) (=> (= (ControlFlow 0 215761) 215691) inline$$1_Roles_has_role$0$anon11_Else_correct@@6))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)) (= (ControlFlow 0 215759) 215761)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@6)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)) (= $abort_flag@0@@19 false)) (and (= $abort_code@1@@19 $abort_code@0@@19) (= inline$$1_Roles_has_role$0$$t6@2@@6 inline$$1_Roles_has_role$0$$t6@1@@6))) (and (=> (= (ControlFlow 0 215663) 215709) inline$$1_Roles_has_role$0$anon11_Then_correct@@6) (=> (= (ControlFlow 0 215663) 215691) inline$$1_Roles_has_role$0$anon11_Else_correct@@6))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@6  (=> inline$$1_Roles_has_role$0$$t5@1@@6 (and (=> (= (ControlFlow 0 215649) 215759) inline$$1_Roles_has_role$0$anon10_Then_correct@@6) (=> (= (ControlFlow 0 215649) 215663) inline$$1_Roles_has_role$0$anon10_Else_correct@@6)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@6  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@6) (= false false)) (=> (and (and (= $abort_code@2@@6 $abort_code@0@@19) (= inline$$1_Roles_has_role$0$$t2@1@@6 false)) (and (= $abort_flag@1@@6 false) (= (ControlFlow 0 215633) 215645))) inline$$1_Roles_has_role$0$L3_correct@@6))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@6  (=> (and (= _$t0@@21 _$t0@@21) (= 3 3)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@6) (= inline$$1_Roles_has_role$0$$t4@0@@6 (|$addr#$signer| _$t0@@21))) (and (= inline$$1_Roles_has_role$0$$t4@0@@6 inline$$1_Roles_has_role$0$$t4@0@@6) (= inline$$1_Roles_has_role$0$$t5@1@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@6)))) (and (=> (= (ControlFlow 0 215613) 215649) inline$$1_Roles_has_role$0$anon9_Then_correct@@6) (=> (= (ControlFlow 0 215613) 215633) inline$$1_Roles_has_role$0$anon9_Else_correct@@6))))))
(let ((anon0$1_correct@@21  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@21)) (=> (and (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@23)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@23))
 :qid |Rolesandybpl.8877:20|
 :skolemid |290|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@23))
)) (= _$t0@@21 _$t0@@21)) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 215767) 215613))) inline$$1_Roles_has_role$0$anon0_correct@@6))))
(let ((inline$$InitEventStore$0$anon0_correct@@21  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@23 T@$1_Event_EventHandle) ) (! (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@23)))
 (and (= (|l#Multiset_83261| stream@@22) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@22) v@@57) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 215231) 215767)) anon0$1_correct@@21)))
(let ((anon0_correct@@21  (=> (= (ControlFlow 0 293132) 215231) inline$$InitEventStore$0$anon0_correct@@21)))
anon0_correct@@21)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@9 () Int)
(declare-fun $t9@@9 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_113696)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@22 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 293925) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 217150) (- 0 294696)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 217150) (- 0 294750)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@9))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@9))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@9))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@9))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@9 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@9)) (and (= $t6@@9 $t6@@9) (= (ControlFlow 0 216982) 217150))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@3 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@9)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@2)) 5)) (= 3 $t6@@9)))) (and (= $t6@@9 $t6@@9) (= (ControlFlow 0 217202) 217150))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@3))) 6)) (and (=> (= (ControlFlow 0 216940) (- 0 294316)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 216940) (- 0 294328)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 216940) (- 0 294346)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 216940) (- 0 294357)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 216940) (- 0 294369)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 216940) (- 0 294387)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 216940) (- 0 294396)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@3))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@3))) 6) (and (=> (= (ControlFlow 0 216940) (- 0 294411)) (forall ((addr@@298 Int) ) (!  (=> (|$IsValid'address'| addr@@298) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@298) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@298)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@298) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@298)) 0))))
 :qid |Rolesandybpl.9154:15|
 :skolemid |299|
))) (=> (forall ((addr@@299 Int) ) (!  (=> (|$IsValid'address'| addr@@299) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@299) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@299)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@299) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@299)) 0))))
 :qid |Rolesandybpl.9154:15|
 :skolemid |299|
)) (and (=> (= (ControlFlow 0 216940) (- 0 294458)) (forall ((addr@@300 Int) ) (!  (=> (|$IsValid'address'| addr@@300) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@300) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@300)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@300) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@300)) 1))))
 :qid |Rolesandybpl.9158:15|
 :skolemid |300|
))) (=> (forall ((addr@@301 Int) ) (!  (=> (|$IsValid'address'| addr@@301) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@301) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@301)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@301) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@301)) 1))))
 :qid |Rolesandybpl.9158:15|
 :skolemid |300|
)) (and (=> (= (ControlFlow 0 216940) (- 0 294505)) (forall ((addr@@302 Int) ) (!  (=> (|$IsValid'address'| addr@@302) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@302) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@302)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@302) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@302)) 3))))
 :qid |Rolesandybpl.9162:15|
 :skolemid |301|
))) (=> (forall ((addr@@303 Int) ) (!  (=> (|$IsValid'address'| addr@@303) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@303) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@303)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@303) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@303)) 3))))
 :qid |Rolesandybpl.9162:15|
 :skolemid |301|
)) (and (=> (= (ControlFlow 0 216940) (- 0 294552)) (forall ((addr@@304 Int) ) (!  (=> (|$IsValid'address'| addr@@304) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@304) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@304)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@304) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@304)) 4))))
 :qid |Rolesandybpl.9166:15|
 :skolemid |302|
))) (=> (forall ((addr@@305 Int) ) (!  (=> (|$IsValid'address'| addr@@305) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@305) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@305)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@305) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@305)) 4))))
 :qid |Rolesandybpl.9166:15|
 :skolemid |302|
)) (and (=> (= (ControlFlow 0 216940) (- 0 294599)) (forall ((addr@@306 Int) ) (!  (=> (|$IsValid'address'| addr@@306) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@306) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@306)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@306) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@306)) 2))))
 :qid |Rolesandybpl.9170:15|
 :skolemid |303|
))) (=> (forall ((addr@@307 Int) ) (!  (=> (|$IsValid'address'| addr@@307) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@307) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@307)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@307) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@307)) 2))))
 :qid |Rolesandybpl.9170:15|
 :skolemid |303|
)) (=> (= (ControlFlow 0 216940) (- 0 294646)) (forall ((addr@@308 Int) ) (!  (=> (|$IsValid'address'| addr@@308) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@308) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@1) addr@@308)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@308) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@308)) 5))))
 :qid |Rolesandybpl.9174:15|
 :skolemid |304|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 216508) 216940))) anon7_correct)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 216954) 216940))) anon7_correct)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@9) (and (=> (= (ControlFlow 0 216494) 216954) anon11_Then_correct@@3) (=> (= (ControlFlow 0 216494) 216508) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 6) (= $t8@@3 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 216488) (- 0 294166)) (=> (= 6 0) (= $t8@@3 173345816))) (=> (=> (= 6 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 216488) (- 0 294182)) (=> (= 6 1) (= $t8@@3 186537453))) (=> (=> (= 6 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 216488) (- 0 294198)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@9 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 216488) 216982) anon10_Then_correct@@2) (=> (= (ControlFlow 0 216488) 216494) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@22  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@22)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@24)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@24))
 :qid |Rolesandybpl.8985:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@24))
)) (= $t2@@1 (|$addr#$signer| _$t0@@22))) (and (= $t3@@1 (|$addr#$signer| _$t0@@22)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@22 _$t0@@22) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 (|$addr#$signer| _$t0@@22)) (= $t5@@3  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@2)) 5))))))) (and (=> (= (ControlFlow 0 216410) 217202) anon9_Then_correct) (=> (= (ControlFlow 0 216410) 216488) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@22  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_83261| stream@@23) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@23) v@@58) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 216280) 216410)) anon0$1_correct@@22)))
(let ((anon0_correct@@22  (=> (= (ControlFlow 0 293925) 216280) inline$$InitEventStore$0$anon0_correct@@22)))
anon0_correct@@22))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@23 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@10 () Int)
(declare-fun $t9@@10 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_113696)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@4 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 294859) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 218331) (- 0 295688)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@23) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@23) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@23) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@23) 186537453))) (=> (= (ControlFlow 0 218331) (- 0 295764)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@10))) (and (not (= (|$addr#$signer| _$t0@@23) 186537453)) (= 2 $t6@@10))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@10))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@10))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@10))) (and (not (= (|$addr#$signer| _$t0@@23) 186537453)) (= 2 $t6@@10))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@10 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@10)) (and (= $t6@@10 $t6@@10) (= (ControlFlow 0 218099) 218331))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@10)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@10))) (and (not (= (|$addr#$signer| _$t0@@23) 186537453)) (= 2 $t6@@10)))) (and (= $t6@@10 $t6@@10) (= (ControlFlow 0 218403) 218331))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@4))) 2)) (and (=> (= (ControlFlow 0 218057) (- 0 295280)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 218057) (- 0 295292)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 218057) (- 0 295310)) (not (not (= (|$addr#$signer| _$t0@@23) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@23) 186537453))) (and (=> (= (ControlFlow 0 218057) (- 0 295324)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 218057) (- 0 295335)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 218057) (- 0 295347)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 218057) (- 0 295365)) (not (not (= (|$addr#$signer| _$t0@@23) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@23) 186537453))) (and (=> (= (ControlFlow 0 218057) (- 0 295379)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 218057) (- 0 295388)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@4))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@4))) 2) (and (=> (= (ControlFlow 0 218057) (- 0 295403)) (forall ((addr@@309 Int) ) (!  (=> (|$IsValid'address'| addr@@309) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@309) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@309)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@309) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@309)) 0))))
 :qid |Rolesandybpl.9412:15|
 :skolemid |306|
))) (=> (forall ((addr@@310 Int) ) (!  (=> (|$IsValid'address'| addr@@310) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@310) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@310)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@310) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@310)) 0))))
 :qid |Rolesandybpl.9412:15|
 :skolemid |306|
)) (and (=> (= (ControlFlow 0 218057) (- 0 295450)) (forall ((addr@@311 Int) ) (!  (=> (|$IsValid'address'| addr@@311) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@311) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@311)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@311) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@311)) 1))))
 :qid |Rolesandybpl.9416:15|
 :skolemid |307|
))) (=> (forall ((addr@@312 Int) ) (!  (=> (|$IsValid'address'| addr@@312) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@312) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@312)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@312) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@312)) 1))))
 :qid |Rolesandybpl.9416:15|
 :skolemid |307|
)) (and (=> (= (ControlFlow 0 218057) (- 0 295497)) (forall ((addr@@313 Int) ) (!  (=> (|$IsValid'address'| addr@@313) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@313) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@313)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@313) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@313)) 3))))
 :qid |Rolesandybpl.9420:15|
 :skolemid |308|
))) (=> (forall ((addr@@314 Int) ) (!  (=> (|$IsValid'address'| addr@@314) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@314) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@314)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@314) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@314)) 3))))
 :qid |Rolesandybpl.9420:15|
 :skolemid |308|
)) (and (=> (= (ControlFlow 0 218057) (- 0 295544)) (forall ((addr@@315 Int) ) (!  (=> (|$IsValid'address'| addr@@315) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@315) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@315)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@315) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@315)) 4))))
 :qid |Rolesandybpl.9424:15|
 :skolemid |309|
))) (=> (forall ((addr@@316 Int) ) (!  (=> (|$IsValid'address'| addr@@316) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@316) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@316)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@316) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@316)) 4))))
 :qid |Rolesandybpl.9424:15|
 :skolemid |309|
)) (and (=> (= (ControlFlow 0 218057) (- 0 295591)) (forall ((addr@@317 Int) ) (!  (=> (|$IsValid'address'| addr@@317) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@317) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@317)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@317) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@317)) 5))))
 :qid |Rolesandybpl.9428:15|
 :skolemid |310|
))) (=> (forall ((addr@@318 Int) ) (!  (=> (|$IsValid'address'| addr@@318) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@318) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@318)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@318) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@318)) 5))))
 :qid |Rolesandybpl.9428:15|
 :skolemid |310|
)) (=> (= (ControlFlow 0 218057) (- 0 295638)) (forall ((addr@@319 Int) ) (!  (=> (|$IsValid'address'| addr@@319) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@319) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@2) addr@@319)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@319) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@319)) 6))))
 :qid |Rolesandybpl.9432:15|
 :skolemid |311|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 217597) 218057))) anon7_correct@@0)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 218071) 218057))) anon7_correct@@0)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@10) (and (=> (= (ControlFlow 0 217583) 218071) anon11_Then_correct@@4) (=> (= (ControlFlow 0 217583) 217597) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 2) (= $t8@@4 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 217577) (- 0 295130)) (=> (= 2 0) (= $t8@@4 173345816))) (=> (=> (= 2 0) (= $t8@@4 173345816)) (and (=> (= (ControlFlow 0 217577) (- 0 295146)) (=> (= 2 1) (= $t8@@4 186537453))) (=> (=> (= 2 1) (= $t8@@4 186537453)) (and (=> (= (ControlFlow 0 217577) (- 0 295162)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@10 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 217577) 218099) anon10_Then_correct@@3) (=> (= (ControlFlow 0 217577) 217583) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@23  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@23)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@25)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@25))
 :qid |Rolesandybpl.9233:20|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@25))
)) (= $t2@@2 (|$addr#$signer| _$t0@@23))) (and (= $t3@@2 (|$addr#$signer| _$t0@@23)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@23 _$t0@@23) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 (|$addr#$signer| _$t0@@23)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@23) 186537453))))))) (and (=> (= (ControlFlow 0 217499) 218403) anon9_Then_correct@@0) (=> (= (ControlFlow 0 217499) 217577) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@23  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@25 T@$1_Event_EventHandle) ) (! (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@25)))
 (and (= (|l#Multiset_83261| stream@@24) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@24) v@@59) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 217357) 217499)) anon0$1_correct@@23)))
(let ((anon0_correct@@23  (=> (= (ControlFlow 0 294859) 217357) inline$$InitEventStore$0$anon0_correct@@23)))
anon0_correct@@23))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@24 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@11 () Int)
(declare-fun $t9@@11 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_113696)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@5 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 295911) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 219540) (- 0 296740)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@24) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@24) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@24) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@24) 186537453))) (=> (= (ControlFlow 0 219540) (- 0 296816)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@11))) (and (not (= (|$addr#$signer| _$t0@@24) 186537453)) (= 2 $t6@@11))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@11))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@11))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@11))) (and (not (= (|$addr#$signer| _$t0@@24) 186537453)) (= 2 $t6@@11))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@11 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@11)) (and (= $t6@@11 $t6@@11) (= (ControlFlow 0 219308) 219540))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@5 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@11)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@4)) 1)) (= 3 $t6@@11))) (and (not (= (|$addr#$signer| _$t0@@24) 186537453)) (= 2 $t6@@11)))) (and (= $t6@@11 $t6@@11) (= (ControlFlow 0 219612) 219540))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@5))) 5)) (and (=> (= (ControlFlow 0 219266) (- 0 296332)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 219266) (- 0 296344)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 219266) (- 0 296362)) (not (not (= (|$addr#$signer| _$t0@@24) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@24) 186537453))) (and (=> (= (ControlFlow 0 219266) (- 0 296376)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 219266) (- 0 296387)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 219266) (- 0 296399)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 219266) (- 0 296417)) (not (not (= (|$addr#$signer| _$t0@@24) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@24) 186537453))) (and (=> (= (ControlFlow 0 219266) (- 0 296431)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 219266) (- 0 296440)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@5))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@5))) 5) (and (=> (= (ControlFlow 0 219266) (- 0 296455)) (forall ((addr@@320 Int) ) (!  (=> (|$IsValid'address'| addr@@320) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@320) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@320)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@320) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@320)) 0))))
 :qid |Rolesandybpl.9670:15|
 :skolemid |313|
))) (=> (forall ((addr@@321 Int) ) (!  (=> (|$IsValid'address'| addr@@321) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@321) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@321)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@321) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@321)) 0))))
 :qid |Rolesandybpl.9670:15|
 :skolemid |313|
)) (and (=> (= (ControlFlow 0 219266) (- 0 296502)) (forall ((addr@@322 Int) ) (!  (=> (|$IsValid'address'| addr@@322) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@322)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@322) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@322)) 1))))
 :qid |Rolesandybpl.9674:15|
 :skolemid |314|
))) (=> (forall ((addr@@323 Int) ) (!  (=> (|$IsValid'address'| addr@@323) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@323)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@323) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@323)) 1))))
 :qid |Rolesandybpl.9674:15|
 :skolemid |314|
)) (and (=> (= (ControlFlow 0 219266) (- 0 296549)) (forall ((addr@@324 Int) ) (!  (=> (|$IsValid'address'| addr@@324) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@324)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@324) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@324)) 3))))
 :qid |Rolesandybpl.9678:15|
 :skolemid |315|
))) (=> (forall ((addr@@325 Int) ) (!  (=> (|$IsValid'address'| addr@@325) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@325)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@325) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@325)) 3))))
 :qid |Rolesandybpl.9678:15|
 :skolemid |315|
)) (and (=> (= (ControlFlow 0 219266) (- 0 296596)) (forall ((addr@@326 Int) ) (!  (=> (|$IsValid'address'| addr@@326) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@326)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@326) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@326)) 4))))
 :qid |Rolesandybpl.9682:15|
 :skolemid |316|
))) (=> (forall ((addr@@327 Int) ) (!  (=> (|$IsValid'address'| addr@@327) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@327)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@327) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@327)) 4))))
 :qid |Rolesandybpl.9682:15|
 :skolemid |316|
)) (and (=> (= (ControlFlow 0 219266) (- 0 296643)) (forall ((addr@@328 Int) ) (!  (=> (|$IsValid'address'| addr@@328) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@328)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@328) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@328)) 2))))
 :qid |Rolesandybpl.9686:15|
 :skolemid |317|
))) (=> (forall ((addr@@329 Int) ) (!  (=> (|$IsValid'address'| addr@@329) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@329)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@329) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@329)) 2))))
 :qid |Rolesandybpl.9686:15|
 :skolemid |317|
)) (=> (= (ControlFlow 0 219266) (- 0 296690)) (forall ((addr@@330 Int) ) (!  (=> (|$IsValid'address'| addr@@330) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@3) addr@@330)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@330) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@330)) 6))))
 :qid |Rolesandybpl.9690:15|
 :skolemid |318|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 218806) 219266))) anon7_correct@@1)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 219280) 219266))) anon7_correct@@1)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@11) (and (=> (= (ControlFlow 0 218792) 219280) anon11_Then_correct@@5) (=> (= (ControlFlow 0 218792) 218806) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 5) (= $t8@@5 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 218786) (- 0 296182)) (=> (= 5 0) (= $t8@@5 173345816))) (=> (=> (= 5 0) (= $t8@@5 173345816)) (and (=> (= (ControlFlow 0 218786) (- 0 296198)) (=> (= 5 1) (= $t8@@5 186537453))) (=> (=> (= 5 1) (= $t8@@5 186537453)) (and (=> (= (ControlFlow 0 218786) (- 0 296214)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@11 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 218786) 219308) anon10_Then_correct@@4) (=> (= (ControlFlow 0 218786) 218792) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@24  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@24)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |Rolesandybpl.9491:20|
 :skolemid |312|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@26))
)) (= $t2@@3 (|$addr#$signer| _$t0@@24))) (and (= $t3@@3 (|$addr#$signer| _$t0@@24)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@24 _$t0@@24) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 (|$addr#$signer| _$t0@@24)) (= $t5@@5  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@4)) 1))) (not (= (|$addr#$signer| _$t0@@24) 186537453))))))) (and (=> (= (ControlFlow 0 218708) 219612) anon9_Then_correct@@1) (=> (= (ControlFlow 0 218708) 218786) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@24  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@26 T@$1_Event_EventHandle) ) (! (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@26)))
 (and (= (|l#Multiset_83261| stream@@25) 0) (forall ((v@@60 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@25) v@@60) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 218566) 218708)) anon0$1_correct@@24)))
(let ((anon0_correct@@24  (=> (= (ControlFlow 0 295911) 218566) inline$$InitEventStore$0$anon0_correct@@24)))
anon0_correct@@24))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@25 () T@$signer)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@12 () Int)
(declare-fun $t9@@12 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_113696)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@6 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 296963) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 220761) (- 0 297822)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@25) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@25) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@25) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@25) 173345816))) (=> (= (ControlFlow 0 220761) (- 0 297898)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@12)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@12))) (and (not (= (|$addr#$signer| _$t0@@25) 173345816)) (= 2 $t6@@12))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@12))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@12))) (and (not (= (|$addr#$signer| _$t0@@25) 173345816)) (= 2 $t6@@12))))))))
(let ((anon10_Then_correct@@5  (=> $t9@@12 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@12)) (and (= $t6@@12 $t6@@12) (= (ControlFlow 0 220529) 220761))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@25) 173345816)) (= 2 $t6@@12)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@12))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@12))) (and (not (= (|$addr#$signer| _$t0@@25) 173345816)) (= 2 $t6@@12)))) (and (= $t6@@12 $t6@@12) (= (ControlFlow 0 220853) 220761))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@6)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@6))) 4)) (and (=> (= (ControlFlow 0 220487) (- 0 297414)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 220487) (- 0 297426)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 220487) (- 0 297444)) (not (not (= (|$addr#$signer| _$t0@@25) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@25) 173345816))) (and (=> (= (ControlFlow 0 220487) (- 0 297458)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 220487) (- 0 297469)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 220487) (- 0 297481)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 220487) (- 0 297499)) (not (not (= (|$addr#$signer| _$t0@@25) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@25) 173345816))) (and (=> (= (ControlFlow 0 220487) (- 0 297513)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@6)) (and (=> (= (ControlFlow 0 220487) (- 0 297522)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@6))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@6))) 4) (and (=> (= (ControlFlow 0 220487) (- 0 297537)) (forall ((addr@@331 Int) ) (!  (=> (|$IsValid'address'| addr@@331) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@331)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@331) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@331)) 0))))
 :qid |Rolesandybpl.9928:15|
 :skolemid |320|
))) (=> (forall ((addr@@332 Int) ) (!  (=> (|$IsValid'address'| addr@@332) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@332)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@332) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@332)) 0))))
 :qid |Rolesandybpl.9928:15|
 :skolemid |320|
)) (and (=> (= (ControlFlow 0 220487) (- 0 297584)) (forall ((addr@@333 Int) ) (!  (=> (|$IsValid'address'| addr@@333) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@333)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@333) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@333)) 1))))
 :qid |Rolesandybpl.9932:15|
 :skolemid |321|
))) (=> (forall ((addr@@334 Int) ) (!  (=> (|$IsValid'address'| addr@@334) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@334)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@334) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@334)) 1))))
 :qid |Rolesandybpl.9932:15|
 :skolemid |321|
)) (and (=> (= (ControlFlow 0 220487) (- 0 297631)) (forall ((addr@@335 Int) ) (!  (=> (|$IsValid'address'| addr@@335) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@335) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@335)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@335) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@335)) 3))))
 :qid |Rolesandybpl.9936:15|
 :skolemid |322|
))) (=> (forall ((addr@@336 Int) ) (!  (=> (|$IsValid'address'| addr@@336) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@336) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@336)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@336) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@336)) 3))))
 :qid |Rolesandybpl.9936:15|
 :skolemid |322|
)) (and (=> (= (ControlFlow 0 220487) (- 0 297678)) (forall ((addr@@337 Int) ) (!  (=> (|$IsValid'address'| addr@@337) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@337) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@337)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@337) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@337)) 2))))
 :qid |Rolesandybpl.9940:15|
 :skolemid |323|
))) (=> (forall ((addr@@338 Int) ) (!  (=> (|$IsValid'address'| addr@@338) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@338) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@338)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@338) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@338)) 2))))
 :qid |Rolesandybpl.9940:15|
 :skolemid |323|
)) (and (=> (= (ControlFlow 0 220487) (- 0 297725)) (forall ((addr@@339 Int) ) (!  (=> (|$IsValid'address'| addr@@339) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@339) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@339)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@339) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@339)) 5))))
 :qid |Rolesandybpl.9944:15|
 :skolemid |324|
))) (=> (forall ((addr@@340 Int) ) (!  (=> (|$IsValid'address'| addr@@340) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@340) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@340)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@340) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@340)) 5))))
 :qid |Rolesandybpl.9944:15|
 :skolemid |324|
)) (=> (= (ControlFlow 0 220487) (- 0 297772)) (forall ((addr@@341 Int) ) (!  (=> (|$IsValid'address'| addr@@341) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@4) addr@@341)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@341) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@341)) 6))))
 :qid |Rolesandybpl.9948:15|
 :skolemid |325|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@6  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 220027) 220487))) anon7_correct@@2)))
(let ((anon11_Then_correct@@6  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 220501) 220487))) anon7_correct@@2)))
(let ((anon10_Else_correct@@5  (=> (not $t9@@12) (and (=> (= (ControlFlow 0 220013) 220501) anon11_Then_correct@@6) (=> (= (ControlFlow 0 220013) 220027) anon11_Else_correct@@6)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 4) (= $t8@@6 (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 220007) (- 0 297264)) (=> (= 4 0) (= $t8@@6 173345816))) (=> (=> (= 4 0) (= $t8@@6 173345816)) (and (=> (= (ControlFlow 0 220007) (- 0 297280)) (=> (= 4 1) (= $t8@@6 186537453))) (=> (=> (= 4 1) (= $t8@@6 186537453)) (and (=> (= (ControlFlow 0 220007) (- 0 297296)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@6)) (=> (= $t9@@12 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 220007) 220529) anon10_Then_correct@@5) (=> (= (ControlFlow 0 220007) 220013) anon10_Else_correct@@5)))))))))))))
(let ((anon0$1_correct@@25  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@25)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (=> (and (and (and (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@27)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@27))
 :qid |Rolesandybpl.9749:20|
 :skolemid |319|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@27))
)) (= $t2@@4 (|$addr#$signer| _$t0@@25))) (and (= $t3@@4 (|$addr#$signer| _$t0@@25)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@25 _$t0@@25) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 (|$addr#$signer| _$t0@@25)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@25) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@25) 173345816))))))) (and (=> (= (ControlFlow 0 219929) 220853) anon9_Then_correct@@2) (=> (= (ControlFlow 0 219929) 220007) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@25  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@27 T@$1_Event_EventHandle) ) (! (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@27)))
 (and (= (|l#Multiset_83261| stream@@26) 0) (forall ((v@@61 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@26) v@@61) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 219775) 219929)) anon0$1_correct@@25)))
(let ((anon0_correct@@25  (=> (= (ControlFlow 0 296963) 219775) inline$$InitEventStore$0$anon0_correct@@25)))
anon0_correct@@25))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@26 () T@$signer)
(declare-fun _$t1@@7 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@13 () Int)
(declare-fun $t9@@13 () Bool)
(declare-fun $t5@@7 () Bool)
(declare-fun $t4@@6 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_113696)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_113696)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_113696)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@7 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 298045) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 222004) (- 0 298904)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@26) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@26) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@26) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@26) 173345816))) (=> (= (ControlFlow 0 222004) (- 0 298980)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@13)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@13))) (and (not (= (|$addr#$signer| _$t0@@26) 173345816)) (= 2 $t6@@13))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7)) (= 6 $t6@@13))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@13))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@13))) (and (not (= (|$addr#$signer| _$t0@@26) 173345816)) (= 2 $t6@@13))))))))
(let ((anon10_Then_correct@@6  (=> $t9@@13 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7)) (= 6 $t6@@13)) (and (= $t6@@13 $t6@@13) (= (ControlFlow 0 221772) 222004))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@7 (or (or (or (and (not (= (|$addr#$signer| _$t0@@26) 173345816)) (= 2 $t6@@13)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@6)) (= 5 $t6@@13))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@6)) 0)) (= 3 $t6@@13))) (and (not (= (|$addr#$signer| _$t0@@26) 173345816)) (= 2 $t6@@13)))) (and (= $t6@@13 $t6@@13) (= (ControlFlow 0 222096) 222004))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@7)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@7))) 3)) (and (=> (= (ControlFlow 0 221730) (- 0 298496)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 221730) (- 0 298508)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 221730) (- 0 298526)) (not (not (= (|$addr#$signer| _$t0@@26) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@26) 173345816))) (and (=> (= (ControlFlow 0 221730) (- 0 298540)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7))) (and (=> (= (ControlFlow 0 221730) (- 0 298551)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 221730) (- 0 298563)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 221730) (- 0 298581)) (not (not (= (|$addr#$signer| _$t0@@26) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@26) 173345816))) (and (=> (= (ControlFlow 0 221730) (- 0 298595)) (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@7))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@7)) (and (=> (= (ControlFlow 0 221730) (- 0 298604)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@7))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@7))) 3) (and (=> (= (ControlFlow 0 221730) (- 0 298619)) (forall ((addr@@342 Int) ) (!  (=> (|$IsValid'address'| addr@@342) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@342)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@342) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@342)) 0))))
 :qid |Rolesandybpl.10186:15|
 :skolemid |327|
))) (=> (forall ((addr@@343 Int) ) (!  (=> (|$IsValid'address'| addr@@343) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@343)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@343) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@343)) 0))))
 :qid |Rolesandybpl.10186:15|
 :skolemid |327|
)) (and (=> (= (ControlFlow 0 221730) (- 0 298666)) (forall ((addr@@344 Int) ) (!  (=> (|$IsValid'address'| addr@@344) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@344)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@344) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@344)) 1))))
 :qid |Rolesandybpl.10190:15|
 :skolemid |328|
))) (=> (forall ((addr@@345 Int) ) (!  (=> (|$IsValid'address'| addr@@345) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@345)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@345) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@345)) 1))))
 :qid |Rolesandybpl.10190:15|
 :skolemid |328|
)) (and (=> (= (ControlFlow 0 221730) (- 0 298713)) (forall ((addr@@346 Int) ) (!  (=> (|$IsValid'address'| addr@@346) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@346)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@346) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@346)) 4))))
 :qid |Rolesandybpl.10194:15|
 :skolemid |329|
))) (=> (forall ((addr@@347 Int) ) (!  (=> (|$IsValid'address'| addr@@347) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@347)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@347) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@347)) 4))))
 :qid |Rolesandybpl.10194:15|
 :skolemid |329|
)) (and (=> (= (ControlFlow 0 221730) (- 0 298760)) (forall ((addr@@348 Int) ) (!  (=> (|$IsValid'address'| addr@@348) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@348)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@348) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@348)) 2))))
 :qid |Rolesandybpl.10198:15|
 :skolemid |330|
))) (=> (forall ((addr@@349 Int) ) (!  (=> (|$IsValid'address'| addr@@349) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@349)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@349) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@349)) 2))))
 :qid |Rolesandybpl.10198:15|
 :skolemid |330|
)) (and (=> (= (ControlFlow 0 221730) (- 0 298807)) (forall ((addr@@350 Int) ) (!  (=> (|$IsValid'address'| addr@@350) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@350)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@350) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@350)) 5))))
 :qid |Rolesandybpl.10202:15|
 :skolemid |331|
))) (=> (forall ((addr@@351 Int) ) (!  (=> (|$IsValid'address'| addr@@351) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@351) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@351)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@351) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@351)) 5))))
 :qid |Rolesandybpl.10202:15|
 :skolemid |331|
)) (=> (= (ControlFlow 0 221730) (- 0 298854)) (forall ((addr@@352 Int) ) (!  (=> (|$IsValid'address'| addr@@352) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@352) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory@2@@5) addr@@352)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) addr@@352) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) addr@@352)) 6))))
 :qid |Rolesandybpl.10206:15|
 :skolemid |332|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@7  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7) false) (|contents#$Memory_113696| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 221270) 221730))) anon7_correct@@3)))
(let ((anon11_Then_correct@@7  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_113696 (|Store__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 221744) 221730))) anon7_correct@@3)))
(let ((anon10_Else_correct@@6  (=> (not $t9@@13) (and (=> (= (ControlFlow 0 221256) 221744) anon11_Then_correct@@7) (=> (= (ControlFlow 0 221256) 221270) anon11_Else_correct@@7)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@7) (=> (and (|$IsValid'u64'| 3) (= $t8@@7 (|$addr#$signer| _$t1@@7))) (and (=> (= (ControlFlow 0 221250) (- 0 298346)) (=> (= 3 0) (= $t8@@7 173345816))) (=> (=> (= 3 0) (= $t8@@7 173345816)) (and (=> (= (ControlFlow 0 221250) (- 0 298362)) (=> (= 3 1) (= $t8@@7 186537453))) (=> (=> (= 3 1) (= $t8@@7 186537453)) (and (=> (= (ControlFlow 0 221250) (- 0 298378)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@7))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@7)) (=> (= $t9@@13 (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@7))) (and (=> (= (ControlFlow 0 221250) 221772) anon10_Then_correct@@6) (=> (= (ControlFlow 0 221250) 221256) anon10_Else_correct@@6)))))))))))))
(let ((anon0$1_correct@@26  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@26)) (|$IsValid'address'| (|$addr#$signer| _$t1@@7))) (=> (and (and (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@28)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@28))
 :qid |Rolesandybpl.10007:20|
 :skolemid |326|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $a_0@@28))
)) (= $t2@@5 (|$addr#$signer| _$t0@@26))) (and (= $t3@@5 (|$addr#$signer| _$t0@@26)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@7)))) (and (and (= _$t0@@26 _$t0@@26) (= _$t1@@7 _$t1@@7)) (and (= $t4@@6 (|$addr#$signer| _$t0@@26)) (= $t5@@7  (or (or (or (not (= (|$addr#$signer| _$t0@@26) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_113696| $1_Roles_RoleId_$memory) $t4@@6)) 0))) (not (= (|$addr#$signer| _$t0@@26) 173345816))))))) (and (=> (= (ControlFlow 0 221172) 222096) anon9_Then_correct@@3) (=> (= (ControlFlow 0 221172) 221250) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@26  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@28 T@$1_Event_EventHandle) ) (! (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_83261_| (|streams#$EventStore| $es) handle@@28)))
 (and (= (|l#Multiset_83261| stream@@27) 0) (forall ((v@@62 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_83261| stream@@27) v@@62) 0)
 :qid |Rolesandybpl.129:13|
 :skolemid |2|
))))
 :qid |Rolesandybpl.2543:13|
 :skolemid |69|
))) (= (ControlFlow 0 221018) 221172)) anon0$1_correct@@26)))
(let ((anon0_correct@@26  (=> (= (ControlFlow 0 298045) 221018) inline$$InitEventStore$0$anon0_correct@@26)))
anon0_correct@@26))))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 299135) true)
))
(check-sat)
(pop 1)
; Valid
