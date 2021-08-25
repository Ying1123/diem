(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-option :strings-seq-update true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_109321 0)) ((($Memory_109321 (|domain#$Memory_109321| |T@[Int]Bool|) (|contents#$Memory_109321| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_185772 0)) ((($Memory_185772 (|domain#$Memory_185772| |T@[Int]Bool|) (|contents#$Memory_185772| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_182661 0)) ((($Memory_182661 (|domain#$Memory_182661| |T@[Int]Bool|) (|contents#$Memory_182661| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_180455 0)) ((($Memory_180455 (|domain#$Memory_180455| |T@[Int]Bool|) (|contents#$Memory_180455| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_180735 0)) ((($Memory_180735 (|domain#$Memory_180735| |T@[Int]Bool|) (|contents#$Memory_180735| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_180422 0)) ((($Memory_180422 (|domain#$Memory_180422| |T@[Int]Bool|) (|contents#$Memory_180422| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_180207 0)) ((($Memory_180207 (|domain#$Memory_180207| |T@[Int]Bool|) (|contents#$Memory_180207| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_177668 0)) ((($Memory_177668 (|domain#$Memory_177668| |T@[Int]Bool|) (|contents#$Memory_177668| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_177604 0)) ((($Memory_177604 (|domain#$Memory_177604| |T@[Int]Bool|) (|contents#$Memory_177604| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_176314 0)) ((($Memory_176314 (|domain#$Memory_176314| |T@[Int]Bool|) (|contents#$Memory_176314| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_176250 0)) ((($Memory_176250 (|domain#$Memory_176250| |T@[Int]Bool|) (|contents#$Memory_176250| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_175938 0)) ((($Memory_175938 (|domain#$Memory_175938| |T@[Int]Bool|) (|contents#$Memory_175938| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_172672 0)) ((($Memory_172672 (|domain#$Memory_172672| |T@[Int]Bool|) (|contents#$Memory_172672| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_172385 0)) ((($Memory_172385 (|domain#$Memory_172385| |T@[Int]Bool|) (|contents#$Memory_172385| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_172098 0)) ((($Memory_172098 (|domain#$Memory_172098| |T@[Int]Bool|) (|contents#$Memory_172098| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_171879 0)) ((($Memory_171879 (|domain#$Memory_171879| |T@[Int]Bool|) (|contents#$Memory_171879| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_182268 0)) ((($Memory_182268 (|domain#$Memory_182268| |T@[Int]Bool|) (|contents#$Memory_182268| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_164616 0)) ((($Memory_164616 (|domain#$Memory_164616| |T@[Int]Bool|) (|contents#$Memory_164616| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164529 0)) ((($Memory_164529 (|domain#$Memory_164529| |T@[Int]Bool|) (|contents#$Memory_164529| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_161326 0)) ((($Memory_161326 (|domain#$Memory_161326| |T@[Int]Bool|) (|contents#$Memory_161326| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_161239 0)) ((($Memory_161239 (|domain#$Memory_161239| |T@[Int]Bool|) (|contents#$Memory_161239| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_182494 0)) ((($Memory_182494 (|domain#$Memory_182494| |T@[Int]Bool|) (|contents#$Memory_182494| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_164880 0)) ((($Memory_164880 (|domain#$Memory_164880| |T@[Int]Bool|) (|contents#$Memory_164880| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_174605 0)) ((($Memory_174605 (|domain#$Memory_174605| |T@[Int]Bool|) (|contents#$Memory_174605| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_165206 0)) ((($Memory_165206 (|domain#$Memory_165206| |T@[Int]Bool|) (|contents#$Memory_165206| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_182403 0)) ((($Memory_182403 (|domain#$Memory_182403| |T@[Int]Bool|) (|contents#$Memory_182403| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_164789 0)) ((($Memory_164789 (|domain#$Memory_164789| |T@[Int]Bool|) (|contents#$Memory_164789| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_176494 0)) ((($Memory_176494 (|domain#$Memory_176494| |T@[Int]Bool|) (|contents#$Memory_176494| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_165107 0)) ((($Memory_165107 (|domain#$Memory_165107| |T@[Int]Bool|) (|contents#$Memory_165107| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_160941 0)) ((($Memory_160941 (|domain#$Memory_160941| |T@[Int]Bool|) (|contents#$Memory_160941| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_160877 0)) ((($Memory_160877 (|domain#$Memory_160877| |T@[Int]Bool|) (|contents#$Memory_160877| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_133128 0)) ((($Memory_133128 (|domain#$Memory_133128| |T@[Int]Bool|) (|contents#$Memory_133128| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_133041 0)) ((($Memory_133041 (|domain#$Memory_133041| |T@[Int]Bool|) (|contents#$Memory_133041| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_132954 0)) ((($Memory_132954 (|domain#$Memory_132954| |T@[Int]Bool|) (|contents#$Memory_132954| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_132867 0)) ((($Memory_132867 (|domain#$Memory_132867| |T@[Int]Bool|) (|contents#$Memory_132867| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_132780 0)) ((($Memory_132780 (|domain#$Memory_132780| |T@[Int]Bool|) (|contents#$Memory_132780| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_117687 0)) ((($Memory_117687 (|domain#$Memory_117687| |T@[Int]Bool|) (|contents#$Memory_117687| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_131895 0)) ((($Memory_131895 (|domain#$Memory_131895| |T@[Int]Bool|) (|contents#$Memory_131895| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_132007 0)) ((($Memory_132007 (|domain#$Memory_132007| |T@[Int]Bool|) (|contents#$Memory_132007| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_131814 0)) ((($Memory_131814 (|domain#$Memory_131814| |T@[Int]Bool|) (|contents#$Memory_131814| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_131733 0)) ((($Memory_131733 (|domain#$Memory_131733| |T@[Int]Bool|) (|contents#$Memory_131733| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_131652 0)) ((($Memory_131652 (|domain#$Memory_131652| |T@[Int]Bool|) (|contents#$Memory_131652| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_131571 0)) ((($Memory_131571 (|domain#$Memory_131571| |T@[Int]Bool|) (|contents#$Memory_131571| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_131538 0)) ((($Memory_131538 (|domain#$Memory_131538| |T@[Int]Bool|) (|contents#$Memory_131538| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_181405 0)) ((($Memory_181405 (|domain#$Memory_181405| |T@[Int]Bool|) (|contents#$Memory_181405| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_117614 0)) ((($Memory_117614 (|domain#$Memory_117614| |T@[Int]Bool|) (|contents#$Memory_117614| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_130999 0)) ((($Memory_130999 (|domain#$Memory_130999| |T@[Int]Bool|) (|contents#$Memory_130999| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'u64'| 0)) (((|$1_Option_Option'u64'| (|$vec#$1_Option_Option'u64'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_130113 0)) ((($Memory_130113 (|domain#$Memory_130113| |T@[Int]Bool|) (|contents#$Memory_130113| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_118068 0)) ((($Memory_118068 (|domain#$Memory_118068| |T@[Int]Bool|) (|contents#$Memory_118068| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_116168 0)) ((($Memory_116168 (|domain#$Memory_116168| |T@[Int]Bool|) (|contents#$Memory_116168| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_86037 0)) (((Multiset_86037 (|v#Multiset_86037| |T@[$EventRep]Int|) (|l#Multiset_86037| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_86037| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_86037|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_183489 0)) ((($Mutation_183489 (|l#$Mutation_183489| T@$Location) (|p#$Mutation_183489| (Seq Int)) (|v#$Mutation_183489| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_183445 0)) ((($Mutation_183445 (|l#$Mutation_183445| T@$Location) (|p#$Mutation_183445| (Seq Int)) (|v#$Mutation_183445| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_54646 0)) ((($Mutation_54646 (|l#$Mutation_54646| T@$Location) (|p#$Mutation_54646| (Seq Int)) (|v#$Mutation_54646| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_170599 0)) ((($Mutation_170599 (|l#$Mutation_170599| T@$Location) (|p#$Mutation_170599| (Seq Int)) (|v#$Mutation_170599| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_159735 0)) ((($Mutation_159735 (|l#$Mutation_159735| T@$Location) (|p#$Mutation_159735| (Seq Int)) (|v#$Mutation_159735| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_133691 0)) ((($Mutation_133691 (|l#$Mutation_133691| T@$Location) (|p#$Mutation_133691| (Seq Int)) (|v#$Mutation_133691| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-datatypes ((T@$Mutation_116663 0)) ((($Mutation_116663 (|l#$Mutation_116663| T@$Location) (|p#$Mutation_116663| (Seq Int)) (|v#$Mutation_116663| T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) ) ))
(declare-datatypes ((T@$Mutation_109952 0)) ((($Mutation_109952 (|l#$Mutation_109952| T@$Location) (|p#$Mutation_109952| (Seq Int)) (|v#$Mutation_109952| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_12329 0)) ((($Mutation_12329 (|l#$Mutation_12329| T@$Location) (|p#$Mutation_12329| (Seq Int)) (|v#$Mutation_12329| Int) ) ) ))
(declare-datatypes ((T@$Mutation_104130 0)) ((($Mutation_104130 (|l#$Mutation_104130| T@$Location) (|p#$Mutation_104130| (Seq Int)) (|v#$Mutation_104130| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_103384 0)) ((($Mutation_103384 (|l#$Mutation_103384| T@$Location) (|p#$Mutation_103384| (Seq Int)) (|v#$Mutation_103384| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_101944 0)) ((($Mutation_101944 (|l#$Mutation_101944| T@$Location) (|p#$Mutation_101944| (Seq Int)) (|v#$Mutation_101944| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_101198 0)) ((($Mutation_101198 (|l#$Mutation_101198| T@$Location) (|p#$Mutation_101198| (Seq Int)) (|v#$Mutation_101198| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_99758 0)) ((($Mutation_99758 (|l#$Mutation_99758| T@$Location) (|p#$Mutation_99758| (Seq Int)) (|v#$Mutation_99758| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_99012 0)) ((($Mutation_99012 (|l#$Mutation_99012| T@$Location) (|p#$Mutation_99012| (Seq Int)) (|v#$Mutation_99012| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_97572 0)) ((($Mutation_97572 (|l#$Mutation_97572| T@$Location) (|p#$Mutation_97572| (Seq Int)) (|v#$Mutation_97572| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_96826 0)) ((($Mutation_96826 (|l#$Mutation_96826| T@$Location) (|p#$Mutation_96826| (Seq Int)) (|v#$Mutation_96826| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_95386 0)) ((($Mutation_95386 (|l#$Mutation_95386| T@$Location) (|p#$Mutation_95386| (Seq Int)) (|v#$Mutation_95386| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_94640 0)) ((($Mutation_94640 (|l#$Mutation_94640| T@$Location) (|p#$Mutation_94640| (Seq Int)) (|v#$Mutation_94640| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_93200 0)) ((($Mutation_93200 (|l#$Mutation_93200| T@$Location) (|p#$Mutation_93200| (Seq Int)) (|v#$Mutation_93200| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_92454 0)) ((($Mutation_92454 (|l#$Mutation_92454| T@$Location) (|p#$Mutation_92454| (Seq Int)) (|v#$Mutation_92454| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_91014 0)) ((($Mutation_91014 (|l#$Mutation_91014| T@$Location) (|p#$Mutation_91014| (Seq Int)) (|v#$Mutation_91014| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_90268 0)) ((($Mutation_90268 (|l#$Mutation_90268| T@$Location) (|p#$Mutation_90268| (Seq Int)) (|v#$Mutation_90268| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_88790 0)) ((($Mutation_88790 (|l#$Mutation_88790| T@$Location) (|p#$Mutation_88790| (Seq Int)) (|v#$Mutation_88790| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_88044 0)) ((($Mutation_88044 (|l#$Mutation_88044| T@$Location) (|p#$Mutation_88044| (Seq Int)) (|v#$Mutation_88044| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_86037_| (|T@[$1_Event_EventHandle]Multiset_86037| T@$1_Event_EventHandle) T@Multiset_86037)
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
(declare-fun ReverseVec_77633 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_76648 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_76845 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_77042 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_77830 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_77436 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_77239 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_76451 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_86037| |T@[$1_Event_EventHandle]Multiset_86037|) |T@[$1_Event_EventHandle]Multiset_86037|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |DiemSystemseqArraybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |DiemSystemseqArraybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |DiemSystemseqArraybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |DiemSystemseqArraybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |DiemSystemseqArraybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |DiemSystemseqArraybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemseqArraybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |DiemSystemseqArraybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |DiemSystemseqArraybpl.590:13|
 :skolemid |15|
))))
 :qid |DiemSystemseqArraybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |DiemSystemseqArraybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |DiemSystemseqArraybpl.603:17|
 :skolemid |18|
)))))
 :qid |DiemSystemseqArraybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |DiemSystemseqArraybpl.770:13|
 :skolemid |20|
))))
 :qid |DiemSystemseqArraybpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |DiemSystemseqArraybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |DiemSystemseqArraybpl.783:17|
 :skolemid |23|
)))))
 :qid |DiemSystemseqArraybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |DiemSystemseqArraybpl.950:13|
 :skolemid |25|
))))
 :qid |DiemSystemseqArraybpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |DiemSystemseqArraybpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |DiemSystemseqArraybpl.963:17|
 :skolemid |28|
)))))
 :qid |DiemSystemseqArraybpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |DiemSystemseqArraybpl.1130:13|
 :skolemid |30|
))))
 :qid |DiemSystemseqArraybpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |DiemSystemseqArraybpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |DiemSystemseqArraybpl.1143:17|
 :skolemid |33|
)))))
 :qid |DiemSystemseqArraybpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@12 i@@12)))
 :qid |DiemSystemseqArraybpl.1310:13|
 :skolemid |35|
))))
 :qid |DiemSystemseqArraybpl.1308:65|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |DiemSystemseqArraybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |DiemSystemseqArraybpl.1323:17|
 :skolemid |38|
)))))
 :qid |DiemSystemseqArraybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@14 i@@15)))
 :qid |DiemSystemseqArraybpl.1490:13|
 :skolemid |40|
))))
 :qid |DiemSystemseqArraybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |DiemSystemseqArraybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |DiemSystemseqArraybpl.1503:17|
 :skolemid |43|
)))))
 :qid |DiemSystemseqArraybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@16 i@@18)))
 :qid |DiemSystemseqArraybpl.1670:13|
 :skolemid |45|
))))
 :qid |DiemSystemseqArraybpl.1668:51|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@16))
)))
(assert (forall ((v@@17 (Seq T@$1_ValidatorConfig_Config)) (e@@5 T@$1_ValidatorConfig_Config) ) (! (let ((i@@19 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |DiemSystemseqArraybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |DiemSystemseqArraybpl.1683:17|
 :skolemid |48|
)))))
 :qid |DiemSystemseqArraybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'vec'u8''| (seq.nth v@@18 i@@21)))
 :qid |DiemSystemseqArraybpl.1850:13|
 :skolemid |50|
))))
 :qid |DiemSystemseqArraybpl.1848:33|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@18))
)))
(assert (forall ((v@@19 (Seq (Seq Int))) (e@@6 (Seq Int)) ) (! (let ((i@@22 (|$IndexOfVec'vec'u8''| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |DiemSystemseqArraybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |DiemSystemseqArraybpl.1863:17|
 :skolemid |53|
)))))
 :qid |DiemSystemseqArraybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'address'| (seq.nth v@@20 i@@24)))
 :qid |DiemSystemseqArraybpl.2030:13|
 :skolemid |55|
))))
 :qid |DiemSystemseqArraybpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'address''| v@@20))
)))
(assert (forall ((v@@21 (Seq Int)) (e@@7 Int) ) (! (let ((i@@25 (|$IndexOfVec'address'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |DiemSystemseqArraybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |DiemSystemseqArraybpl.2043:17|
 :skolemid |58|
)))))
 :qid |DiemSystemseqArraybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'address'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'u64'| (seq.nth v@@22 i@@27)))
 :qid |DiemSystemseqArraybpl.2210:13|
 :skolemid |60|
))))
 :qid |DiemSystemseqArraybpl.2208:29|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'u64''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'u64'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |DiemSystemseqArraybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |DiemSystemseqArraybpl.2223:17|
 :skolemid |63|
)))))
 :qid |DiemSystemseqArraybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'u64'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |DiemSystemseqArraybpl.2390:13|
 :skolemid |65|
))))
 :qid |DiemSystemseqArraybpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |DiemSystemseqArraybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |DiemSystemseqArraybpl.2403:17|
 :skolemid |68|
)))))
 :qid |DiemSystemseqArraybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |DiemSystemseqArraybpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |DiemSystemseqArraybpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |DiemSystemseqArraybpl.2659:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |DiemSystemseqArraybpl.2662:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_86037| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream) v@@26) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |DiemSystemseqArraybpl.2764:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |DiemSystemseqArraybpl.2770:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |DiemSystemseqArraybpl.2820:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |DiemSystemseqArraybpl.2826:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |DiemSystemseqArraybpl.2876:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |DiemSystemseqArraybpl.2882:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |DiemSystemseqArraybpl.2932:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |DiemSystemseqArraybpl.2938:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |DiemSystemseqArraybpl.2988:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |DiemSystemseqArraybpl.2994:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |DiemSystemseqArraybpl.3044:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |DiemSystemseqArraybpl.3050:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |DiemSystemseqArraybpl.3100:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |DiemSystemseqArraybpl.3106:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |DiemSystemseqArraybpl.3156:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |DiemSystemseqArraybpl.3162:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |DiemSystemseqArraybpl.3212:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |DiemSystemseqArraybpl.3218:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |DiemSystemseqArraybpl.3268:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |DiemSystemseqArraybpl.3274:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |DiemSystemseqArraybpl.3324:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |DiemSystemseqArraybpl.3330:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |DiemSystemseqArraybpl.3380:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |DiemSystemseqArraybpl.3386:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |DiemSystemseqArraybpl.3436:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |DiemSystemseqArraybpl.3442:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |DiemSystemseqArraybpl.3492:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |DiemSystemseqArraybpl.3498:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |DiemSystemseqArraybpl.3548:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |DiemSystemseqArraybpl.3554:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |DiemSystemseqArraybpl.3604:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |DiemSystemseqArraybpl.3610:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |DiemSystemseqArraybpl.3660:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |DiemSystemseqArraybpl.3666:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |DiemSystemseqArraybpl.3720:15|
 :skolemid |110|
)))
(assert (forall ((addr Int) ) (! true
 :qid |DiemSystemseqArraybpl.3729:15|
 :skolemid |111|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |DiemSystemseqArraybpl.3754:61|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |DiemSystemseqArraybpl.4310:36|
 :skolemid |114|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |DiemSystemseqArraybpl.6406:71|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'u64'|) ) (! (= (|$IsValid'$1_Option_Option'u64''| s@@3) (|$IsValid'vec'u64''| (|$vec#$1_Option_Option'u64'| s@@3)))
 :qid |DiemSystemseqArraybpl.6515:42|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Option_Option'u64''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@4) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@4)))
 :qid |DiemSystemseqArraybpl.6528:46|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@5)))
 :qid |DiemSystemseqArraybpl.6541:64|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@6)))
 :qid |DiemSystemseqArraybpl.6554:75|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@6))
)))
(assert (forall ((s@@7 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@7)))
 :qid |DiemSystemseqArraybpl.6567:72|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@8)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@8))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@8))))
 :qid |DiemSystemseqArraybpl.6601:55|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@8))
)))
(assert (forall ((s@@9 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@9)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@9)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@9))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@9))))
 :qid |DiemSystemseqArraybpl.6623:46|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@9))
)))
(assert (forall ((s@@10 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@10)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@10))))
 :qid |DiemSystemseqArraybpl.6641:49|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@11)))
 :qid |DiemSystemseqArraybpl.6721:71|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@12)))
 :qid |DiemSystemseqArraybpl.6735:91|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@13)))
 :qid |DiemSystemseqArraybpl.6749:113|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@14)))
 :qid |DiemSystemseqArraybpl.6763:75|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@14))
)))
(assert (forall ((s@@15 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@15)))
 :qid |DiemSystemseqArraybpl.6777:73|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@16)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@16)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@16))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@16))))
 :qid |DiemSystemseqArraybpl.6797:48|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@16))
)))
(assert (forall ((s@@17 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17) true)
 :qid |DiemSystemseqArraybpl.6813:57|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18) true)
 :qid |DiemSystemseqArraybpl.6827:83|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19) true)
 :qid |DiemSystemseqArraybpl.6841:103|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20) true)
 :qid |DiemSystemseqArraybpl.6855:125|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21) true)
 :qid |DiemSystemseqArraybpl.6869:87|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@21))
)))
(assert (forall ((s@@22 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22) true)
 :qid |DiemSystemseqArraybpl.6883:85|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@23)))
 :qid |DiemSystemseqArraybpl.6897:48|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@24)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@24))))
 :qid |DiemSystemseqArraybpl.6934:45|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@25)))
 :qid |DiemSystemseqArraybpl.6948:51|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@25))
)))
(assert (forall ((s@@26 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@26)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@26))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@26))))
 :qid |DiemSystemseqArraybpl.6971:48|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@26))
)))
(assert (forall ((s@@27 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@27)))
 :qid |DiemSystemseqArraybpl.11592:49|
 :skolemid |341|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@27))
)))
(assert (forall ((s@@28 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@28)))
 :qid |DiemSystemseqArraybpl.11605:65|
 :skolemid |342|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@29)))
 :qid |DiemSystemseqArraybpl.12109:45|
 :skolemid |343|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@30)))
 :qid |DiemSystemseqArraybpl.12122:45|
 :skolemid |344|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |DiemSystemseqArraybpl.12135:55|
 :skolemid |345|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |DiemSystemseqArraybpl.12149:55|
 :skolemid |346|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |DiemSystemseqArraybpl.12169:38|
 :skolemid |347|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |DiemSystemseqArraybpl.12190:44|
 :skolemid |348|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |DiemSystemseqArraybpl.12241:53|
 :skolemid |349|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |DiemSystemseqArraybpl.12303:53|
 :skolemid |350|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37) true)
 :qid |DiemSystemseqArraybpl.12329:55|
 :skolemid |351|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38) true)
 :qid |DiemSystemseqArraybpl.12343:55|
 :skolemid |352|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@38))
)))
(assert (forall ((s@@39 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@39)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@39)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@39))))
 :qid |DiemSystemseqArraybpl.12360:38|
 :skolemid |353|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@40)))
 :qid |DiemSystemseqArraybpl.12374:48|
 :skolemid |354|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@41)))
 :qid |DiemSystemseqArraybpl.12388:48|
 :skolemid |355|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@42)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@42))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@42))))
 :qid |DiemSystemseqArraybpl.12408:41|
 :skolemid |356|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@43)))
 :qid |DiemSystemseqArraybpl.12423:53|
 :skolemid |357|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@44)))
 :qid |DiemSystemseqArraybpl.12437:53|
 :skolemid |358|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@45))))
 :qid |DiemSystemseqArraybpl.12454:60|
 :skolemid |359|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@46))))
 :qid |DiemSystemseqArraybpl.12471:60|
 :skolemid |360|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@47))))
 :qid |DiemSystemseqArraybpl.12488:57|
 :skolemid |361|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@47))
)))
(assert (forall ((s@@48 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48) true)
 :qid |DiemSystemseqArraybpl.14689:68|
 :skolemid |362|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@48))
)))
(assert (forall ((s@@49 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@49))))
 :qid |DiemSystemseqArraybpl.14711:66|
 :skolemid |363|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@50))))
 :qid |DiemSystemseqArraybpl.14737:66|
 :skolemid |364|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@51))))
 :qid |DiemSystemseqArraybpl.14766:56|
 :skolemid |365|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@52))))
 :qid |DiemSystemseqArraybpl.14796:56|
 :skolemid |366|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@52))
)))
(assert (forall ((s@@53 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@53) true)
 :qid |DiemSystemseqArraybpl.15130:31|
 :skolemid |367|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@53))
)))
(assert (forall ((s@@54 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@54) true)
 :qid |DiemSystemseqArraybpl.15474:31|
 :skolemid |368|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@54))
)))
(assert (forall ((s@@55 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@55)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@55)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@55))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@55))))
 :qid |DiemSystemseqArraybpl.15493:35|
 :skolemid |369|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@55))
)))
(assert (forall ((s@@56 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@56)))
 :qid |DiemSystemseqArraybpl.15914:45|
 :skolemid |370|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@56))
)))
(assert (forall ((s@@57 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@57))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@57))))
 :qid |DiemSystemseqArraybpl.15933:50|
 :skolemid |371|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@57))
)))
(assert (forall ((s@@58 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@58)))
 :qid |DiemSystemseqArraybpl.15948:52|
 :skolemid |372|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@58))
)))
(assert (forall ((s@@59 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@59) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@59)))
 :qid |DiemSystemseqArraybpl.15972:38|
 :skolemid |373|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@60) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@60)))
 :qid |DiemSystemseqArraybpl.15986:39|
 :skolemid |374|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@60))
)))
(assert (forall ((s@@61 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@61))))
 :qid |DiemSystemseqArraybpl.16013:65|
 :skolemid |375|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@61))
)))
(assert (forall ((s@@62 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@62)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@62))))
 :qid |DiemSystemseqArraybpl.16398:60|
 :skolemid |376|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@62))
)))
(assert (forall ((s@@63 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@63))))
 :qid |DiemSystemseqArraybpl.16415:66|
 :skolemid |377|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@64)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@64)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@64))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@64))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@64))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@64))))
 :qid |DiemSystemseqArraybpl.16444:50|
 :skolemid |378|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@64))
)))
(assert (forall ((s@@65 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@65) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@65)))
 :qid |DiemSystemseqArraybpl.16463:45|
 :skolemid |379|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@65))
)))
(assert (forall ((s@@66 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@66)) true))
 :qid |DiemSystemseqArraybpl.16782:87|
 :skolemid |380|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@66))
)))
(assert (forall ((s@@67 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@67)))
 :qid |DiemSystemseqArraybpl.16994:47|
 :skolemid |381|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@68)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@68))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@68))))
 :qid |DiemSystemseqArraybpl.17014:58|
 :skolemid |382|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@69) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@69)))
 :qid |DiemSystemseqArraybpl.17029:39|
 :skolemid |383|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@69))
)))
(assert (forall ((s@@70 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@70)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@70))))
 :qid |DiemSystemseqArraybpl.17051:58|
 :skolemid |384|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@70))
)))
(assert (forall ((s@@71 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@71))))
 :qid |DiemSystemseqArraybpl.17068:58|
 :skolemid |385|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@71))
)))
(assert (forall ((s@@72 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72) true)
 :qid |DiemSystemseqArraybpl.17083:51|
 :skolemid |386|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@72))
)))
(assert (forall ((s@@73 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@73))))
 :qid |DiemSystemseqArraybpl.17100:60|
 :skolemid |387|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@74)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@74))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@74))))
 :qid |DiemSystemseqArraybpl.17398:47|
 :skolemid |388|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@74))
)))
(assert (forall ((s@@75 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@75)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@75))))
 :qid |DiemSystemseqArraybpl.17420:63|
 :skolemid |389|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@75))
)))
(assert (forall ((s@@76 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@76)))
 :qid |DiemSystemseqArraybpl.17435:57|
 :skolemid |390|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@76))
)))
(assert (forall ((s@@77 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@77)))
 :qid |DiemSystemseqArraybpl.17448:55|
 :skolemid |391|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@77))
)))
(assert (forall ((s@@78 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@78)))
 :qid |DiemSystemseqArraybpl.17462:55|
 :skolemid |392|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@79)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@79))))
 :qid |DiemSystemseqArraybpl.17479:54|
 :skolemid |393|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@80)))
 :qid |DiemSystemseqArraybpl.17493:55|
 :skolemid |394|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@81)))
 :qid |DiemSystemseqArraybpl.17507:57|
 :skolemid |395|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@82)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@82))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@82))))
 :qid |DiemSystemseqArraybpl.17529:56|
 :skolemid |396|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@82))
)))
(assert (forall ((s@@83 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@83)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@83))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@83))))
 :qid |DiemSystemseqArraybpl.17554:52|
 :skolemid |397|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@83))
)))
(assert (forall ((s@@84 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@84)))
 :qid |DiemSystemseqArraybpl.17570:54|
 :skolemid |398|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@85)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@85))))
 :qid |DiemSystemseqArraybpl.18442:47|
 :skolemid |399|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@86)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@86))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@86))))
 :qid |DiemSystemseqArraybpl.18466:47|
 :skolemid |400|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@87)))
 :qid |DiemSystemseqArraybpl.18707:49|
 :skolemid |401|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@88)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@88))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@88))))
 :qid |DiemSystemseqArraybpl.18750:49|
 :skolemid |402|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@89)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@89))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@89))))
 :qid |DiemSystemseqArraybpl.18779:48|
 :skolemid |403|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@90)))
 :qid |DiemSystemseqArraybpl.19074:47|
 :skolemid |404|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@90))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_12182 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_12182 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_77633 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77633 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_76648 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76648 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_76845 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76845 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_77042 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77042 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_77830 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77830 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_77436 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77436 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_77239 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_77239 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@#0|)) ) (! (let ((r@@8 (ReverseVec_76451 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |DiemSystemseqArraybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |DiemSystemseqArraybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_76451 v@@35))
)))
(assert (forall ((|l#0| Bool) (i@@42 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42) |l#0|)
 :qid |DiemSystemseqArraybpl.245:54|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@42))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_86037|) (|l#1| |T@[$1_Event_EventHandle]Multiset_86037|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#1| handle@@0))))
(Multiset_86037 (|lambda#3| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#0@@0| handle@@0)) (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |DiemSystemseqArraybpl.2733:13|
 :skolemid |481|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@36 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@36) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@36)))
 :qid |DiemSystemseqArraybpl.124:29|
 :skolemid |482|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@36))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t24@0 () T@$Mutation_12329)
(declare-fun $t14@1 () T@$Mutation_116663)
(declare-fun $t24@1 () T@$Mutation_12329)
(declare-fun _$t2 () Int)
(declare-fun $t14@2 () T@$Mutation_116663)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_116168)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_117614)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory () T@$Memory_117687)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 () T@$Memory_116168)
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
(declare-fun $t14 () T@$Mutation_116663)
(declare-fun $t14@0 () T@$Mutation_116663)
(declare-fun $abort_code@0 () Int)
(declare-fun $t12 () Bool)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies () |T@[Int]Bool|)
(declare-fun $t11 () Int)
(declare-fun $t10 () Bool)
(declare-fun $es () T@$EventStore)
(declare-fun $t7 () T@$Mutation_116663)
(declare-fun $t24 () T@$Mutation_12329)
(push 1)
(set-info :boogie-vc-id $1_DiemTimestamp_update_global_time$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 279972) (let ((L5_correct  (=> (= $t24@0 ($Mutation_12329 (|l#$Mutation_116663| $t14@1) (seq.++ (|p#$Mutation_116663| $t14@1) (seq.unit 0)) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_116663| $t14@1)))) (=> (and (and (= $t24@1 ($Mutation_12329 (|l#$Mutation_12329| $t24@0) (|p#$Mutation_12329| $t24@0) _$t2)) (= $t14@2 ($Mutation_116663 (|l#$Mutation_116663| $t14@1) (|p#$Mutation_116663| $t14@1) ($1_DiemTimestamp_CurrentTimeMicroseconds (|v#$Mutation_12329| $t24@1))))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (= $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0 ($Memory_116168 (|Store__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_116663| $t14@2)) true) (|Store__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) (|a#$Global| (|l#$Mutation_116663| $t14@2)) (|v#$Mutation_116663| $t14@2)))))) (and (=> (= (ControlFlow 0 201635) (- 0 280602)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (=> (= $t25 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory@0) 173345816))) (and (=> (= (ControlFlow 0 201635) (- 0 280635)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 201635) (- 0 280645)) (not (not (= (|$addr#$signer| _$t0) 0)))) (=> (not (not (= (|$addr#$signer| _$t0) 0))) (and (=> (= (ControlFlow 0 201635) (- 0 280659)) (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (not (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 201635) (- 0 280683)) (= $t25 _$t2)))))))))))))))
(let ((anon25_Then_correct  (=> (and $t18@0 (= (ControlFlow 0 201693) 201635)) L5_correct)))
(let ((anon26_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 201477) 201635)) L5_correct)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 201473) (- 0 280727)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (= (|$addr#$signer| _$t0) 0))) (ite (= _$t1 0)  (not (= $t9 _$t2)) (>= $t9 _$t2))) (=> (= (ControlFlow 0 201473) (- 0 280764)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11@0)) (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11@0))) (ite (= _$t1 0)  (not (= $t9 _$t2))  (and (>= $t9 _$t2) (= 7 $t11@0)))))))))
(let ((anon25_Else_correct  (=> (and (and (not $t18@0) (= $t20 $t20)) (and (= $t11@0 $t20) (= (ControlFlow 0 201689) 201473))) L8_correct)))
(let ((anon24_Then_correct  (=> $t17@0 (=> (and (= $t18@0 (= $t15@0 _$t2)) (|$IsValid'u64'| 2)) (=> (and (and (|$IsValid'u64'| $t20) (= $t20 7)) (and (= $t20 $t20) (= $t18@0 $t18@0))) (and (=> (= (ControlFlow 0 201673) 201693) anon25_Then_correct) (=> (= (ControlFlow 0 201673) 201689) anon25_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t23 $t23)) (and (= $t11@0 $t23) (= (ControlFlow 0 201357) 201473))) L8_correct)))
(let ((anon24_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t23) (= $t23 7)) (and (= $t23 $t23) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 201341) 201477) anon26_Then_correct) (=> (= (ControlFlow 0 201341) 201357) anon26_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t15@0 _$t2)) (= (ControlFlow 0 201305) 201341)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $t17@0) (= (ControlFlow 0 201311) 201305)) inline$$Lt$0$anon0_correct)))
(let ((anon23_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| (|v#$Mutation_116663| $t14@1)) (= |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0| |$temp_0'$1_DiemTimestamp_CurrentTimeMicroseconds'@0|)) (=> (and (and (= $t15@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|v#$Mutation_116663| $t14@1))) (= $t15@0 $t15@0)) (and (|$IsValid'address'| 0) (= $t17@0 (= _$t1 0)))) (and (=> (= (ControlFlow 0 201259) 201673) anon24_Then_correct) (=> (= (ControlFlow 0 201259) 201311) anon24_Else_correct)))))))
(let ((anon23_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t11@0 $abort_code@1) (= (ControlFlow 0 201707) 201473))) L8_correct)))
(let ((anon22_Then$1_correct  (=> (= $t14@1 $t14) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 201759) 201707) anon23_Then_correct) (=> (= (ControlFlow 0 201759) 201259) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (ControlFlow 0 201757) 201759)) anon22_Then$1_correct)))
(let ((anon22_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (=> (and (and (= $t14@0 ($Mutation_116663 ($Global 173345816) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t14@1 $t14@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 201213) 201707) anon23_Then_correct) (=> (= (ControlFlow 0 201213) 201259) anon23_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (not $t12) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 201191) (- 0 280270)) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816) (and (=> (= (ControlFlow 0 201191) 201757) anon22_Then_correct) (=> (= (ControlFlow 0 201191) 201213) anon22_Else_correct)))))))
(let ((anon21_Then_correct  (=> $t12 (=> (and (and (and (not (= (|$addr#$signer| _$t0) 0)) (= 2 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 201789) 201473))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (not $t10) (= $t12  (not (= (|$addr#$signer| _$t0) 0)))) (and (=> (= (ControlFlow 0 201171) 201789) anon21_Then_correct) (=> (= (ControlFlow 0 201171) 201191) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> $t10 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t11)) (= $t11 $t11)) (and (= $t11@0 $t11) (= (ControlFlow 0 201815) 201473))) L8_correct))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| _$t1)) (=> (and (and (and (|$IsValid'u64'| _$t2) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |DiemSystemseqArraybpl.3943:20|
 :skolemid |113|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (and (= $t9 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (|Select__T@[Int]Bool_| $1_DiemTimestamp_CurrentTimeMicroseconds_$modifies 173345816))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 201149) 201815) anon20_Then_correct) (=> (= (ControlFlow 0 201149) 201171) anon20_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_86037| stream@@0) 0) (forall ((v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@0) v@@37) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 201037) 201149)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_116663| $t7)) 0) (= (seq.len (|p#$Mutation_116663| $t14)) 0)) (and (= (seq.len (|p#$Mutation_12329| $t24)) 0) (= (ControlFlow 0 201047) 201037))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 279972) 201047) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_118068)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_118068)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_118068)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281015) (let ((L2_correct  (and (=> (= (ControlFlow 0 202725) (- 0 281761)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 202725) (- 0 281792)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 202613) 202725))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0@@0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 202755) 202725))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 202781) 202725))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (and (=> (= (ControlFlow 0 202571) (- 0 281407)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 202571) (- 0 281417)) (not (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@0) 173345816))) (and (=> (= (ControlFlow 0 202571) (- 0 281431)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 202571) (- 0 281442)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 202571) (- 0 281452)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0)) (and (=> (= (ControlFlow 0 202571) (- 0 281461)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0@@0))) 0) (and (=> (= (ControlFlow 0 202571) (- 0 281476)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |DiemSystemseqArraybpl.4536:15|
 :skolemid |117|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |DiemSystemseqArraybpl.4536:15|
 :skolemid |117|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281523)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |DiemSystemseqArraybpl.4540:15|
 :skolemid |118|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |DiemSystemseqArraybpl.4540:15|
 :skolemid |118|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281570)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |DiemSystemseqArraybpl.4544:15|
 :skolemid |119|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |DiemSystemseqArraybpl.4544:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281617)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |DiemSystemseqArraybpl.4548:15|
 :skolemid |120|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |DiemSystemseqArraybpl.4548:15|
 :skolemid |120|
)) (and (=> (= (ControlFlow 0 202571) (- 0 281664)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |DiemSystemseqArraybpl.4552:15|
 :skolemid |121|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |DiemSystemseqArraybpl.4552:15|
 :skolemid |121|
)) (=> (= (ControlFlow 0 202571) (- 0 281711)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |DiemSystemseqArraybpl.4556:15|
 :skolemid |122|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 202165) 202571))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 202585) 202571))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 202151) 202585) anon14_Then_correct) (=> (= (ControlFlow 0 202151) 202165) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 202145) (- 0 281257)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 202145) (- 0 281273)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 202145) (- 0 281289)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 202145) 202613) anon13_Then_correct) (=> (= (ControlFlow 0 202145) 202151) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0@@0) 173345816)))) (and (=> (= (ControlFlow 0 202067) 202755) anon12_Then_correct) (=> (= (ControlFlow 0 202067) 202145) anon12_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@0))
 :qid |DiemSystemseqArraybpl.4350:20|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@0))
))) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |DiemSystemseqArraybpl.4354:20|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@1))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 202045) 202781) anon11_Then_correct) (=> (= (ControlFlow 0 202045) 202067) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_86037| stream@@1) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@1) v@@38) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 201937) 202045)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 281015) 201937) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int) |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_118068)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun _$t1@@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_118068)
(declare-fun $t11@0@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9@@0 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 281870) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 203351) (- 0 282305)) (let (($range_0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@11 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@11))))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i1 $i_1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12)))) i1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@12 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@12)))) i1)))) 3))))
 :qid |DiemSystemseqArraybpl.4742:146|
 :skolemid |125|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@13 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@13))))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i1@@0 $i_1@@0))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14)))) i1@@0))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@14 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@14)))) i1@@0)))) 3))))
 :qid |DiemSystemseqArraybpl.4742:146|
 :skolemid |125|
))) (and (=> (= (ControlFlow 0 203351) (- 0 282351)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 203351) (- 0 282362)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 203351) (- 0 282371)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@1))) _$t1@@0)))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 203177) (- 0 282275)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 203177) (- 0 282281)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t10@0 $abort_code@1@@0) (= (ControlFlow 0 203365) 203177))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 203417) 203365) anon12_Then_correct@@0) (=> (= (ControlFlow 0 203417) 203351) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 203415) 203417)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) $t11@0@@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 203260) 203365) anon12_Then_correct@@0) (=> (= (ControlFlow 0 203260) 203351) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0@@0 ($1_Roles_RoleId _$t1@@0))) (and (=> (= (ControlFlow 0 203238) (- 0 282114)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1)) (=> (let (($range_0@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@15 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@15))))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i1@@1 $i_1@@1))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16)))) i1@@1))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@16 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@16)))) i1@@1)))) 3))))
 :qid |DiemSystemseqArraybpl.4721:151|
 :skolemid |124|
))) (and (=> (= (ControlFlow 0 203238) 203415) anon11_Then_correct@@0) (=> (= (ControlFlow 0 203238) 203260) anon11_Else_correct@@0))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9@@0 $t9@@0)) (and (= $t10@0 $t9@@0) (= (ControlFlow 0 203145) 203177))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 6)) (and (= $t9@@0 $t9@@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 203129) 203238) anon10_Then_correct) (=> (= (ControlFlow 0 203129) 203145) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 203093) 203129)) anon0$2_correct)))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (=> (and (and (|$IsValid'u64'| _$t1@@0) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@2)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@2))
 :qid |DiemSystemseqArraybpl.4617:20|
 :skolemid |123|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@2))
))) (and (= $t4 (|$addr#$signer| _$t0@@1)) (=> (= _$t1@@0 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1@@0 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@0 _$t1@@0))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@1))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 203099) 203093)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_86037| stream@@2) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@2) v@@39) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 202931) 203099)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 281870) 202931) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10@@0 () Bool)
(declare-fun $t7@@0 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_118068)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_118068)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 282391) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 204550) (- 0 283364)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@2) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 204550) (- 0 283430)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10@@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 204338) 204550))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7@@0 (or (or (or (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@1) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 204642) 204550))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@2) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 204672) 204550))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 204698) 204550))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (and (=> (= (ControlFlow 0 204296) (- 0 282966)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 204296) (- 0 282976)) (not (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@2) 186537453))) (and (=> (= (ControlFlow 0 204296) (- 0 282990)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 204296) (- 0 283002)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 204296) (- 0 283020)) (not (not (= (|$addr#$signer| _$t1@@1) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@1) 173345816))) (and (=> (= (ControlFlow 0 204296) (- 0 283034)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 204296) (- 0 283045)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 204296) (- 0 283055)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 204296) (- 0 283064)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@2))) 1) (and (=> (= (ControlFlow 0 204296) (- 0 283079)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@17)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@17)) 0))))
 :qid |DiemSystemseqArraybpl.5070:15|
 :skolemid |128|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@18)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@18)) 0))))
 :qid |DiemSystemseqArraybpl.5070:15|
 :skolemid |128|
)) (and (=> (= (ControlFlow 0 204296) (- 0 283126)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@19)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@19)) 3))))
 :qid |DiemSystemseqArraybpl.5074:15|
 :skolemid |129|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@20)) 3))))
 :qid |DiemSystemseqArraybpl.5074:15|
 :skolemid |129|
)) (and (=> (= (ControlFlow 0 204296) (- 0 283173)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@21)) 4))))
 :qid |DiemSystemseqArraybpl.5078:15|
 :skolemid |130|
))) (=> (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@22)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@22)) 4))))
 :qid |DiemSystemseqArraybpl.5078:15|
 :skolemid |130|
)) (and (=> (= (ControlFlow 0 204296) (- 0 283220)) (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@23)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@23)) 2))))
 :qid |DiemSystemseqArraybpl.5082:15|
 :skolemid |131|
))) (=> (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@24)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@24)) 2))))
 :qid |DiemSystemseqArraybpl.5082:15|
 :skolemid |131|
)) (and (=> (= (ControlFlow 0 204296) (- 0 283267)) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@25)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@25)) 5))))
 :qid |DiemSystemseqArraybpl.5086:15|
 :skolemid |132|
))) (=> (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@26)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@26)) 5))))
 :qid |DiemSystemseqArraybpl.5086:15|
 :skolemid |132|
)) (=> (= (ControlFlow 0 204296) (- 0 283314)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@0) addr@@27)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@27)) 6))))
 :qid |DiemSystemseqArraybpl.5090:15|
 :skolemid |133|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 203846) 204296))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 204310) 204296))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10@@0) (and (=> (= (ControlFlow 0 203832) 204310) anon17_Then_correct) (=> (= (ControlFlow 0 203832) 203846) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7@@0) (=> (and (|$IsValid'u64'| 1) (= $t9@@1 (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 203826) (- 0 282816)) (=> (= 1 0) (= $t9@@1 173345816))) (=> (=> (= 1 0) (= $t9@@1 173345816)) (and (=> (= (ControlFlow 0 203826) (- 0 282832)) (=> (= 1 1) (= $t9@@1 186537453))) (=> (=> (= 1 1) (= $t9@@1 186537453)) (and (=> (= (ControlFlow 0 203826) (- 0 282848)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (=> (= $t10@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 203826) 204338) anon16_Then_correct) (=> (= (ControlFlow 0 203826) 203832) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@1)) (= $t7@@0  (or (or (or (not (= (|$addr#$signer| _$t1@@1) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@1) 173345816))))) (and (=> (= (ControlFlow 0 203748) 204642) anon15_Then_correct) (=> (= (ControlFlow 0 203748) 203826) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@2) 186537453)))) (and (=> (= (ControlFlow 0 203676) 204672) anon14_Then_correct@@0) (=> (= (ControlFlow 0 203676) 203748) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@2  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@2))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@1)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@3))
 :qid |DiemSystemseqArraybpl.4827:20|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@3))
))) (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |DiemSystemseqArraybpl.4831:20|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@0 (|$addr#$signer| _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@2)) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@1 _$t1@@1) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 203654) 204698) anon13_Then_correct@@0) (=> (= (ControlFlow 0 203654) 203676) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_86037| stream@@3) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@3) v@@40) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 203526) 203654)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 282391) 203526) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun $t4@@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_118068)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_118068)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@3 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 283567) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 205745) (- 0 284338)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 205745) (- 0 284392)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 205577) 205745))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 205797) 205745))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (and (=> (= (ControlFlow 0 205535) (- 0 283958)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 205535) (- 0 283970)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 205535) (- 0 283988)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 205535) (- 0 283999)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 205535) (- 0 284011)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 205535) (- 0 284029)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 205535) (- 0 284038)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@2))) 6) (and (=> (= (ControlFlow 0 205535) (- 0 284053)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@28)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@28)) 0))))
 :qid |DiemSystemseqArraybpl.5318:15|
 :skolemid |135|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@29)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@29)) 0))))
 :qid |DiemSystemseqArraybpl.5318:15|
 :skolemid |135|
)) (and (=> (= (ControlFlow 0 205535) (- 0 284100)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@30)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@30)) 1))))
 :qid |DiemSystemseqArraybpl.5322:15|
 :skolemid |136|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@31)) 1))))
 :qid |DiemSystemseqArraybpl.5322:15|
 :skolemid |136|
)) (and (=> (= (ControlFlow 0 205535) (- 0 284147)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@32)) 3))))
 :qid |DiemSystemseqArraybpl.5326:15|
 :skolemid |137|
))) (=> (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@33)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@33)) 3))))
 :qid |DiemSystemseqArraybpl.5326:15|
 :skolemid |137|
)) (and (=> (= (ControlFlow 0 205535) (- 0 284194)) (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@34)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@34)) 4))))
 :qid |DiemSystemseqArraybpl.5330:15|
 :skolemid |138|
))) (=> (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@35)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@35)) 4))))
 :qid |DiemSystemseqArraybpl.5330:15|
 :skolemid |138|
)) (and (=> (= (ControlFlow 0 205535) (- 0 284241)) (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@36)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@36)) 2))))
 :qid |DiemSystemseqArraybpl.5334:15|
 :skolemid |139|
))) (=> (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@37)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@37)) 2))))
 :qid |DiemSystemseqArraybpl.5334:15|
 :skolemid |139|
)) (=> (= (ControlFlow 0 205535) (- 0 284288)) (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@1) addr@@38)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@38)) 5))))
 :qid |DiemSystemseqArraybpl.5338:15|
 :skolemid |140|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 205103) 205535))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 205549) 205535))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 205089) 205549) anon11_Then_correct@@1) (=> (= (ControlFlow 0 205089) 205103) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 205083) (- 0 283808)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 205083) (- 0 283824)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 205083) (- 0 283840)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 205083) 205577) anon10_Then_correct@@0) (=> (= (ControlFlow 0 205083) 205089) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |DiemSystemseqArraybpl.5149:20|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@1 (|$addr#$signer| _$t0@@3))) (and (= $t3@@1 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@1 (|$addr#$signer| _$t0@@3)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 205005) 205797) anon9_Then_correct) (=> (= (ControlFlow 0 205005) 205083) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_86037| stream@@4) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@4) v@@41) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 204875) 205005)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 283567) 204875) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_118068)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_118068)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 284501) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 206926) (- 0 285330)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 206926) (- 0 285406)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 206694) 206926))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 206998) 206926))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (and (=> (= (ControlFlow 0 206652) (- 0 284922)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 206652) (- 0 284934)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 206652) (- 0 284952)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 206652) (- 0 284966)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 206652) (- 0 284977)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 206652) (- 0 284989)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 206652) (- 0 285007)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 206652) (- 0 285021)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 206652) (- 0 285030)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@3))) 2) (and (=> (= (ControlFlow 0 206652) (- 0 285045)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@39)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@39)) 0))))
 :qid |DiemSystemseqArraybpl.5576:15|
 :skolemid |142|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@40)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@40)) 0))))
 :qid |DiemSystemseqArraybpl.5576:15|
 :skolemid |142|
)) (and (=> (= (ControlFlow 0 206652) (- 0 285092)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@41)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@41)) 1))))
 :qid |DiemSystemseqArraybpl.5580:15|
 :skolemid |143|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@42)) 1))))
 :qid |DiemSystemseqArraybpl.5580:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 206652) (- 0 285139)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@43)) 3))))
 :qid |DiemSystemseqArraybpl.5584:15|
 :skolemid |144|
))) (=> (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@44)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@44)) 3))))
 :qid |DiemSystemseqArraybpl.5584:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 206652) (- 0 285186)) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@45)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@45)) 4))))
 :qid |DiemSystemseqArraybpl.5588:15|
 :skolemid |145|
))) (=> (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@46)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@46)) 4))))
 :qid |DiemSystemseqArraybpl.5588:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 206652) (- 0 285233)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@47)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@47)) 5))))
 :qid |DiemSystemseqArraybpl.5592:15|
 :skolemid |146|
))) (=> (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@48)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@48)) 5))))
 :qid |DiemSystemseqArraybpl.5592:15|
 :skolemid |146|
)) (=> (= (ControlFlow 0 206652) (- 0 285280)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@2) addr@@49)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@49)) 6))))
 :qid |DiemSystemseqArraybpl.5596:15|
 :skolemid |147|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 206192) 206652))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 206666) 206652))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 206178) 206666) anon11_Then_correct@@2) (=> (= (ControlFlow 0 206178) 206192) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 206172) (- 0 284772)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 206172) (- 0 284788)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 206172) (- 0 284804)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 206172) 206694) anon10_Then_correct@@1) (=> (= (ControlFlow 0 206172) 206178) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |DiemSystemseqArraybpl.5397:20|
 :skolemid |141|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@2 (|$addr#$signer| _$t0@@4))) (and (= $t3@@2 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@2 (|$addr#$signer| _$t0@@4)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 206094) 206998) anon9_Then_correct@@0) (=> (= (ControlFlow 0 206094) 206172) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_86037| stream@@5) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@5) v@@42) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 205952) 206094)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 284501) 205952) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_118068)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_118068)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 285553) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 208135) (- 0 286382)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))) (=> (= (ControlFlow 0 208135) (- 0 286458)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 207903) 208135))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@5) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 208207) 208135))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (and (=> (= (ControlFlow 0 207861) (- 0 285974)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 207861) (- 0 285986)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 207861) (- 0 286004)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 207861) (- 0 286018)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 207861) (- 0 286029)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 207861) (- 0 286041)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 207861) (- 0 286059)) (not (not (= (|$addr#$signer| _$t0@@5) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 186537453))) (and (=> (= (ControlFlow 0 207861) (- 0 286073)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 207861) (- 0 286082)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@4))) 5) (and (=> (= (ControlFlow 0 207861) (- 0 286097)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@50)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@50)) 0))))
 :qid |DiemSystemseqArraybpl.5834:15|
 :skolemid |149|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@51)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@51)) 0))))
 :qid |DiemSystemseqArraybpl.5834:15|
 :skolemid |149|
)) (and (=> (= (ControlFlow 0 207861) (- 0 286144)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@52)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@52)) 1))))
 :qid |DiemSystemseqArraybpl.5838:15|
 :skolemid |150|
))) (=> (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@53)) 1))))
 :qid |DiemSystemseqArraybpl.5838:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 207861) (- 0 286191)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@54)) 3))))
 :qid |DiemSystemseqArraybpl.5842:15|
 :skolemid |151|
))) (=> (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@55)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@55)) 3))))
 :qid |DiemSystemseqArraybpl.5842:15|
 :skolemid |151|
)) (and (=> (= (ControlFlow 0 207861) (- 0 286238)) (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@56)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@56)) 4))))
 :qid |DiemSystemseqArraybpl.5846:15|
 :skolemid |152|
))) (=> (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@57)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@57)) 4))))
 :qid |DiemSystemseqArraybpl.5846:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 207861) (- 0 286285)) (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@58)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@58)) 2))))
 :qid |DiemSystemseqArraybpl.5850:15|
 :skolemid |153|
))) (=> (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@59)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@59)) 2))))
 :qid |DiemSystemseqArraybpl.5850:15|
 :skolemid |153|
)) (=> (= (ControlFlow 0 207861) (- 0 286332)) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@3) addr@@60)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@60)) 6))))
 :qid |DiemSystemseqArraybpl.5854:15|
 :skolemid |154|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 207401) 207861))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 207875) 207861))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 207387) 207875) anon11_Then_correct@@3) (=> (= (ControlFlow 0 207387) 207401) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 207381) (- 0 285824)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 207381) (- 0 285840)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 207381) (- 0 285856)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 207381) 207903) anon10_Then_correct@@2) (=> (= (ControlFlow 0 207381) 207387) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |DiemSystemseqArraybpl.5655:20|
 :skolemid |148|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@3 (|$addr#$signer| _$t0@@5))) (and (= $t3@@3 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@3 (|$addr#$signer| _$t0@@5)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@5) 186537453))))))) (and (=> (= (ControlFlow 0 207303) 208207) anon9_Then_correct@@1) (=> (= (ControlFlow 0 207303) 207381) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_86037| stream@@6) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@6) v@@43) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 207161) 207303)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 285553) 207161) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@4 () Int)
(declare-fun $t9@@5 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_118068)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_118068)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 286605) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 209356) (- 0 287464)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 209356) (- 0 287540)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 209124) 209356))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 209448) 209356))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (and (=> (= (ControlFlow 0 209082) (- 0 287056)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 209082) (- 0 287068)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 209082) (- 0 287086)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 209082) (- 0 287100)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 209082) (- 0 287111)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 209082) (- 0 287123)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 209082) (- 0 287141)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 209082) (- 0 287155)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 209082) (- 0 287164)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@5))) 4) (and (=> (= (ControlFlow 0 209082) (- 0 287179)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@61)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@61)) 0))))
 :qid |DiemSystemseqArraybpl.6092:15|
 :skolemid |156|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@62)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@62)) 0))))
 :qid |DiemSystemseqArraybpl.6092:15|
 :skolemid |156|
)) (and (=> (= (ControlFlow 0 209082) (- 0 287226)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@63)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@63)) 1))))
 :qid |DiemSystemseqArraybpl.6096:15|
 :skolemid |157|
))) (=> (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@64)) 1))))
 :qid |DiemSystemseqArraybpl.6096:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 209082) (- 0 287273)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@65)) 3))))
 :qid |DiemSystemseqArraybpl.6100:15|
 :skolemid |158|
))) (=> (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@66)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@66)) 3))))
 :qid |DiemSystemseqArraybpl.6100:15|
 :skolemid |158|
)) (and (=> (= (ControlFlow 0 209082) (- 0 287320)) (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@67)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@67)) 2))))
 :qid |DiemSystemseqArraybpl.6104:15|
 :skolemid |159|
))) (=> (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@68)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@68)) 2))))
 :qid |DiemSystemseqArraybpl.6104:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 209082) (- 0 287367)) (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@69)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@69)) 5))))
 :qid |DiemSystemseqArraybpl.6108:15|
 :skolemid |160|
))) (=> (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@70)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@70)) 5))))
 :qid |DiemSystemseqArraybpl.6108:15|
 :skolemid |160|
)) (=> (= (ControlFlow 0 209082) (- 0 287414)) (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@4) addr@@71)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@71)) 6))))
 :qid |DiemSystemseqArraybpl.6112:15|
 :skolemid |161|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 208622) 209082))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 209096) 209082))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 208608) 209096) anon11_Then_correct@@4) (=> (= (ControlFlow 0 208608) 208622) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 208602) (- 0 286906)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 208602) (- 0 286922)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 208602) (- 0 286938)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 208602) 209124) anon10_Then_correct@@3) (=> (= (ControlFlow 0 208602) 208608) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |DiemSystemseqArraybpl.5913:20|
 :skolemid |155|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@4 (|$addr#$signer| _$t0@@6))) (and (= $t3@@4 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@4 (|$addr#$signer| _$t0@@6)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 208524) 209448) anon9_Then_correct@@2) (=> (= (ControlFlow 0 208524) 208602) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_86037| stream@@7) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@7) v@@44) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 208370) 208524)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 286605) 208370) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@7 () T@$signer)
(declare-fun _$t1@@6 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@5 () Int)
(declare-fun $t9@@6 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_118068)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_118068)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_118068)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 287687) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 210599) (- 0 288546)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (=> (= (ControlFlow 0 210599) (- 0 288622)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 210367) 210599))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 210691) 210599))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (and (=> (= (ControlFlow 0 210325) (- 0 288138)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 210325) (- 0 288150)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 210325) (- 0 288168)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 210325) (- 0 288182)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 210325) (- 0 288193)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 210325) (- 0 288205)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 210325) (- 0 288223)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 210325) (- 0 288237)) (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6)) (and (=> (= (ControlFlow 0 210325) (- 0 288246)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@6))) 3) (and (=> (= (ControlFlow 0 210325) (- 0 288261)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@72)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@72)) 0))))
 :qid |DiemSystemseqArraybpl.6350:15|
 :skolemid |163|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@73)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@73)) 0))))
 :qid |DiemSystemseqArraybpl.6350:15|
 :skolemid |163|
)) (and (=> (= (ControlFlow 0 210325) (- 0 288308)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@74)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@74)) 1))))
 :qid |DiemSystemseqArraybpl.6354:15|
 :skolemid |164|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@75)) 1))))
 :qid |DiemSystemseqArraybpl.6354:15|
 :skolemid |164|
)) (and (=> (= (ControlFlow 0 210325) (- 0 288355)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@76)) 4))))
 :qid |DiemSystemseqArraybpl.6358:15|
 :skolemid |165|
))) (=> (forall ((addr@@77 Int) ) (!  (=> (|$IsValid'address'| addr@@77) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@77)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@77)) 4))))
 :qid |DiemSystemseqArraybpl.6358:15|
 :skolemid |165|
)) (and (=> (= (ControlFlow 0 210325) (- 0 288402)) (forall ((addr@@78 Int) ) (!  (=> (|$IsValid'address'| addr@@78) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@78)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@78)) 2))))
 :qid |DiemSystemseqArraybpl.6362:15|
 :skolemid |166|
))) (=> (forall ((addr@@79 Int) ) (!  (=> (|$IsValid'address'| addr@@79) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@79)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@79)) 2))))
 :qid |DiemSystemseqArraybpl.6362:15|
 :skolemid |166|
)) (and (=> (= (ControlFlow 0 210325) (- 0 288449)) (forall ((addr@@80 Int) ) (!  (=> (|$IsValid'address'| addr@@80) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@80)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@80)) 5))))
 :qid |DiemSystemseqArraybpl.6366:15|
 :skolemid |167|
))) (=> (forall ((addr@@81 Int) ) (!  (=> (|$IsValid'address'| addr@@81) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@81)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@81)) 5))))
 :qid |DiemSystemseqArraybpl.6366:15|
 :skolemid |167|
)) (=> (= (ControlFlow 0 210325) (- 0 288496)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory@2@@5) addr@@82)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@82)) 6))))
 :qid |DiemSystemseqArraybpl.6370:15|
 :skolemid |168|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) false) (|contents#$Memory_118068| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 209865) 210325))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_118068 (|Store__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 210339) 210325))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@6) (and (=> (= (ControlFlow 0 209851) 210339) anon11_Then_correct@@5) (=> (= (ControlFlow 0 209851) 209865) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 209845) (- 0 287988)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 209845) (- 0 288004)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 209845) (- 0 288020)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)) (=> (= $t9@@6 (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@6))) (and (=> (= (ControlFlow 0 209845) 210367) anon10_Then_correct@@4) (=> (= (ControlFlow 0 209845) 209851) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@7  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@7)) (|$IsValid'address'| (|$addr#$signer| _$t1@@6))) (=> (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@9)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@9))
 :qid |DiemSystemseqArraybpl.6171:20|
 :skolemid |162|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@9))
)) (= $t2@@5 (|$addr#$signer| _$t0@@7))) (and (= $t3@@5 (|$addr#$signer| _$t0@@7)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@6)))) (and (and (= _$t0@@7 _$t0@@7) (= _$t1@@6 _$t1@@6)) (and (= $t4@@5 (|$addr#$signer| _$t0@@7)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))))))) (and (=> (= (ControlFlow 0 209767) 210691) anon9_Then_correct@@3) (=> (= (ControlFlow 0 209767) 209845) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_86037| stream@@8) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@8) v@@45) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 209613) 209767)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 287687) 209613) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t56 () T@$1_DiemConfig_Configuration)
(declare-fun |Select__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int) T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2 () T@$Memory_132007)
(declare-fun $t57 () Int)
(declare-fun $t58 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| () T@$Memory_117614)
(declare-fun $t14@0@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t59 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t60 () T@$1_Event_EventHandle)
(declare-fun $t54 () T@$1_Event_EventHandle)
(declare-fun $t61 () Bool)
(declare-fun $1_DiemConfig_DisableReconfiguration_$memory () T@$Memory_131895)
(declare-fun $t53 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_86037_| (|T@[$1_Event_EventHandle]Multiset_86037| T@$1_Event_EventHandle T@Multiset_86037) |T@[$1_Event_EventHandle]Multiset_86037|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_86037|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_86037)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|Store__T@[$1_Event_EventHandle]Multiset_86037_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_86037|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_86037)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|Store__T@[$1_Event_EventHandle]Multiset_86037_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_86037_| ?x0 ?y1))) :weight 0)))
(declare-fun $t62 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t63 () T@$1_DiemConfig_Configuration)
(declare-fun $t64 () Int)
(declare-fun $t65 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_130999)
(declare-fun _$t1@@7 () Int)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun $t15 () Int)
(declare-fun _$t0@@8 () T@$signer)
(declare-fun $t16 () T@$1_DiemConfig_Configuration)
(declare-fun $t17 () Int)
(declare-fun $t21 () Int)
(declare-fun $t18 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t19 () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@0 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1 () T@$Memory_132007)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_132007)
(declare-fun $1_DiemConfig_Configuration_$memory@0 () T@$Memory_132007)
(declare-fun |Store__T@[Int]$1_DiemConfig_Configuration_| (|T@[Int]$1_DiemConfig_Configuration| Int T@$1_DiemConfig_Configuration) |T@[Int]$1_DiemConfig_Configuration|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_Configuration|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemConfig_Configuration)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_Configuration_| (|Store__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_Configuration_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@6| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| () T@$Memory_117614)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| () T@$Memory_117614)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| Int |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t55 () Bool)
(declare-fun $t23@0 () Int)
(declare-fun $t23@@0 () Int)
(declare-fun $t51 () T@$1_DiemConfig_Configuration)
(declare-fun $t52 () Int)
(declare-fun $t44@1 () T@$Mutation_133691)
(declare-fun $t44@0 () T@$Mutation_133691)
(declare-fun |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_94640)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| () |T@[Int]Bool|)
(declare-fun $t45@0 () T@$Mutation_94640)
(declare-fun $t49@0 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t47 () Bool)
(declare-fun $t46 () Int)
(declare-fun $t42 () T@$1_ValidatorConfig_Config)
(declare-fun $t43 () Bool)
(declare-fun $t14@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t41 () Int)
(declare-fun $t38 () Bool)
(declare-fun $t35 () Bool)
(declare-fun $t37@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun $t34 () Int)
(declare-fun $t29 () Int)
(declare-fun $t30 () Bool)
(declare-fun $t26 () Bool)
(declare-fun $t28 () Int)
(declare-fun $t25@@0 () Bool)
(declare-fun $t24@@0 () Int)
(declare-fun $t22 () Bool)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_130113)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_131571)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_131652)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_131733)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_131814)
(declare-fun |Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|T@[Int]$1_DiemConfig_DisableReconfiguration| Int) T@$1_DiemConfig_DisableReconfiguration)
(declare-fun |Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int) T@$1_DiemSystem_CapabilityHolder)
(declare-fun $t4@@6 () T@$Mutation_94640)
(declare-fun $t44 () T@$Mutation_133691)
(declare-fun $t45 () T@$Mutation_94640)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_add_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 288769) (let ((anon31_correct  (=> (and (and (= $t56 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory@2) 173345816)) (= $t57 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t58 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t56))) (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) 173345816)) $t14@0@@0))) (=> (and (and (and (= $t59 $t58) (= $t60 $t54)) (and (= $t61  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t57 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t53))))) (= $es@0 (ite $t61 (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) $t60)))
(let ((stream_new (let ((len (|l#Multiset_86037| stream@@9)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t59) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) $t60 stream_new)))) $es)))) (and (and (= $t62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@83 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@83))))) (= $t63 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory@2) 173345816))) (and (= $t64 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t65 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t63)))))) (and (=> (= (ControlFlow 0 213496) (- 0 291548)) (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@84 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@84))))) 256))) (=> (not (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@85 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@85))))) 256)) (and (=> (= (ControlFlow 0 213496) (- 0 291560)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))))) (and (=> (= (ControlFlow 0 213496) (- 0 291571)) (not (let (($range_0@@2 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@86 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@86))))))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@2))) (let ((v@@46 (seq.nth $range_0@@2 $i_1@@2)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@46) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))))) (=> (not (let (($range_0@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@87 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@87))))))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let ((v@@47 (seq.nth $range_0@@3 $i_1@@3)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@47) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (and (=> (= (ControlFlow 0 213496) (- 0 291580)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 213496) (- 0 291590)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t15)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t15))) (and (=> (= (ControlFlow 0 213496) (- 0 291602)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t15)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t15)) 0))) (and (=> (= (ControlFlow 0 213496) (- 0 291620)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 213496) (- 0 291634)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (and (=> (= (ControlFlow 0 213496) (- 0 291676)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t21)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t21))) (and (=> (= (ControlFlow 0 213496) (- 0 291688)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t21)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t21)) 0))) (and (=> (= (ControlFlow 0 213496) (- 0 291706)) (not (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (=> (= (ControlFlow 0 213496) (- 0 291720)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) _$t1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) _$t1@@7)) 3))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) _$t1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) _$t1@@7)) 3)) (and (=> (= (ControlFlow 0 213496) (- 0 291728)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))) (and (=> (= (ControlFlow 0 213496) (- 0 291736)) (let (($range_0@@4 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@88 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@88))))))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let ((v@@48 (seq.nth $range_0@@4 $i_1@@4)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@48) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (=> (let (($range_0@@5 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@89 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2|) addr@@89))))))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@5))) (let ((v@@49 (seq.nth $range_0@@5 $i_1@@5)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@49) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))) (and (=> (= (ControlFlow 0 213496) (- 0 291743)) (and (and (= (seq.len $t62) (+ (seq.len $t18) 1)) (= (seq.nth $t62 (- (seq.len $t62) 1)) ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t62 (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t62) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))))) (seq.extract $t18 (|lb#$Range| ($Range 0 (seq.len $t18))) (- (|ub#$Range| ($Range 0 (seq.len $t18))) (|lb#$Range| ($Range 0 (seq.len $t18)))))))) (=> (and (and (= (seq.len $t62) (+ (seq.len $t18) 1)) (= (seq.nth $t62 (- (seq.len $t62) 1)) ($1_DiemSystem_ValidatorInfo _$t1@@7 1 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7))) 0) (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (= (seq.extract $t62 (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t62) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t62) 1))))) (seq.extract $t18 (|lb#$Range| ($Range 0 (seq.len $t18))) (- (|ub#$Range| ($Range 0 (seq.len $t18))) (|lb#$Range| ($Range 0 (seq.len $t18))))))) (and (=> (= (ControlFlow 0 213496) (- 0 291766)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_86037| stream@@10)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@10) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@0)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@10 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected) handle@@10)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual) handle@@10))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected) handle@@10)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual) handle@@10)) v@@50))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_86037| stream@@11)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@11) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@1)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@11 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@0) handle@@11)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@0) handle@@11))) (forall ((v@@51 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@0) handle@@11)) v@@51) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@0) handle@@11)) v@@51))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 213496) (- 0 291811)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t64 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t19)))) (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t20@@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_86037| stream@@12)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@12) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t65) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t20@@0 stream_new@@2)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@12 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@1) handle@@12)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@1) handle@@12))) (forall ((v@@52 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@1) handle@@12)) v@@52) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@1) handle@@12)) v@@52))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))))))))))
(let ((anon46_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $1_DiemConfig_Configuration_$memory@1 ($Memory_132007 (|Store__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@1) (= (ControlFlow 0 213032) 213496))) anon31_correct)))
(let ((anon46_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $1_DiemConfig_Configuration_$memory@0 ($Memory_132007 (|Store__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2 $1_DiemConfig_Configuration_$memory@0) (= (ControlFlow 0 213508) 213496))) anon31_correct)))
(let ((anon45_Else_correct  (=> (not |$temp_0'bool'@0@@6|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1|)) (and (=> (= (ControlFlow 0 213018) 213508) anon46_Then_correct) (=> (= (ControlFlow 0 213018) 213032) anon46_Else_correct))))))
(let ((anon45_Then_correct  (=> |$temp_0'bool'@0@@6| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0|)) (and (=> (= (ControlFlow 0 213520) 213508) anon46_Then_correct) (=> (= (ControlFlow 0 213520) 213032) anon46_Else_correct))))))
(let ((anon44_Else_correct  (=> (not $t55) (and (=> (= (ControlFlow 0 213006) 213520) anon45_Then_correct) (=> (= (ControlFlow 0 213006) 213018) anon45_Else_correct)))))
(let ((anon43_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 212162) (- 0 290944)) (or (or (or (or (or (or (or (or (or (or (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@90 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@90))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))))) (let (($range_0@@6 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@91 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@91))))))
(exists (($i_1@@6 Int) ) (!  (and (and (>= $i_1@@6 0) (< $i_1@@6 (seq.len $range_0@@6))) (let ((v@@53 (seq.nth $range_0@@6 $i_1@@6)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@53) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t15))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t15)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t21))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t21)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@92 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@92))))) 256) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0))))) (let (($range_0@@7 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@93 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@93))))))
(exists (($i_1@@7 Int) ) (!  (and (and (>= $i_1@@7 0) (< $i_1@@7 (seq.len $range_0@@7))) (let ((v@@54 (seq.nth $range_0@@7 $i_1@@7)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@54) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t15))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t15)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t21))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t21)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))) (=> (= (ControlFlow 0 212162) (- 0 291081)) (or (or (or (or (or (or (or (or (or (or (and (>= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@94 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@94))))) 256) (= 8 $t23@0)) (and (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (= 7 $t23@0))) (and (let (($range_0@@8 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@95 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@95))))))
(exists (($i_1@@8 Int) ) (!  (and (and (>= $i_1@@8 0) (< $i_1@@8 (seq.len $range_0@@8))) (let ((v@@55 (seq.nth $range_0@@8 $i_1@@8)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@55) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))) (= 7 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t15)) (= 5 $t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t15)) 0)) (= 3 $t23@0))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16) 18446744073709551615)) (< $t17 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16))) (= 1 $t23@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t21)) (= 5 $t23@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t21)) 0)) (= 3 $t23@0))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@0))))))))
(let ((anon44_Then_correct  (=> $t55 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))) (= 1 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213596) 212162))) L7_correct))))
(let ((anon43_Else_correct  (=> (and (not false) (= $t44@1 ($Mutation_133691 (|l#$Mutation_133691| $t44@0) (|p#$Mutation_133691| $t44@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@0)) (|v#$Mutation_94640| |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1|))))) (and (=> (= (ControlFlow 0 213000) (- 0 290611)) (let (($range_0@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1))))))
(let (($range_1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1))))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@9 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@43 $i_2))
(let ((j@@10 $i_3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1)) i@@43)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1)) j@@10))) (= i@@43 j@@10))))))
 :qid |DiemSystemseqArraybpl.7648:203|
 :skolemid |216|
))))) (=> (let (($range_0@@10 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1))))))
(let (($range_1@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1))))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@10 $i_2@@0) (=> ($InRange $range_1@@0 $i_3@@0) (let ((i@@44 $i_2@@0))
(let ((j@@11 $i_3@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1)) i@@44)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@1)) j@@11))) (= i@@44 j@@11))))))
 :qid |DiemSystemseqArraybpl.7648:203|
 :skolemid |216|
)))) (=> (= $t14@0@@0 (|v#$Mutation_133691| $t44@1)) (=> (and (and (= $t51 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t52 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t53 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t54 (|$events#$1_DiemConfig_Configuration| $t53)))) (and (=> (= (ControlFlow 0 213000) (- 0 290764)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (=> (= $t55  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t51) 18446744073709551615)) (< $t52 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t51))))) (and (=> (= (ControlFlow 0 213000) 213596) anon44_Then_correct) (=> (= (ControlFlow 0 213000) 213006) anon44_Else_correct))))))))))))
(let ((|inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_94640 (|l#$Mutation_94640| $t45@0) (|p#$Mutation_94640| $t45@0) (seq.++ (|v#$Mutation_94640| $t45@0) (seq.unit $t49@0)))) (and (=> (= (ControlFlow 0 212767) 213610) anon43_Then_correct) (=> (= (ControlFlow 0 212767) 213000) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (not $t47) (=> (and (|$IsValid'u64'| $t46) (= $t46 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (and (and (= $t46 $t46) (|$IsValid'u64'| 1)) (and (= $t49@0 ($1_DiemSystem_ValidatorInfo _$t1@@7 1 $t42 $t46)) (= (ControlFlow 0 212773) 212767))) |inline$$1_Vector_push_back'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon42_Then_correct  (=> $t47 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213636) 212162))) L7_correct))))
(let ((anon41_Else_correct  (=> (not $t43) (=> (and (|$IsValid'$1_ValidatorConfig_Config'| $t42) (= $t42 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7))) 0))) (=> (and (and (and (= $t42 $t42) (= $t44@0 ($Mutation_133691 ($Local 14) (as seq.empty (Seq Int)) $t14@@0))) (and (= $t45@0 ($Mutation_94640 (|l#$Mutation_133691| $t44@0) (seq.++ (|p#$Mutation_133691| $t44@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t44@0)))) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| (|v#$Mutation_94640| $t45@0)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0|) (= _$t1@@7 _$t1@@7)) (and (= $t42 $t42) (= $t47  (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 212672) 213636) anon42_Then_correct) (=> (= (ControlFlow 0 212672) 212773) anon42_Else_correct)))))))
(let ((anon41_Then_correct  (=> $t43 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)) (= 5 $t23@@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0) (= 7 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213684) 212162))) L7_correct))))
(let ((anon40_Then_correct  (=> (and inline$$Not$0$dst@1@@0 (= $t43  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (and (=> (= (ControlFlow 0 212584) 213684) anon41_Then_correct) (=> (= (ControlFlow 0 212584) 212672) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t41 $t41)) (and (= $t23@0 $t41) (= (ControlFlow 0 212556) 212162))) L7_correct)))
(let ((anon39_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t41) (= $t41 7)) (and (= $t41 $t41) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 212540) 212584) anon40_Then_correct) (=> (= (ControlFlow 0 212540) 212556) anon40_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t38)) (= (ControlFlow 0 212500) 212540)) anon39_Else$1_correct)))
(let ((anon39_Else_correct  (=> (not $t35) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t14@@0) (let (($range_0@@11 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t14@@0)))))
(let (($range_1@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t14@@0)))))
(forall (($i_2@@1 Int) ($i_3@@1 Int) ) (!  (=> ($InRange $range_0@@11 $i_2@@1) (=> ($InRange $range_1@@1 $i_3@@1) (let ((i@@45 $i_2@@1))
(let ((j@@12 $i_3@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t14@@0) i@@45)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t14@@0) j@@12))) (= i@@45 j@@12))))))
 :qid |DiemSystemseqArraybpl.7446:225|
 :skolemid |214|
))))) (= $t14@@0 (let ((addr@@96 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@96))))) (and (and (= $t14@@0 $t14@@0) (= $t37@0 (|$validators#$1_DiemSystem_DiemSystem| $t14@@0))) (and (= $t38 (let (($range_0@@12 $t37@0))
(exists (($i_1@@9 Int) ) (!  (and (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@12))) (let ((v@@56 (seq.nth $range_0@@12 $i_1@@9)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@56) _$t1@@7)))
 :qid |DiemSystemseqArraybpl.7474:64|
 :skolemid |215|
)))) (= (ControlFlow 0 212506) 212500)))) inline$$Not$0$anon0_correct@@0))))
(let ((anon39_Then_correct  (=> $t35 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213712) 212162))) L7_correct))))
(let ((anon38_Then_correct  (=> (and inline$$Lt$0$dst@1@@0 (= $t35  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 212316) 213712) anon39_Then_correct) (=> (= (ControlFlow 0 212316) 212506) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1@@0) (= $t34 $t34)) (and (= $t23@0 $t34) (= (ControlFlow 0 212300) 212162))) L7_correct)))
(let ((anon37_Else$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (and (|$IsValid'u64'| $t34) (= $t34 8)) (and (= $t34 $t34) (= inline$$Lt$0$dst@1@@0 inline$$Lt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 212284) 212316) anon38_Then_correct) (=> (= (ControlFlow 0 212284) 212300) anon38_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< $t29 256)) (= (ControlFlow 0 212244) 212284)) anon37_Else$1_correct)))
(let ((anon37_Else_correct  (=> (not $t30) (=> (and (and (|$IsValid'u64'| $t29) (= $t29 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@97 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@97))))))) (and (|$IsValid'u64'| 256) (= (ControlFlow 0 212250) 212244))) inline$$Lt$0$anon0_correct@@0))))
(let ((anon37_Then_correct  (=> $t30 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213740) 212162))) L7_correct))))
(let ((anon36_Then_correct  (=> (and $t26 (= $t30  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 212178) 213740) anon37_Then_correct) (=> (= (ControlFlow 0 212178) 212250) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not $t26) (= $t28 $t28)) (and (= $t23@0 $t28) (= (ControlFlow 0 211762) 212162))) L7_correct)))
(let ((anon35_Else_correct  (=> (not $t25@@0) (=> (and (= $t26  (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) _$t1@@7)))) 0)))) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| $t28) (= $t28 7)) (and (= $t28 $t28) (= $t26 $t26))) (and (=> (= (ControlFlow 0 211746) 212178) anon36_Then_correct) (=> (= (ControlFlow 0 211746) 211762) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (=> $t25@@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t24@@0)) (= 5 $t23@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t24@@0)) 0)) (= 3 $t23@@0))) (and (not (= (|$addr#$signer| _$t0@@8) 173345816)) (= 2 $t23@@0))) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213832) 212162))) L7_correct))))
(let ((anon34_Else_correct  (=> (not $t22) (=> (and (= $t24@@0 (|$addr#$signer| _$t0@@8)) (= $t25@@0  (or (or (or (not (= (|$addr#$signer| _$t0@@8) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t24@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t24@@0)) 0))) (not (= (|$addr#$signer| _$t0@@8) 173345816))))) (and (=> (= (ControlFlow 0 211696) 213832) anon35_Then_correct) (=> (= (ControlFlow 0 211696) 211746) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> $t22 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t23@@0)) (= $t23@@0 $t23@@0)) (and (= $t23@0 $t23@@0) (= (ControlFlow 0 213858) 212162))) L7_correct))))
(let ((anon0$1_correct@@8  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130113| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@98) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@98)) 4))))
 :qid |DiemSystemseqArraybpl.7083:20|
 :skolemid |195|
))) (=> (and (and (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |DiemSystemseqArraybpl.7087:20|
 :skolemid |196|
)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@100) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@100) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@100)) 3))))
 :qid |DiemSystemseqArraybpl.7091:20|
 :skolemid |197|
))) (and (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@101)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@101) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@101)) 3))))
 :qid |DiemSystemseqArraybpl.7095:20|
 :skolemid |198|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |DiemSystemseqArraybpl.7103:24|
 :skolemid |199|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |DiemSystemseqArraybpl.7103:243|
 :skolemid |200|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |DiemSystemseqArraybpl.7103:483|
 :skolemid |201|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |DiemSystemseqArraybpl.7103:745|
 :skolemid |202|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |DiemSystemseqArraybpl.7103:969|
 :skolemid |203|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@13 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@102 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@102))))))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@10) (let ((i1@@2 $i_1@@10))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@103 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@103)))) i1@@2))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@103 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@103)))) i1@@2)))) 3))))
 :qid |DiemSystemseqArraybpl.7111:151|
 :skolemid |204|
))) (let (($range_0@@14 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@104 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@104))))))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@11) (let ((i1@@3 $i_1@@11))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@105 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@105)))) i1@@3)) 1)))
 :qid |DiemSystemseqArraybpl.7116:151|
 :skolemid |205|
))))) (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@8)) (|$IsValid'address'| _$t1@@7)) (and (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@10))
 :qid |DiemSystemseqArraybpl.7126:20|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@10))
)) (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@11)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@11))
 :qid |DiemSystemseqArraybpl.7130:20|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@11))
))))) (and (and (and (and (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@12)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@12) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@12))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@12))) 1))))
 :qid |DiemSystemseqArraybpl.7134:20|
 :skolemid |208|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@12))
)) (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) $a_0@@13)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@13))
 :qid |DiemSystemseqArraybpl.7138:20|
 :skolemid |209|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) $a_0@@13))
))) (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@14)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@14))
 :qid |DiemSystemseqArraybpl.7142:20|
 :skolemid |210|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@14))
)) (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@15)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@15) (let (($range_1@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))))))
(let (($range_2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15))))))
(forall (($i_3@@2 Int) ($i_4 Int) ) (!  (=> ($InRange $range_1@@2 $i_3@@2) (=> ($InRange $range_2 $i_4) (let ((i@@46 $i_3@@2))
(let ((j@@13 $i_4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15)) i@@46)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@15)) j@@13))) (= i@@46 j@@13))))))
 :qid |DiemSystemseqArraybpl.7147:367|
 :skolemid |211|
))))))
 :qid |DiemSystemseqArraybpl.7146:20|
 :skolemid |212|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@15))
)))) (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@16)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@16))
 :qid |DiemSystemseqArraybpl.7152:20|
 :skolemid |213|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@16))
)) (= $t15 (|$addr#$signer| _$t0@@8))) (and (= $t16 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t17 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t18 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@106 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@106))))) (= $t19 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t20@@0 (|$events#$1_DiemConfig_Configuration| $t19)) (= $t21 (|$addr#$signer| _$t0@@8)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies| 173345816) (= _$t0@@8 _$t0@@8)) (and (= _$t1@@7 _$t1@@7) (= $t22  (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 211624) 213858) anon34_Then_correct) (=> (= (ControlFlow 0 211624) 211696) anon34_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_86037| stream@@13) 0) (forall ((v@@57 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@13) v@@57) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 210874) 211624)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (and (and (= (seq.len (|p#$Mutation_94640| $t4@@6)) 0) (= (seq.len (|p#$Mutation_133691| $t44)) 0)) (and (= (seq.len (|p#$Mutation_94640| $t45)) 0) (= (ControlFlow 0 210884) 210874))) inline$$InitEventStore$0$anon0_correct@@8)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 288769) 210884) anon0_correct@@8)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@@0 () Bool)
(declare-fun $t0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t2@@6 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_diem_system_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 291862) (let ((anon4_Else_correct  (=> (not $t1@@0) (=> (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t0) (let (($range_0@@15 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t0)))))
(let (($range_1@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t0)))))
(forall (($i_2@@2 Int) ($i_3@@3 Int) ) (!  (=> ($InRange $range_0@@15 $i_2@@2) (=> ($InRange $range_1@@3 $i_3@@3) (let ((i@@47 $i_2@@2))
(let ((j@@14 $i_3@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t0) i@@47)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t0) j@@14))) (= i@@47 j@@14))))))
 :qid |DiemSystemseqArraybpl.7969:222|
 :skolemid |226|
))))) (and (= $t0 (let ((addr@@107 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@107)))) (= $t0 $t0))) (and (=> (= (ControlFlow 0 214806) (- 0 292427)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 214806) (- 0 292439)) (= $t0 (let ((addr@@108 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@108))))) (=> (= $t0 (let ((addr@@109 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@109)))) (=> (= (ControlFlow 0 214806) (- 0 292450)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@110 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@110)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@111 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@111))))))))))))))
(let ((anon4_Then_correct  (=> $t1@@0 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t2@@6)) (= $t2@@6 $t2@@6)) (and (=> (= (ControlFlow 0 214864) (- 0 292287)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 214864) (- 0 292294)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t2@@6)))))))))
(let ((anon0$1_correct@@9  (=> (and (and (and (and (and (and (forall ((config_address@@4 Int) ) (!  (=> (|$IsValid'address'| config_address@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@4) (= config_address@@4 173345816)))
 :qid |DiemSystemseqArraybpl.7913:24|
 :skolemid |217|
)) (forall ((config_address@@5 Int) ) (!  (=> (|$IsValid'address'| config_address@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@5) (= config_address@@5 173345816)))
 :qid |DiemSystemseqArraybpl.7913:243|
 :skolemid |218|
))) (forall ((config_address@@6 Int) ) (!  (=> (|$IsValid'address'| config_address@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@6) (= config_address@@6 173345816)))
 :qid |DiemSystemseqArraybpl.7913:483|
 :skolemid |219|
))) (forall ((config_address@@7 Int) ) (!  (=> (|$IsValid'address'| config_address@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@7) (= config_address@@7 173345816)))
 :qid |DiemSystemseqArraybpl.7913:745|
 :skolemid |220|
))) (forall ((config_address@@8 Int) ) (!  (=> (|$IsValid'address'| config_address@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@8) (= config_address@@8 173345816)))
 :qid |DiemSystemseqArraybpl.7913:969|
 :skolemid |221|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (and (let (($range_0@@16 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@112 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@112))))))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@12) (let ((i1@@4 $i_1@@12))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@113 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@113)))) i1@@4))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@113 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@113)))) i1@@4)))) 3))))
 :qid |DiemSystemseqArraybpl.7921:151|
 :skolemid |222|
))) (let (($range_0@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@114 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@114))))))))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@13) (let ((i1@@5 $i_1@@13))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@115 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@115)))) i1@@5)) 1)))
 :qid |DiemSystemseqArraybpl.7926:151|
 :skolemid |223|
)))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@17)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@17) (let (($range_1@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17))))))
(let (($range_2@@0 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17))))))
(forall (($i_3@@4 Int) ($i_4@@0 Int) ) (!  (=> ($InRange $range_1@@4 $i_3@@4) (=> ($InRange $range_2@@0 $i_4@@0) (let ((i@@48 $i_3@@4))
(let ((j@@15 $i_4@@0))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17)) i@@48)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@17)) j@@15))) (= i@@48 j@@15))))))
 :qid |DiemSystemseqArraybpl.7932:367|
 :skolemid |224|
))))))
 :qid |DiemSystemseqArraybpl.7931:20|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@17))
)) (= $t1@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 214661) 214864) anon4_Then_correct) (=> (= (ControlFlow 0 214661) 214806) anon4_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@14 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_86037| stream@@14) 0) (forall ((v@@58 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@14) v@@58) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 214291) 214661)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 291862) 214291) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t14@0@@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun _$t0@@9 () Int)
(declare-fun $t6@0@@0 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t12@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10@@1 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t6@@6 () Int)
(declare-fun inline$$Lt$0$dst@1@@1 () Bool)
(declare-fun $t9@@7 () Int)
(declare-fun $t4@@7 () Int)
(declare-fun $t5@@7 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_ith_validator_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 292471) (let ((anon14_Else_correct@@1  (=> (not $abort_flag@0@@1) (=> (and (= $t14@0@@1 (|$addr#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (= $t14@0@@1 $t14@0@@1)) (and (=> (= (ControlFlow 0 215877) (- 0 293360)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 215877) (- 0 293372)) (not (>= _$t0@@9 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@116 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@116)))))))) (=> (not (>= _$t0@@9 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@117 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@117))))))) (and (=> (= (ControlFlow 0 215877) (- 0 293385)) (= $t14@0@@1 (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@118 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@118)))) _$t0@@9)))) (=> (= $t14@0@@1 (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@119 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@119)))) _$t0@@9))) (=> (= (ControlFlow 0 215877) (- 0 293400)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@120 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@120)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@121 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@121))))))))))))))))
(let ((L3_correct@@0  (and (=> (= (ControlFlow 0 215533) (- 0 293284)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (>= _$t0@@9 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@122 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@122)))))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (>= _$t0@@9 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@123 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@123))))))) (=> (= (ControlFlow 0 215533) (- 0 293301)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@0@@0)) (and (>= _$t0@@9 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@124 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@124)))))) (= 7 $t6@0@@0))))))))
(let ((anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t6@0@@0 $abort_code@1@@1) (= (ControlFlow 0 215891) 215533))) L3_correct@@0)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0|)) (and (=> (= (ControlFlow 0 215795) 215891) anon14_Then_correct@@1) (=> (= (ControlFlow 0 215795) 215877) anon14_Else_correct@@1))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t0@@9 0) (< _$t0@@9 (seq.len $t12@0)))) (= (ControlFlow 0 215793) 215795)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (>= _$t0@@9 0) (< _$t0@@9 (seq.len $t12@0))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1| (seq.nth $t12@0 _$t0@@9)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1|))) (and (=> (= (ControlFlow 0 215743) 215891) anon14_Then_correct@@1) (=> (= (ControlFlow 0 215743) 215877) anon14_Else_correct@@1))))))
(let ((anon13_Else_correct@@1  (=> (not $t11@@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t10@@1) (let (($range_0@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)))))
(let (($range_1@@5 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)))))
(forall (($i_2@@3 Int) ($i_3@@5 Int) ) (!  (=> ($InRange $range_0@@18 $i_2@@3) (=> ($InRange $range_1@@5 $i_3@@5) (let ((i@@49 $i_2@@3))
(let ((j@@16 $i_3@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t10@@1) i@@49)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t10@@1) j@@16))) (= i@@49 j@@16))))))
 :qid |DiemSystemseqArraybpl.8200:225|
 :skolemid |236|
))))) (= $t10@@1 (let ((addr@@125 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@125))))) (and (= $t10@@1 $t10@@1) (= $t12@0 (|$validators#$1_DiemSystem_DiemSystem| $t10@@1)))) (and (=> (= (ControlFlow 0 215801) 215793) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 215801) 215743) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|))))))
(let ((anon13_Then_correct@@1  (=> $t11@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@@6)) (= $t6@@6 $t6@@6)) (and (= $t6@0@@0 $t6@@6) (= (ControlFlow 0 215919) 215533))) L3_correct@@0))))
(let ((anon12_Then_correct@@1  (=> (and inline$$Lt$0$dst@1@@1 (= $t11@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 215549) 215919) anon13_Then_correct@@1) (=> (= (ControlFlow 0 215549) 215801) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not inline$$Lt$0$dst@1@@1) (= $t9@@7 $t9@@7)) (and (= $t6@0@@0 $t9@@7) (= (ControlFlow 0 215469) 215533))) L3_correct@@0)))
(let ((anon11_Else$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| $t9@@7) (= $t9@@7 7)) (and (= $t9@@7 $t9@@7) (= inline$$Lt$0$dst@1@@1 inline$$Lt$0$dst@1@@1))) (and (=> (= (ControlFlow 0 215453) 215549) anon12_Then_correct@@1) (=> (= (ControlFlow 0 215453) 215469) anon12_Else_correct@@1))))))
(let ((inline$$Lt$0$anon0_correct@@1  (=> (and (= inline$$Lt$0$dst@1@@1 (< _$t0@@9 $t4@@7)) (= (ControlFlow 0 215417) 215453)) anon11_Else$1_correct)))
(let ((anon11_Else_correct@@6  (=> (and (and (not $t5@@7) (|$IsValid'u64'| $t4@@7)) (and (= $t4@@7 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@126 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@126)))))) (= (ControlFlow 0 215423) 215417))) inline$$Lt$0$anon0_correct@@1)))
(let ((anon11_Then_correct@@6  (=> $t5@@7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t6@@6)) (= $t6@@6 $t6@@6)) (and (= $t6@0@@0 $t6@@6) (= (ControlFlow 0 215947) 215533))) L3_correct@@0))))
(let ((anon0$1_correct@@10  (=> (and (and (and (and (and (and (and (forall ((config_address@@9 Int) ) (!  (=> (|$IsValid'address'| config_address@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@9) (= config_address@@9 173345816)))
 :qid |DiemSystemseqArraybpl.8057:24|
 :skolemid |227|
)) (forall ((config_address@@10 Int) ) (!  (=> (|$IsValid'address'| config_address@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@10) (= config_address@@10 173345816)))
 :qid |DiemSystemseqArraybpl.8057:243|
 :skolemid |228|
))) (forall ((config_address@@11 Int) ) (!  (=> (|$IsValid'address'| config_address@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@11) (= config_address@@11 173345816)))
 :qid |DiemSystemseqArraybpl.8057:483|
 :skolemid |229|
))) (forall ((config_address@@12 Int) ) (!  (=> (|$IsValid'address'| config_address@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@12) (= config_address@@12 173345816)))
 :qid |DiemSystemseqArraybpl.8057:745|
 :skolemid |230|
))) (forall ((config_address@@13 Int) ) (!  (=> (|$IsValid'address'| config_address@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@13) (= config_address@@13 173345816)))
 :qid |DiemSystemseqArraybpl.8057:969|
 :skolemid |231|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@19 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@127 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@127))))))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@14) (let ((i1@@6 $i_1@@14))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@128 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@128)))) i1@@6))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@128 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@128)))) i1@@6)))) 3))))
 :qid |DiemSystemseqArraybpl.8065:151|
 :skolemid |232|
))) (let (($range_0@@20 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@129 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@129))))))))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@15) (let ((i1@@7 $i_1@@15))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@130 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@130)))) i1@@7)) 1)))
 :qid |DiemSystemseqArraybpl.8070:151|
 :skolemid |233|
))))) (and (and (|$IsValid'u64'| _$t0@@9) (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@18)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@18) (let (($range_1@@6 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18))))))
(let (($range_2@@1 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18))))))
(forall (($i_3@@6 Int) ($i_4@@1 Int) ) (!  (=> ($InRange $range_1@@6 $i_3@@6) (=> ($InRange $range_2@@1 $i_4@@1) (let ((i@@50 $i_3@@6))
(let ((j@@17 $i_4@@1))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18)) i@@50)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@18)) j@@17))) (= i@@50 j@@17))))))
 :qid |DiemSystemseqArraybpl.8079:367|
 :skolemid |234|
))))))
 :qid |DiemSystemseqArraybpl.8078:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@18))
))) (and (= _$t0@@9 _$t0@@9) (= $t5@@7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 215357) 215947) anon11_Then_correct@@6) (=> (= (ControlFlow 0 215357) 215423) anon11_Else_correct@@6)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@15 T@$1_Event_EventHandle) ) (! (let ((stream@@15 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@15)))
 (and (= (|l#Multiset_86037| stream@@15) 0) (forall ((v@@59 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@15) v@@59) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 214977) 215357)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 292471) 214977) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $t18@0@@0 () T@$1_ValidatorConfig_Config)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun _$t0@@10 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t15@@0 () Int)
(declare-fun $t14@0@@2 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t16@@0 () Bool)
(declare-fun $t10@@2 () |T@$1_Option_Option'u64'|)
(declare-fun $t7@@1 () Int)
(declare-fun $t11@@1 () Bool)
(declare-fun $t5@@8 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t13 () Int)
(declare-fun $t6@@7 () Bool)
(declare-fun $t8@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t9@@8 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_validator_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 293420) (let ((anon14_Else_correct@@2  (=> (not $abort_flag@0@@2) (=> (and (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0|)) (= $t18@0@@0 $t18@0@@0)) (and (=> (= (ControlFlow 0 217131) (- 0 294452)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 217131) (- 0 294464)) (not (not (let (($range_0@@21 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@131 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@131))))))
(exists (($i_1@@16 Int) ) (!  (and (and (>= $i_1@@16 0) (< $i_1@@16 (seq.len $range_0@@21))) (let ((v@@60 (seq.nth $range_0@@21 $i_1@@16)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@60) _$t0@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))))) (=> (not (not (let (($range_0@@22 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@132 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@132))))))
(exists (($i_1@@17 Int) ) (!  (and (and (>= $i_1@@17 0) (< $i_1@@17 (seq.len $range_0@@22))) (let ((v@@61 (seq.nth $range_0@@22 $i_1@@17)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@61) _$t0@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))))) (and (=> (= (ControlFlow 0 217131) (- 0 294475)) (let (($range_0@@23 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@133 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@133))))))
(exists (($i_1@@18 Int) ) (!  (and (and (>= $i_1@@18 0) (< $i_1@@18 (seq.len $range_0@@23))) (let ((info (seq.nth $range_0@@23 $i_1@@18)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| info) _$t0@@10) (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| info)))))
 :qid |DiemSystemseqArraybpl.8548:176|
 :skolemid |249|
)))) (=> (let (($range_0@@24 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@134 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@134))))))
(exists (($i_1@@19 Int) ) (!  (and (and (>= $i_1@@19 0) (< $i_1@@19 (seq.len $range_0@@24))) (let ((info@@0 (seq.nth $range_0@@24 $i_1@@19)))
 (and (= (|$addr#$1_DiemSystem_ValidatorInfo| info@@0) _$t0@@10) (= $t18@0@@0 (|$config#$1_DiemSystem_ValidatorInfo| info@@0)))))
 :qid |DiemSystemseqArraybpl.8548:176|
 :skolemid |249|
))) (=> (= (ControlFlow 0 217131) (- 0 294521)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@135 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@135)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@136 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@136))))))))))))))))
(let ((L3_correct@@1  (and (=> (= (ControlFlow 0 216851) (- 0 294380)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (not (let (($range_0@@25 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@137 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@137))))))
(exists (($i_1@@20 Int) ) (!  (and (and (>= $i_1@@20 0) (< $i_1@@20 (seq.len $range_0@@25))) (let ((v@@62 (seq.nth $range_0@@25 $i_1@@20)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@62) _$t0@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (not (let (($range_0@@26 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@138 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@138))))))
(exists (($i_1@@21 Int) ) (!  (and (and (>= $i_1@@21 0) (< $i_1@@21 (seq.len $range_0@@26))) (let ((v@@63 (seq.nth $range_0@@26 $i_1@@21)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@63) _$t0@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))))) (=> (= (ControlFlow 0 216851) (- 0 294395)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7@0)) (and (not (let (($range_0@@27 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@139 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@139))))))
(exists (($i_1@@22 Int) ) (!  (and (and (>= $i_1@@22 0) (< $i_1@@22 (seq.len $range_0@@27))) (let ((v@@64 (seq.nth $range_0@@27 $i_1@@22)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@64) _$t0@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (= 7 $t7@0))))))))
(let ((anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t7@0 $abort_code@1@@2) (= (ControlFlow 0 217145) 216851))) L3_correct@@1)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@0|  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@0|)) (and (=> (= (ControlFlow 0 217020) 217145) anon14_Then_correct@@2) (=> (= (ControlFlow 0 217020) 217131) anon14_Else_correct@@2))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@0|  (=> (and (not (and (>= $t15@@0 0) (< $t15@@0 (seq.len $t14@0@@2)))) (= (ControlFlow 0 217018) 217020)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@0|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@0|  (=> (and (>= $t15@@0 0) (< $t15@@0 (seq.len $t14@0@@2))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0| (seq.nth $t14@0@@2 $t15@@0)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@0| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@0|))) (and (=> (= (ControlFlow 0 216968) 217145) anon14_Then_correct@@2) (=> (= (ControlFlow 0 216968) 217131) anon14_Else_correct@@2))))))
(let ((anon13_Else_correct@@2  (=> (not $t16@@0) (=> (and (|$IsValid'u64'| $t15@@0) (= $t15@@0 (seq.nth (|$vec#$1_Option_Option'u64'| $t10@@2) 0))) (and (=> (= (ControlFlow 0 217026) 217018) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@0|) (=> (= (ControlFlow 0 217026) 216968) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@0|))))))
(let ((anon13_Then_correct@@2  (=> $t16@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@2)) 0) (= 7 $t7@@1)) (= $t7@@1 $t7@@1)) (and (= $t7@0 $t7@@1) (= (ControlFlow 0 217169) 216851))) L3_correct@@1))))
(let ((anon12_Then_correct@@2  (=> $t11@@1 (=> (and (= $t14@0@@2 (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)) (= $t16@@0 (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@2)) 0))) (and (=> (= (ControlFlow 0 216867) 217169) anon13_Then_correct@@2) (=> (= (ControlFlow 0 216867) 217026) anon13_Else_correct@@2))))))
(let ((anon12_Else_correct@@2  (=> (and (and (not $t11@@1) (= $t13 $t13)) (and (= $t7@0 $t13) (= (ControlFlow 0 216791) 216851))) L3_correct@@1)))
(let ((anon11_Else_correct@@7  (=> (not $t6@@7) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t5@@8) (let (($range_0@@28 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)))))
(let (($range_1@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)))))
(forall (($i_2@@4 Int) ($i_3@@7 Int) ) (!  (=> ($InRange $range_0@@28 $i_2@@4) (=> ($InRange $range_1@@7 $i_3@@7) (let ((i@@51 $i_2@@4))
(let ((j@@18 $i_3@@7))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t5@@8) i@@51)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t5@@8) j@@18))) (= i@@51 j@@18))))))
 :qid |DiemSystemseqArraybpl.8379:222|
 :skolemid |246|
))))) (=> (and (and (and (and (= $t5@@8 (let ((addr@@140 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@140)))) (= $t5@@8 $t5@@8)) (and (= $t8@0 (|$validators#$1_DiemSystem_DiemSystem| $t5@@8)) (= $t9@@8 (seq.len $t8@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t10@@2) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@2)) 1)) (=> (let (($range_0@@29 ($Range 0 $t9@@8)))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@29 $i_1@@23) (let ((i@@52 $i_1@@23))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t8@0 i@@52)) _$t0@@10))))
 :qid |DiemSystemseqArraybpl.8409:54|
 :skolemid |247|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@2)) 0)))) (and (and (and (=> (let (($range_0@@30 ($Range 0 $t9@@8)))
(exists (($i_1@@24 Int) ) (!  (and ($InRange $range_0@@30 $i_1@@24) (let ((i@@53 $i_1@@24))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t8@0 i@@53)) _$t0@@10)))
 :qid |DiemSystemseqArraybpl.8413:54|
 :skolemid |248|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@2)) 0)) (let ((at (seq.nth (|$vec#$1_Option_Option'u64'| $t10@@2) 0)))
 (and (and (<= 0 at) (< at $t9@@8)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t8@0 at)) _$t0@@10))))) (= $t10@@2 $t10@@2)) (and (= $t11@@1  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t10@@2)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t13) (= $t13 7)) (and (= $t13 $t13) (= $t11@@1 $t11@@1))))) (and (=> (= (ControlFlow 0 216775) 216867) anon12_Then_correct@@2) (=> (= (ControlFlow 0 216775) 216791) anon12_Else_correct@@2)))))))
(let ((anon11_Then_correct@@7  (=> $t6@@7 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t7@@1)) (= $t7@@1 $t7@@1)) (and (= $t7@0 $t7@@1) (= (ControlFlow 0 217197) 216851))) L3_correct@@1))))
(let ((anon0$1_correct@@11  (=> (and (and (and (and (and (and (and (forall ((config_address@@14 Int) ) (!  (=> (|$IsValid'address'| config_address@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@14) (= config_address@@14 173345816)))
 :qid |DiemSystemseqArraybpl.8317:24|
 :skolemid |237|
)) (forall ((config_address@@15 Int) ) (!  (=> (|$IsValid'address'| config_address@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@15) (= config_address@@15 173345816)))
 :qid |DiemSystemseqArraybpl.8317:243|
 :skolemid |238|
))) (forall ((config_address@@16 Int) ) (!  (=> (|$IsValid'address'| config_address@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@16) (= config_address@@16 173345816)))
 :qid |DiemSystemseqArraybpl.8317:483|
 :skolemid |239|
))) (forall ((config_address@@17 Int) ) (!  (=> (|$IsValid'address'| config_address@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@17) (= config_address@@17 173345816)))
 :qid |DiemSystemseqArraybpl.8317:745|
 :skolemid |240|
))) (forall ((config_address@@18 Int) ) (!  (=> (|$IsValid'address'| config_address@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@18) (= config_address@@18 173345816)))
 :qid |DiemSystemseqArraybpl.8317:969|
 :skolemid |241|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@31 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@141 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@141))))))))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@25) (let ((i1@@8 $i_1@@25))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@142 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@142)))) i1@@8))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@142 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@142)))) i1@@8)))) 3))))
 :qid |DiemSystemseqArraybpl.8325:151|
 :skolemid |242|
))) (let (($range_0@@32 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@143 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@143))))))))
(forall (($i_1@@26 Int) ) (!  (=> ($InRange $range_0@@32 $i_1@@26) (let ((i1@@9 $i_1@@26))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@144 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@144)))) i1@@9)) 1)))
 :qid |DiemSystemseqArraybpl.8330:151|
 :skolemid |243|
))))) (and (and (|$IsValid'address'| _$t0@@10) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@19)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@19) (let (($range_1@@8 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19))))))
(let (($range_2@@2 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19))))))
(forall (($i_3@@8 Int) ($i_4@@2 Int) ) (!  (=> ($InRange $range_1@@8 $i_3@@8) (=> ($InRange $range_2@@2 $i_4@@2) (let ((i@@54 $i_3@@8))
(let ((j@@19 $i_4@@2))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19)) i@@54)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@19)) j@@19))) (= i@@54 j@@19))))))
 :qid |DiemSystemseqArraybpl.8339:367|
 :skolemid |244|
))))))
 :qid |DiemSystemseqArraybpl.8338:20|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@19))
))) (and (= _$t0@@10 _$t0@@10) (= $t6@@7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 216466) 217197) anon11_Then_correct@@7) (=> (= (ControlFlow 0 216466) 216775) anon11_Else_correct@@7)))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@16 T@$1_Event_EventHandle) ) (! (let ((stream@@16 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@16)))
 (and (= (|l#Multiset_86037| stream@@16) 0) (forall ((v@@65 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@16) v@@65) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 216086) 216466)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 293420) 216086) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| () Int)
(declare-fun _$t0@@11 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun _$t1@@8 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t12@1 () Bool)
(declare-fun $t5@@9 () Int)
(declare-fun $t16@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t15@@1 () |T@$1_Option_Option'u64'|)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t11@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$Lt$0$dst@1@@2 () Bool)
(declare-fun $t17@@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t10@0@@0 () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t11@0@@1 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $t14@0@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_get_validator_index_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 294543) (let ((L9_correct  (=> (= (ControlFlow 0 218331) (- 0 295447)) false)))
(let ((anon22_Then_correct@@0  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 218321) 218331)) L9_correct))))
(let ((anon20_Then_correct@@0  (=> $abort_flag@0@@3 (=> (and (= $abort_code@1@@3 $abort_code@1@@3) (= (ControlFlow 0 218397) 218331)) L9_correct))))
(let ((anon22_Else_correct@@0  (=> (and (not $abort_flag@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 218307) (- 0 295401)) (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (<= inline$$AddU64$0$dst@2 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (=> (= (ControlFlow 0 218307) (- 0 295408)) (let (($range_0@@33 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@27 Int) ) (!  (=> ($InRange $range_0@@33 $i_1@@27) (let ((j@@20 $i_1@@27))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 j@@20)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8864:49|
 :skolemid |253|
)))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 218238) 218321) anon22_Then_correct@@0) (=> (= (ControlFlow 0 218238) 218307) anon22_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0@@0 1) $MAX_U64) (= (ControlFlow 0 218236) 218238)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0@@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0@@0 1)) (= $abort_code@2 $abort_code@1@@3)) (and (= $abort_flag@1 $abort_flag@0@@3) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 218184) 218321) anon22_Then_correct@@0) (=> (= (ControlFlow 0 218184) 218307) anon22_Else_correct@@0))))))
(let ((anon21_Else_correct@@0  (=> (and (not $t12@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 218244) 218236) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 218244) 218184) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct@@0  (and (=> (= (ControlFlow 0 217908) (- 0 295159)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 217908) (- 0 295166)) (=> (let (($range_0@@34 ($Range 0 $t5@@9)))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@34 $i_1@@28) (let ((i@@55 $i_1@@28))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 i@@55)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8883:49|
 :skolemid |254|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0))) (=> (=> (let (($range_0@@35 ($Range 0 $t5@@9)))
(forall (($i_1@@29 Int) ) (!  (=> ($InRange $range_0@@35 $i_1@@29) (let ((i@@56 $i_1@@29))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 i@@56)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8883:49|
 :skolemid |254|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (and (=> (= (ControlFlow 0 217908) (- 0 295209)) (=> (let (($range_0@@36 ($Range 0 $t5@@9)))
(exists (($i_1@@30 Int) ) (!  (and ($InRange $range_0@@36 $i_1@@30) (let ((i@@57 $i_1@@30))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 i@@57)) _$t1@@8)))
 :qid |DiemSystemseqArraybpl.8889:49|
 :skolemid |255|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (let ((at@@0 (seq.nth (|$vec#$1_Option_Option'u64'| $t16@0) 0)))
 (and (and (<= 0 at@@0) (< at@@0 $t5@@9)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 at@@0)) _$t1@@8)))))) (=> (=> (let (($range_0@@37 ($Range 0 $t5@@9)))
(exists (($i_1@@31 Int) ) (!  (and ($InRange $range_0@@37 $i_1@@31) (let ((i@@58 $i_1@@31))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 i@@58)) _$t1@@8)))
 :qid |DiemSystemseqArraybpl.8889:49|
 :skolemid |255|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t16@0)) 0)) (let ((at@@1 (seq.nth (|$vec#$1_Option_Option'u64'| $t16@0) 0)))
 (and (and (<= 0 at@@1) (< at@@1 $t5@@9)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 at@@1)) _$t1@@8))))) (=> (= (ControlFlow 0 217908) (- 0 295283)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@145 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@145)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@146 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@146))))))))))))))
(let ((anon21_Then_correct@@0  (=> $t12@1 (and (=> (= (ControlFlow 0 218383) (- 0 295102)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 $t8@0@@0)) _$t1@@8)) (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 $t8@0@@0)) _$t1@@8) (=> (and (|$IsValid'$1_Option_Option'u64''| $t15@@1) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t15@@1)) 1)) (=> (and (and (= $t15@@1 (|$1_Option_Option'u64'| (seq.unit $t8@0@@0))) (= $t15@@1 $t15@@1)) (and (= $t16@0 $t15@@1) (= (ControlFlow 0 218383) 217908))) L8_correct@@0)))))))
(let ((anon20_Else_correct@@0  (=> (and (and (not $abort_flag@0@@3) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1|)) (and (= $t11@1 (|$addr#$1_DiemSystem_ValidatorInfo| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1|)) (= $t12@1 (= $t11@1 _$t1@@8)))) (and (=> (= (ControlFlow 0 218079) 218383) anon21_Then_correct@@0) (=> (= (ControlFlow 0 218079) 218244) anon21_Else_correct@@0)))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@1|  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@0@@1|)) (and (=> (= (ControlFlow 0 218047) 218397) anon20_Then_correct@@0) (=> (= (ControlFlow 0 218047) 218079) anon20_Else_correct@@0))))))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@1|  (=> (and (not (and (>= $t8@0@@0 0) (< $t8@0@@0 (seq.len _$t0@@11)))) (= (ControlFlow 0 218045) 218047)) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct@@1|)))
(let ((|inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@1|  (=> (and (>= $t8@0@@0 0) (< $t8@0@@0 (seq.len _$t0@@11))) (=> (and (and (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1| (seq.nth _$t0@@11 $t8@0@@0)) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@2@@1| |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$dst@1@@1|))) (and (=> (= (ControlFlow 0 217995) 218397) anon20_Then_correct@@0) (=> (= (ControlFlow 0 217995) 218079) anon20_Else_correct@@0))))))
(let ((anon19_Then_correct  (=> inline$$Lt$0$dst@1@@2 (and (=> (= (ControlFlow 0 218053) 218045) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct@@1|) (=> (= (ControlFlow 0 218053) 217995) |inline$$1_Vector_borrow'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct@@1|)))))
(let ((anon19_Else_correct  (=> (not inline$$Lt$0$dst@1@@2) (and (=> (= (ControlFlow 0 217762) (- 0 294911)) (= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (and (=> (= (ControlFlow 0 217762) (- 0 294918)) (let (($range_0@@38 ($Range 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)))
(forall (($i_1@@32 Int) ) (!  (=> ($InRange $range_0@@38 $i_1@@32) (let ((j@@21 $i_1@@32))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 j@@21)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8825:48|
 :skolemid |252|
)))) (=> (let (($range_0@@39 ($Range 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)))
(forall (($i_1@@33 Int) ) (!  (=> ($InRange $range_0@@39 $i_1@@33) (let ((j@@22 $i_1@@33))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 j@@22)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8825:48|
 :skolemid |252|
))) (=> (and (|$IsValid'$1_Option_Option'u64''| $t17@@0) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t17@@0)) 1)) (=> (and (and (= $t17@@0 (|$1_Option_Option'u64'| (as seq.empty (Seq Int)))) (= $t17@@0 $t17@@0)) (and (= $t16@0 $t17@@0) (= (ControlFlow 0 217762) 217908))) L8_correct@@0)))))))))
(let ((anon18_Else$1_correct  (and (=> (= (ControlFlow 0 217677) 218053) anon19_Then_correct) (=> (= (ControlFlow 0 217677) 217762) anon19_Else_correct))))
(let ((inline$$Lt$0$anon0_correct@@2  (=> (and (= inline$$Lt$0$dst@1@@2 (< $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (= (ControlFlow 0 217667) 217677)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 217673) (- 0 294749)) (<= 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|) (and (=> (= (ControlFlow 0 217673) (- 0 294756)) (let (($range_0@@40 ($Range 0 0)))
(forall (($i_1@@34 Int) ) (!  (=> ($InRange $range_0@@40 $i_1@@34) (let ((j@@23 $i_1@@34))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 j@@23)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8669:48|
 :skolemid |250|
)))) (=> (let (($range_0@@41 ($Range 0 0)))
(forall (($i_1@@35 Int) ) (!  (=> ($InRange $range_0@@41 $i_1@@35) (let ((j@@24 $i_1@@35))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 j@@24)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8669:48|
 :skolemid |250|
))) (=> (|$IsValid'u64'| $t8@0@@0) (=> (and (and (and (|$IsValid'$1_DiemSystem_ValidatorInfo'| $t10@0@@0) (|$IsValid'address'| $t11@0@@1)) (and (|$IsValid'u64'| $t13@0) (|$IsValid'u64'| $t14@0@@3))) (and (and (not false) (<= $t8@0@@0 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1|)) (and (let (($range_0@@42 ($Range 0 $t8@0@@0)))
(forall (($i_1@@36 Int) ) (!  (=> ($InRange $range_0@@42 $i_1@@36) (let ((j@@25 $i_1@@36))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t0@@11 j@@25)) _$t1@@8))))
 :qid |DiemSystemseqArraybpl.8709:53|
 :skolemid |251|
))) (= (ControlFlow 0 217673) 217667)))) inline$$Lt$0$anon0_correct@@2)))))))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1| (seq.len _$t0@@11)) (and (=> (= (ControlFlow 0 217463) 218411) anon18_Then_correct) (=> (= (ControlFlow 0 217463) 217673) anon18_Else_correct)))))
(let ((anon0$1_correct@@12  (=> (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| _$t0@@11) (|$IsValid'address'| _$t1@@8)) (=> (and (and (= $t5@@9 (seq.len _$t0@@11)) (= _$t0@@11 _$t0@@11)) (and (= _$t1@@8 _$t1@@8) (= (ControlFlow 0 217469) 217463))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@17 T@$1_Event_EventHandle) ) (! (let ((stream@@17 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@17)))
 (and (= (|l#Multiset_86037| stream@@17) 0) (forall ((v@@66 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@17) v@@66) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 217383) 217469)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (= (ControlFlow 0 294543) 217383) inline$$InitEventStore$0$anon0_correct@@12)))
anon0_correct@@12)))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| () T@$Memory_117614)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory@1 () T@$Memory_117687)
(declare-fun $t5@@10 () Int)
(declare-fun _$t0@@12 () T@$signer)
(declare-fun $t4@@8 () Int)
(declare-fun $t7@0@@0 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $1_DiemSystem_CapabilityHolder_$memory@0 () T@$Memory_117687)
(declare-fun |Store__T@[Int]$1_DiemSystem_CapabilityHolder_| (|T@[Int]$1_DiemSystem_CapabilityHolder| Int T@$1_DiemSystem_CapabilityHolder) |T@[Int]$1_DiemSystem_CapabilityHolder|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_CapabilityHolder|) ( ?x1 Int) ( ?x2 T@$1_DiemSystem_CapabilityHolder)) (! (= (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemSystem_CapabilityHolder|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemSystem_CapabilityHolder)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| ?x0 ?y1))) :weight 0)))
(declare-fun $t21@0 () T@$1_DiemSystem_CapabilityHolder)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun $t14@@1 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t20@@1 () Int)
(declare-fun $t17@0@@0 () Bool)
(declare-fun $t12@0@@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun |$temp_0'bool'@0@@7| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| () T@$Memory_117614)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| () T@$Memory_117614)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t15@@2 () Bool)
(declare-fun $t13@@0 () Int)
(declare-fun $t7@@2 () Int)
(declare-fun |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| () |T@[Int]Bool|)
(declare-fun $t9@@9 () Bool)
(declare-fun $t8@@4 () Int)
(declare-fun $t6@@8 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_initialize_validator_set$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 295466) (let ((anon28_Else_correct  (=> (not $abort_flag@0@@4) (and (=> (= (ControlFlow 0 219928) (- 0 297052)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory@1) 173345816)))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory@1) 173345816))) (and (=> (= (ControlFlow 0 219928) (- 0 297074)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 219928) (- 0 297084)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10))) (and (=> (= (ControlFlow 0 219928) (- 0 297096)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)) 0))) (and (=> (= (ControlFlow 0 219928) (- 0 297114)) (not (not (= (|$addr#$signer| _$t0@@12) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@12) 173345816))) (and (=> (= (ControlFlow 0 219928) (- 0 297128)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 219928) (- 0 297136)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8)) (and (=> (= (ControlFlow 0 219928) (- 0 297146)) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory@1) $t4@@8)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory@1) $t4@@8) (and (=> (= (ControlFlow 0 219928) (- 0 297154)) (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816) (=> (= (ControlFlow 0 219928) (- 0 297160)) (= (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@147 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@147))))) 0)))))))))))))))))))))))
(let ((L3_correct@@2  (and (=> (= (ControlFlow 0 219770) (- 0 296895)) (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8))) (=> (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8)) (=> (= (ControlFlow 0 219770) (- 0 296947)) (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)) (= 5 $t7@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t5@@10)) 0)) (= 3 $t7@0@@0))) (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t7@0@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $t4@@8) (= 6 $t7@0@@0))))))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t7@0@@0 $abort_code@1@@4) (= (ControlFlow 0 219942) 219770))) L3_correct@@2)))
(let ((anon27_Then$1_correct  (=> (= $1_DiemSystem_CapabilityHolder_$memory@1 $1_DiemSystem_CapabilityHolder_$memory) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 219994) 219942) anon28_Then_correct) (=> (= (ControlFlow 0 219994) 219928) anon28_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12)) (= (ControlFlow 0 219992) 219994)) anon27_Then$1_correct)))
(let ((anon27_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12))) (=> (and (and (= $1_DiemSystem_CapabilityHolder_$memory@0 ($Memory_117687 (|Store__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12) true) (|Store__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) (|$addr#$signer| _$t0@@12) $t21@0))) (= $1_DiemSystem_CapabilityHolder_$memory@1 $1_DiemSystem_CapabilityHolder_$memory@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 219800) 219942) anon28_Then_correct) (=> (= (ControlFlow 0 219800) 219928) anon28_Else_correct))))))
(let ((anon26_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@1 (= $t21@0 ($1_DiemSystem_CapabilityHolder $t14@@1))) (and (=> (= (ControlFlow 0 219778) 219992) anon27_Then_correct) (=> (= (ControlFlow 0 219778) 219800) anon27_Else_correct)))))
(let ((anon26_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@1) (= $t20@@1 $t20@@1)) (and (= $t7@0@@0 $t20@@1) (= (ControlFlow 0 219598) 219770))) L3_correct@@2)))
(let ((anon11$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t20@@1) (= $t20@@1 6)) (and (= $t20@@1 $t20@@1) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 219582) 219778) anon26_Then_correct@@0) (=> (= (ControlFlow 0 219582) 219598) anon26_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not $t17@0@@0)) (= (ControlFlow 0 219542) 219582)) anon11$1_correct)))
(let ((anon11_correct@@0  (=> (and (and (and (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| $t14@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) 173345816)) (and (= (let ((addr@@148 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0|) addr@@148))) $t12@0@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= $t14@@1 $t14@@1) (|$IsValid'address'| 173345816)) (and (= $t17@0@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (= (ControlFlow 0 219548) 219542)))) inline$$Not$0$anon0_correct@@1)))
(let ((anon25_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@0@@7|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@0|) (= (ControlFlow 0 219464) 219548))) anon11_correct@@0)))
(let ((anon25_Then_correct@@0  (=> (and (and |$temp_0'bool'@0@@7| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@0|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@0| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@0|) (= (ControlFlow 0 220006) 219548))) anon11_correct@@0)))
(let ((anon24_Else_correct@@0  (=> (not $t15@@2) (and (=> (= (ControlFlow 0 219452) 220006) anon25_Then_correct@@0) (=> (= (ControlFlow 0 219452) 219464) anon25_Else_correct@@0)))))
(let ((anon24_Then_correct@@0  (=> $t15@@2 (=> (and (and (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@0)) (= 5 $t7@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@0)) 0)) (= 3 $t7@@2))) (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (= 6 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 220094) 219770))) L3_correct@@2))))
(let ((anon23_Else_correct@@0  (=> (and (not false) (= $t12@0@@0 ($1_DiemSystem_DiemSystem 0 |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 219444) (- 0 296379)) (let (($range_0@@43 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(let (($range_1@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(forall (($i_2@@5 Int) ($i_3@@9 Int) ) (!  (=> ($InRange $range_0@@43 $i_2@@5) (=> ($InRange $range_1@@9 $i_3@@9) (let ((i@@59 $i_2@@5))
(let ((j@@26 $i_3@@9))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) i@@59)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) j@@26))) (= i@@59 j@@26))))))
 :qid |DiemSystemseqArraybpl.9425:175|
 :skolemid |272|
))))) (=> (let (($range_0@@44 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(let (($range_1@@10 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0)))))
(forall (($i_2@@6 Int) ($i_3@@10 Int) ) (!  (=> ($InRange $range_0@@44 $i_2@@6) (=> ($InRange $range_1@@10 $i_3@@10) (let ((i@@60 $i_2@@6))
(let ((j@@27 $i_3@@10))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) i@@60)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t12@0@@0) j@@27))) (= i@@60 j@@27))))))
 :qid |DiemSystemseqArraybpl.9425:175|
 :skolemid |272|
)))) (=> (= $t13@@0 (|$addr#$signer| _$t0@@12)) (and (=> (= (ControlFlow 0 219444) (- 0 296472)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816) (=> (= $t15@@2  (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@0)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 219444) 220094) anon24_Then_correct@@0) (=> (= (ControlFlow 0 219444) 219452) anon24_Else_correct@@0)))))))))))
(let ((anon22_Then_correct@@1  (=> $t9@@9 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t8@@4)) (= 5 $t7@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t8@@4)) 0)) (= 3 $t7@@2))) (and (not (= (|$addr#$signer| _$t0@@12) 173345816)) (= 2 $t7@@2))) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 220200) 219770))) L3_correct@@2))))
(let ((anon21_Then_correct@@1  (=> $t6@@8 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t7@@2)) (= $t7@@2 $t7@@2)) (and (= $t7@0@@0 $t7@@2) (= (ControlFlow 0 220226) 219770))) L3_correct@@2))))
(let ((anon23_Then_correct@@0 true))
(let ((|inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$v@1| (as seq.empty (Seq T@$1_DiemSystem_ValidatorInfo))) (and (=> (= (ControlFlow 0 219271) 220108) anon23_Then_correct@@0) (=> (= (ControlFlow 0 219271) 219444) anon23_Else_correct@@0)))))
(let ((anon22_Else_correct@@1  (=> (not $t9@@9) (=> (and (|$IsValid'u8'| 0) (= (ControlFlow 0 219277) 219271)) |inline$$1_Vector_empty'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|))))
(let ((anon21_Else_correct@@1  (=> (not $t6@@8) (=> (and (= $t8@@4 (|$addr#$signer| _$t0@@12)) (= $t9@@9  (or (or (or (not (= (|$addr#$signer| _$t0@@12) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t8@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t8@@4)) 0))) (not (= (|$addr#$signer| _$t0@@12) 173345816))))) (and (=> (= (ControlFlow 0 219235) 220200) anon22_Then_correct@@1) (=> (= (ControlFlow 0 219235) 219277) anon22_Else_correct@@1))))))
(let ((anon0$1_correct@@13  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@149 Int) ) (!  (=> (|$IsValid'address'| addr@@149) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130113| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@149) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@149)) 4))))
 :qid |DiemSystemseqArraybpl.9252:20|
 :skolemid |256|
))) (=> (and (and (forall ((addr@@150 Int) ) (!  (=> (|$IsValid'address'| addr@@150) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@150) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@150)) 3))))
 :qid |DiemSystemseqArraybpl.9256:20|
 :skolemid |257|
)) (forall ((addr@@151 Int) ) (!  (=> (|$IsValid'address'| addr@@151) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@151) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@151)) 3))))
 :qid |DiemSystemseqArraybpl.9260:20|
 :skolemid |258|
))) (and (forall ((addr@@152 Int) ) (!  (=> (|$IsValid'address'| addr@@152) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@152) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@152)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@152)) 3))))
 :qid |DiemSystemseqArraybpl.9264:20|
 :skolemid |259|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (and (and (and (and (forall ((config_address@@19 Int) ) (!  (=> (|$IsValid'address'| config_address@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@19) (= config_address@@19 173345816)))
 :qid |DiemSystemseqArraybpl.9272:24|
 :skolemid |260|
)) (forall ((config_address@@20 Int) ) (!  (=> (|$IsValid'address'| config_address@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@20) (= config_address@@20 173345816)))
 :qid |DiemSystemseqArraybpl.9272:243|
 :skolemid |261|
))) (forall ((config_address@@21 Int) ) (!  (=> (|$IsValid'address'| config_address@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@21) (= config_address@@21 173345816)))
 :qid |DiemSystemseqArraybpl.9272:483|
 :skolemid |262|
))) (forall ((config_address@@22 Int) ) (!  (=> (|$IsValid'address'| config_address@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@22) (= config_address@@22 173345816)))
 :qid |DiemSystemseqArraybpl.9272:745|
 :skolemid |263|
))) (forall ((config_address@@23 Int) ) (!  (=> (|$IsValid'address'| config_address@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@23) (= config_address@@23 173345816)))
 :qid |DiemSystemseqArraybpl.9272:969|
 :skolemid |264|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (and (let (($range_0@@45 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@153 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@153))))))))
(forall (($i_1@@37 Int) ) (!  (=> ($InRange $range_0@@45 $i_1@@37) (let ((i1@@10 $i_1@@37))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@154 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@154)))) i1@@10))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@154 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@154)))) i1@@10)))) 3))))
 :qid |DiemSystemseqArraybpl.9280:151|
 :skolemid |265|
))) (let (($range_0@@46 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@155 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@155))))))))
(forall (($i_1@@38 Int) ) (!  (=> ($InRange $range_0@@46 $i_1@@38) (let ((i1@@11 $i_1@@38))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@156 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@156)))) i1@@11)) 1)))
 :qid |DiemSystemseqArraybpl.9285:151|
 :skolemid |266|
)))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@12)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@20)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@20))
 :qid |DiemSystemseqArraybpl.9292:20|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@20))
))))) (and (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@21)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@21))
 :qid |DiemSystemseqArraybpl.9296:20|
 :skolemid |268|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@21))
)) (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@22)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@22) (let (($range_1@@11 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22))))))
(let (($range_2@@3 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22))))))
(forall (($i_3@@11 Int) ($i_4@@3 Int) ) (!  (=> ($InRange $range_1@@11 $i_3@@11) (=> ($InRange $range_2@@3 $i_4@@3) (let ((i@@61 $i_3@@11))
(let ((j@@28 $i_4@@3))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22)) i@@61)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@22)) j@@28))) (= i@@61 j@@28))))))
 :qid |DiemSystemseqArraybpl.9301:367|
 :skolemid |269|
))))))
 :qid |DiemSystemseqArraybpl.9300:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@22))
))) (and (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@23)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@23))
 :qid |DiemSystemseqArraybpl.9306:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@23))
)) (= $t4@@8 (|$addr#$signer| _$t0@@12)))) (and (and (= $t5@@10 (|$addr#$signer| _$t0@@12)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@0| 173345816)) (and (= _$t0@@12 _$t0@@12) (= $t6@@8  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 219163) 220226) anon21_Then_correct@@1) (=> (= (ControlFlow 0 219163) 219235) anon21_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@13  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@18 T@$1_Event_EventHandle) ) (! (let ((stream@@18 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@18)))
 (and (= (|l#Multiset_86037| stream@@18) 0) (forall ((v@@67 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@18) v@@67) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 218573) 219163)) anon0$1_correct@@13)))
(let ((anon0_correct@@13  (=> (= (ControlFlow 0 295466) 218573) inline$$InitEventStore$0$anon0_correct@@13)))
anon0_correct@@13))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@9 () Bool)
(declare-fun $t3@@6 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t6@0@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t7@@3 () Bool)
(declare-fun _$t0@@13 () Int)
(declare-fun $t5@@11 () Int)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_is_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 297179) (let ((anon4_Else_correct@@0  (=> (not $t4@@9) (=> (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t3@@6) (let (($range_0@@47 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t3@@6)))))
(let (($range_1@@12 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t3@@6)))))
(forall (($i_2@@7 Int) ($i_3@@12 Int) ) (!  (=> ($InRange $range_0@@47 $i_2@@7) (=> ($InRange $range_1@@12 $i_3@@12) (let ((i@@62 $i_2@@7))
(let ((j@@29 $i_3@@12))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t3@@6) i@@62)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t3@@6) j@@29))) (= i@@62 j@@29))))))
 :qid |DiemSystemseqArraybpl.9737:222|
 :skolemid |282|
))))) (= $t3@@6 (let ((addr@@157 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@157))))) (and (and (= $t3@@6 $t3@@6) (= $t6@0@@1 (|$validators#$1_DiemSystem_DiemSystem| $t3@@6))) (and (= $t7@@3 (let (($range_0@@48 $t6@0@@1))
(exists (($i_1@@39 Int) ) (!  (and (and (>= $i_1@@39 0) (< $i_1@@39 (seq.len $range_0@@48))) (let ((v@@68 (seq.nth $range_0@@48 $i_1@@39)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@68) _$t0@@13)))
 :qid |DiemSystemseqArraybpl.9761:62|
 :skolemid |283|
)))) (= $t7@@3 $t7@@3)))) (and (=> (= (ControlFlow 0 221040) (- 0 297818)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 221040) (- 0 297830)) (= $t7@@3 (let (($range_0@@49 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@158 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@158))))))
(exists (($i_1@@40 Int) ) (!  (and (and (>= $i_1@@40 0) (< $i_1@@40 (seq.len $range_0@@49))) (let ((v@@69 (seq.nth $range_0@@49 $i_1@@40)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@69) _$t0@@13)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))))) (=> (= $t7@@3 (let (($range_0@@50 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@159 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@159))))))
(exists (($i_1@@41 Int) ) (!  (and (and (>= $i_1@@41 0) (< $i_1@@41 (seq.len $range_0@@50))) (let ((v@@70 (seq.nth $range_0@@50 $i_1@@41)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@70) _$t0@@13)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (=> (= (ControlFlow 0 221040) (- 0 297842)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@160 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@160)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@161 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@161))))))))))))))
(let ((anon4_Then_correct@@0  (=> $t4@@9 (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t5@@11)) (= $t5@@11 $t5@@11)) (and (=> (= (ControlFlow 0 221098) (- 0 297624)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 221098) (- 0 297631)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t5@@11)))))))))
(let ((anon0$1_correct@@14  (=> (and (and (and (and (and (forall ((config_address@@24 Int) ) (!  (=> (|$IsValid'address'| config_address@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@24) (= config_address@@24 173345816)))
 :qid |DiemSystemseqArraybpl.9672:24|
 :skolemid |273|
)) (forall ((config_address@@25 Int) ) (!  (=> (|$IsValid'address'| config_address@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@25) (= config_address@@25 173345816)))
 :qid |DiemSystemseqArraybpl.9672:243|
 :skolemid |274|
))) (forall ((config_address@@26 Int) ) (!  (=> (|$IsValid'address'| config_address@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@26) (= config_address@@26 173345816)))
 :qid |DiemSystemseqArraybpl.9672:483|
 :skolemid |275|
))) (forall ((config_address@@27 Int) ) (!  (=> (|$IsValid'address'| config_address@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@27) (= config_address@@27 173345816)))
 :qid |DiemSystemseqArraybpl.9672:745|
 :skolemid |276|
))) (forall ((config_address@@28 Int) ) (!  (=> (|$IsValid'address'| config_address@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@28) (= config_address@@28 173345816)))
 :qid |DiemSystemseqArraybpl.9672:969|
 :skolemid |277|
))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@51 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@162 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@162))))))))
(forall (($i_1@@42 Int) ) (!  (=> ($InRange $range_0@@51 $i_1@@42) (let ((i1@@12 $i_1@@42))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@163 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@163)))) i1@@12))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@163 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@163)))) i1@@12)))) 3))))
 :qid |DiemSystemseqArraybpl.9680:151|
 :skolemid |278|
)))) (and (let (($range_0@@52 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@164 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@164))))))))
(forall (($i_1@@43 Int) ) (!  (=> ($InRange $range_0@@52 $i_1@@43) (let ((i1@@13 $i_1@@43))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@165 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@165)))) i1@@13)) 1)))
 :qid |DiemSystemseqArraybpl.9685:151|
 :skolemid |279|
))) (|$IsValid'address'| _$t0@@13))) (and (and (forall (($a_0@@24 Int) ) (! (let (($rsc@@24 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@24)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@24) (let (($range_1@@13 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24))))))
(let (($range_2@@4 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24))))))
(forall (($i_3@@13 Int) ($i_4@@4 Int) ) (!  (=> ($InRange $range_1@@13 $i_3@@13) (=> ($InRange $range_2@@4 $i_4@@4) (let ((i@@63 $i_3@@13))
(let ((j@@30 $i_4@@4))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24)) i@@63)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@24)) j@@30))) (= i@@63 j@@30))))))
 :qid |DiemSystemseqArraybpl.9694:367|
 :skolemid |280|
))))))
 :qid |DiemSystemseqArraybpl.9693:20|
 :skolemid |281|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@24))
)) (= _$t0@@13 _$t0@@13)) (and (= _$t0@@13 _$t0@@13) (= $t4@@9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))))))) (and (=> (= (ControlFlow 0 220844) 221098) anon4_Then_correct@@0) (=> (= (ControlFlow 0 220844) 221040) anon4_Else_correct@@0)))))
(let ((inline$$InitEventStore$0$anon0_correct@@14  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@19 T@$1_Event_EventHandle) ) (! (let ((stream@@19 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@19)))
 (and (= (|l#Multiset_86037| stream@@19) 0) (forall ((v@@71 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@19) v@@71) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 220458) 220844)) anon0$1_correct@@14)))
(let ((anon0_correct@@14  (=> (= (ControlFlow 0 297179) 220458) inline$$InitEventStore$0$anon0_correct@@14)))
anon0_correct@@14))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@14 () Int)
(declare-fun _$t1@@9 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t3@@7 () Int)
(declare-fun $t4@@10 () |T@$1_Option_Option'u64'|)
(declare-fun $t5@@12 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_is_validator_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 297860) (let ((anon0$1_correct@@15  (=> (|$IsValid'address'| _$t0@@14) (=> (and (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| _$t1@@9) (= _$t0@@14 _$t0@@14)) (and (= _$t1@@9 _$t1@@9) (= $t3@@7 (seq.len _$t1@@9)))) (=> (and (and (and (|$IsValid'$1_Option_Option'u64''| $t4@@10) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@10)) 1)) (=> (let (($range_0@@53 ($Range 0 $t3@@7)))
(forall (($i_1@@44 Int) ) (!  (=> ($InRange $range_0@@53 $i_1@@44) (let ((i@@64 $i_1@@44))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t1@@9 i@@64)) _$t0@@14))))
 :qid |DiemSystemseqArraybpl.9866:54|
 :skolemid |284|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@10)) 0))) (and (and (=> (let (($range_0@@54 ($Range 0 $t3@@7)))
(exists (($i_1@@45 Int) ) (!  (and ($InRange $range_0@@54 $i_1@@45) (let ((i@@65 $i_1@@45))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t1@@9 i@@65)) _$t0@@14)))
 :qid |DiemSystemseqArraybpl.9870:54|
 :skolemid |285|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@10)) 0)) (let ((at@@2 (seq.nth (|$vec#$1_Option_Option'u64'| $t4@@10) 0)))
 (and (and (<= 0 at@@2) (< at@@2 $t3@@7)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth _$t1@@9 at@@2)) _$t0@@14))))) (= $t4@@10 $t4@@10)) (and (= $t5@@12  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t4@@10)) 0))) (= $t5@@12 $t5@@12)))) (and (=> (= (ControlFlow 0 221495) (- 0 298100)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 221495) (- 0 298107)) (= $t5@@12 (let (($range_0@@55 _$t1@@9))
(exists (($i_1@@46 Int) ) (!  (and (and (>= $i_1@@46 0) (< $i_1@@46 (seq.len $range_0@@55))) (let ((v@@72 (seq.nth $range_0@@55 $i_1@@46)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@72) _$t0@@14)))
 :qid |DiemSystemseqArraybpl.9906:57|
 :skolemid |286|
))))) (=> (= $t5@@12 (let (($range_0@@56 _$t1@@9))
(exists (($i_1@@47 Int) ) (!  (and (and (>= $i_1@@47 0) (< $i_1@@47 (seq.len $range_0@@56))) (let ((v@@73 (seq.nth $range_0@@56 $i_1@@47)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@73) _$t0@@14)))
 :qid |DiemSystemseqArraybpl.9906:57|
 :skolemid |286|
)))) (=> (= (ControlFlow 0 221495) (- 0 298143)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@166 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@166)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@167 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@167)))))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@15  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@20 T@$1_Event_EventHandle) ) (! (let ((stream@@20 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@20)))
 (and (= (|l#Multiset_86037| stream@@20) 0) (forall ((v@@74 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@20) v@@74) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 221224) 221495)) anon0$1_correct@@15)))
(let ((anon0_correct@@15  (=> (= (ControlFlow 0 297860) 221224) inline$$InitEventStore$0$anon0_correct@@15)))
anon0_correct@@15))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t37 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@0 () T@$Memory_132007)
(declare-fun $t38@@0 () Int)
(declare-fun $t39 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| () T@$Memory_117614)
(declare-fun $t4@0 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t40 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t41@@0 () T@$1_Event_EventHandle)
(declare-fun $t35@@0 () T@$1_Event_EventHandle)
(declare-fun $t42@@0 () Bool)
(declare-fun $t34@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@0 () T@$EventStore)
(declare-fun $t43@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t44@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t45@@0 () Int)
(declare-fun $t46@@0 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun _$t1@@10 () Int)
(declare-fun $t7@@4 () Int)
(declare-fun _$t0@@15 () T@$signer)
(declare-fun $t8@@5 () T@$1_DiemConfig_Configuration)
(declare-fun $t9@@10 () Int)
(declare-fun $t13@@1 () Int)
(declare-fun $t10@@3 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t11@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t12@@0 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1@@0| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@0 () T@$Memory_132007)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@0 () T@$Memory_132007)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@0| () T@$1_DiemConfig_Configuration)
(declare-fun |$temp_0'bool'@0@@8| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| () T@$Memory_117614)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| () T@$Memory_117614)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun $t36 () Bool)
(declare-fun $t15@0@@0 () Int)
(declare-fun $t15@@3 () Int)
(declare-fun $t32 () T@$1_DiemConfig_Configuration)
(declare-fun $t33 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $t28@1 () T@$Mutation_133691)
(declare-fun $t28@0 () T@$Mutation_133691)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| () T@$Mutation_94640)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| () |T@[Int]Bool|)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_94640)
(declare-fun $t26@@0 () Int)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_94640)
(declare-fun $t29@0 () T@$Mutation_94640)
(declare-fun |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| () Int)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun $t27 () Bool)
(declare-fun $t22@@0 () |T@$1_Option_Option'u64'|)
(declare-fun $t4@@11 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t23@@1 () Bool)
(declare-fun $t25@@1 () Int)
(declare-fun $t18@@0 () Bool)
(declare-fun $t20@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t21@@0 () Int)
(declare-fun $t17@@1 () Bool)
(declare-fun $t16@@1 () Int)
(declare-fun $t14@@2 () Bool)
(declare-fun $t28@@0 () T@$Mutation_133691)
(declare-fun $t29@@0 () T@$Mutation_94640)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_remove_validator$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 298164) (let ((anon21_correct  (=> (and (and (= $t37 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory@2@@0) 173345816)) (= $t38@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t39 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t37))) (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) 173345816)) $t4@0))) (=> (and (and (and (= $t40 $t39) (= $t41@@0 $t35@@0)) (and (= $t42@@0  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t38@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t34@@0))))) (= $es@0@@0 (ite $t42@@0 (let ((stream@@21 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) $t41@@0)))
(let ((stream_new@@3 (let ((len@@3 (|l#Multiset_86037| stream@@21)))
(let ((cnt@@3 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@21) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t40) (+ cnt@@3 1)) (+ len@@3 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) $t41@@0 stream_new@@3)))) $es)))) (and (and (= $t43@@0 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@168 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@168))))) (= $t44@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory@2@@0) 173345816))) (and (= $t45@@0 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t46@@0 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t44@@0)))))) (and (=> (= (ControlFlow 0 224076) (- 0 300666)) (not (not (let (($range_0@@57 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@169 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@169))))))
(exists (($i_1@@48 Int) ) (!  (and (and (>= $i_1@@48 0) (< $i_1@@48 (seq.len $range_0@@57))) (let ((v@@75 (seq.nth $range_0@@57 $i_1@@48)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@75) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))))) (=> (not (not (let (($range_0@@58 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@170 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@170))))))
(exists (($i_1@@49 Int) ) (!  (and (and (>= $i_1@@49 0) (< $i_1@@49 (seq.len $range_0@@58))) (let ((v@@76 (seq.nth $range_0@@58 $i_1@@49)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@76) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))))) (and (=> (= (ControlFlow 0 224076) (- 0 300677)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4))) (and (=> (= (ControlFlow 0 224076) (- 0 300689)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)) 0))) (and (=> (= (ControlFlow 0 224076) (- 0 300707)) (not (not (= (|$addr#$signer| _$t0@@15) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@15) 173345816))) (and (=> (= (ControlFlow 0 224076) (- 0 300721)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 224076) (- 0 300731)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5)))) (and (=> (= (ControlFlow 0 224076) (- 0 300773)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1))) (and (=> (= (ControlFlow 0 224076) (- 0 300785)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (and (=> (= (ControlFlow 0 224076) (- 0 300803)) (not (not (= (|$addr#$signer| _$t0@@15) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@15) 173345816))) (and (=> (= (ControlFlow 0 224076) (- 0 300817)) (let (($range_0@@59 $t43@@0))
(forall (($i_1@@50 Int) ) (!  (=> (and (>= $i_1@@50 0) (< $i_1@@50 (seq.len $range_0@@59))) (let ((vi (seq.nth $range_0@@59 $i_1@@50)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi) _$t1@@10)) (let (($range_2@@5 $t10@@3))
(exists (($i_3@@14 Int) ) (!  (and (and (>= $i_3@@14 0) (< $i_3@@14 (seq.len $range_2@@5))) (let ((ovi (seq.nth $range_2@@5 $i_3@@14)))
(= vi ovi)))
 :qid |DiemSystemseqArraybpl.10556:107|
 :skolemid |309|
))))))
 :qid |DiemSystemseqArraybpl.10555:38|
 :skolemid |310|
)))) (=> (let (($range_0@@60 $t43@@0))
(forall (($i_1@@51 Int) ) (!  (=> (and (>= $i_1@@51 0) (< $i_1@@51 (seq.len $range_0@@60))) (let ((vi@@0 (seq.nth $range_0@@60 $i_1@@51)))
 (=> (not (= (|$addr#$1_DiemSystem_ValidatorInfo| vi@@0) _$t1@@10)) (let (($range_2@@6 $t10@@3))
(exists (($i_3@@15 Int) ) (!  (and (and (>= $i_3@@15 0) (< $i_3@@15 (seq.len $range_2@@6))) (let ((ovi@@0 (seq.nth $range_2@@6 $i_3@@15)))
(= vi@@0 ovi@@0)))
 :qid |DiemSystemseqArraybpl.10556:107|
 :skolemid |309|
))))))
 :qid |DiemSystemseqArraybpl.10555:38|
 :skolemid |310|
))) (and (=> (= (ControlFlow 0 224076) (- 0 300883)) (not (let (($range_0@@61 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@171 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@171))))))
(exists (($i_1@@52 Int) ) (!  (and (and (>= $i_1@@52 0) (< $i_1@@52 (seq.len $range_0@@61))) (let ((v@@77 (seq.nth $range_0@@61 $i_1@@52)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@77) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
))))) (=> (not (let (($range_0@@62 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@172 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1|) addr@@172))))))
(exists (($i_1@@53 Int) ) (!  (and (and (>= $i_1@@53 0) (< $i_1@@53 (seq.len $range_0@@62))) (let ((v@@78 (seq.nth $range_0@@62 $i_1@@53)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@78) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (and (=> (= (ControlFlow 0 224076) (- 0 300892)) (let ((actual@@2 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@2 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@22 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@4 (let ((len@@4 (|l#Multiset_86037| stream@@22)))
(let ((cnt@@4 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@22) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@4 1)) (+ len@@4 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@4)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@2) (|counter#$EventStore| actual@@2)) (forall ((handle@@21 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@2) handle@@21)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@2) handle@@21))) (forall ((v@@79 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@2) handle@@21)) v@@79) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@2) handle@@21)) v@@79))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
)))))) (=> (let ((actual@@3 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@3 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@23 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@5 (let ((len@@5 (|l#Multiset_86037| stream@@23)))
(let ((cnt@@5 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@23) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@5 1)) (+ len@@5 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@5)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@3) (|counter#$EventStore| actual@@3)) (forall ((handle@@22 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@3) handle@@22)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@3) handle@@22))) (forall ((v@@80 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@3) handle@@22)) v@@80) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@3) handle@@22)) v@@80))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 224076) (- 0 300937)) (let ((actual@@4 ($EventStore (- (|counter#$EventStore| $es@0@@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@0) (|streams#$EventStore| $es)))))
(let ((expected@@4 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t45@@0 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t11@@2)))) (let ((stream@@24 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t12@@0)))
(let ((stream_new@@6 (let ((len@@6 (|l#Multiset_86037| stream@@24)))
(let ((cnt@@6 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@24) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t46@@0) (+ cnt@@6 1)) (+ len@@6 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t12@@0 stream_new@@6)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@4) (|counter#$EventStore| expected@@4)) (forall ((handle@@23 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@4) handle@@23)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@4) handle@@23))) (forall ((v@@81 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@4) handle@@23)) v@@81) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@4) handle@@23)) v@@81))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
))))))))))))))))))))))))))))))))))
(let ((anon31_Else_correct  (=> (and (and (not |$temp_0'bool'@1@@0|) (= $1_DiemConfig_Configuration_$memory@1@@0 ($Memory_132007 (|Store__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@1@@0) (= (ControlFlow 0 223606) 224076))) anon21_correct)))
(let ((anon31_Then_correct  (=> (and (and |$temp_0'bool'@1@@0| (= $1_DiemConfig_Configuration_$memory@0@@0 ($Memory_132007 (|Store__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@0|)))) (and (= $1_DiemConfig_Configuration_$memory@2@@0 $1_DiemConfig_Configuration_$memory@0@@0) (= (ControlFlow 0 224088) 224076))) anon21_correct)))
(let ((anon30_Else_correct  (=> (not |$temp_0'bool'@0@@8|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@1|)) (and (=> (= (ControlFlow 0 223592) 224088) anon31_Then_correct) (=> (= (ControlFlow 0 223592) 223606) anon31_Else_correct))))))
(let ((anon30_Then_correct  (=> |$temp_0'bool'@0@@8| (=> (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@1|))) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@1| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@1|)) (and (=> (= (ControlFlow 0 224100) 224088) anon31_Then_correct) (=> (= (ControlFlow 0 224100) 223606) anon31_Else_correct))))))
(let ((anon29_Else_correct  (=> (not $t36) (and (=> (= (ControlFlow 0 223580) 224100) anon30_Then_correct) (=> (= (ControlFlow 0 223580) 223592) anon30_Else_correct)))))
(let ((L3_correct@@3  (and (=> (= (ControlFlow 0 223081) (- 0 300106)) (or (or (or (or (or (or (or (or (not (let (($range_0@@63 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@173 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@173))))))
(exists (($i_1@@54 Int) ) (!  (and (and (>= $i_1@@54 0) (< $i_1@@54 (seq.len $range_0@@63))) (let ((v@@82 (seq.nth $range_0@@63 $i_1@@54)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@82) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816)))) (=> (or (or (or (or (or (or (or (or (not (let (($range_0@@64 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@174 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@174))))))
(exists (($i_1@@55 Int) ) (!  (and (and (>= $i_1@@55 0) (< $i_1@@55 (seq.len $range_0@@64))) (let ((v@@83 (seq.nth $range_0@@64 $i_1@@55)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@83) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))) (=> (= (ControlFlow 0 223081) (- 0 300228)) (or (or (or (or (or (or (or (or (and (not (let (($range_0@@65 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@175 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@175))))))
(exists (($i_1@@56 Int) ) (!  (and (and (>= $i_1@@56 0) (< $i_1@@56 (seq.len $range_0@@65))) (let ((v@@84 (seq.nth $range_0@@65 $i_1@@56)))
(= (|$addr#$1_DiemSystem_ValidatorInfo| v@@84) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.6916:125|
 :skolemid |191|
)))) (= 7 $t15@0@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)) (= 5 $t15@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t7@@4)) 0)) (= 3 $t15@0@@0))) (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@0@@0))) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t8@@5) 18446744073709551615)) (< $t9@@10 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t8@@5))) (= 1 $t15@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)) (= 5 $t15@0@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t13@@1)) 0)) (= 3 $t15@0@@0))) (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@0@@0))))))))
(let ((anon29_Then_correct  (=> $t36 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@3)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))) (= 1 $t15@@3))) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 224176) 223081))) L3_correct@@3))))
(let ((anon28_Else_correct@@0  (=> (and (not $abort_flag@0@@5) (= $t28@1 ($Mutation_133691 (|l#$Mutation_133691| $t28@0) (|p#$Mutation_133691| $t28@0) ($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@0)) (|v#$Mutation_94640| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2|))))) (and (=> (= (ControlFlow 0 223574) (- 0 299787)) (let (($range_0@@66 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1))))))
(let (($range_1@@14 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1))))))
(forall (($i_2@@8 Int) ($i_3@@16 Int) ) (!  (=> ($InRange $range_0@@66 $i_2@@8) (=> ($InRange $range_1@@14 $i_3@@16) (let ((i@@66 $i_2@@8))
(let ((j@@31 $i_3@@16))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1)) i@@66)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1)) j@@31))) (= i@@66 j@@31))))))
 :qid |DiemSystemseqArraybpl.10376:203|
 :skolemid |308|
))))) (=> (let (($range_0@@67 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1))))))
(let (($range_1@@15 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1))))))
(forall (($i_2@@9 Int) ($i_3@@17 Int) ) (!  (=> ($InRange $range_0@@67 $i_2@@9) (=> ($InRange $range_1@@15 $i_3@@17) (let ((i@@67 $i_2@@9))
(let ((j@@32 $i_3@@17))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1)) i@@67)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@1)) j@@32))) (= i@@67 j@@32))))))
 :qid |DiemSystemseqArraybpl.10376:203|
 :skolemid |308|
)))) (=> (= $t4@0 (|v#$Mutation_133691| $t28@1)) (=> (and (and (= $t32 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t33 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t34@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t35@@0 (|$events#$1_DiemConfig_Configuration| $t34@@0)))) (and (=> (= (ControlFlow 0 223574) (- 0 299940)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816) (=> (= $t36  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t32) 18446744073709551615)) (< $t33 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t32))))) (and (=> (= (ControlFlow 0 223574) 224176) anon29_Then_correct) (=> (= (ControlFlow 0 223574) 223580) anon29_Else_correct))))))))))))
(let ((anon28_Then_correct@@0  (=> (and (and $abort_flag@0@@5 (= $abort_code@1@@5 $abort_code@1@@5)) (and (= $t15@0@@0 $abort_code@1@@5) (= (ControlFlow 0 224190) 223081))) L3_correct@@3)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0@@5 true) (=> (and (= $abort_code@1@@5 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@0|)) (and (=> (= (ControlFlow 0 223339) 224190) anon28_Then_correct@@0) (=> (= (ControlFlow 0 223339) 223574) anon28_Else_correct@@0))))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= $t26@@0 0) (< $t26@@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 223337) 223339)) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= $t26@@0 0) (< $t26@@0 (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$e@1| (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0))) (and (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1| ($Mutation_94640 (|l#$Mutation_94640| $t29@0) (|p#$Mutation_94640| $t29@0) (seq.extract (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- $t26@@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ $t26@@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ $t26@@0 1)))) 0 (- (- (seq.len (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) 0 (- $t26@@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1))) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1)))) (+ $t26@@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| 0 (- (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 0)) (seq.unit (seq.nth |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| $t26@@0)) (seq.extract |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1) (- (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|) (+ (- |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| 1) 1))))) (+ $t26@@0 1))))) 1) 0)))) (= $abort_flag@0@@5 false)) (and (= $abort_code@1@@5 $abort_code@0@@5) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@2| |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$m'@1|)))) (and (=> (= (ControlFlow 0 223287) 224190) anon28_Then_correct@@0) (=> (= (ControlFlow 0 223287) 223574) anon28_Else_correct@@0)))))
(let ((|inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_94640| $t29@0)) (= |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$len@1| (seq.len |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (and (=> (= (ControlFlow 0 223255) 223337) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 223255) 223287) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((anon27_Else_correct@@0  (=> (not $t27) (=> (and (|$IsValid'u64'| $t26@@0) (= $t26@@0 (seq.nth (|$vec#$1_Option_Option'u64'| $t22@@0) 0))) (=> (and (and (= $t26@@0 $t26@@0) (= $t28@0 ($Mutation_133691 ($Local 4) (as seq.empty (Seq Int)) $t4@@11))) (and (= $t29@0 ($Mutation_94640 (|l#$Mutation_133691| $t28@0) (seq.++ (|p#$Mutation_133691| $t28@0) (seq.unit 1)) (|$validators#$1_DiemSystem_DiemSystem| (|v#$Mutation_133691| $t28@0)))) (= (ControlFlow 0 223347) 223255))) |inline$$1_Vector_swap_remove'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))))
(let ((anon27_Then_correct@@0  (=> $t27 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0) (= 7 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 224214) 223081))) L3_correct@@3))))
(let ((anon26_Then_correct@@1  (=> (and $t23@@1 (= $t27 (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (and (=> (= (ControlFlow 0 223093) 224214) anon27_Then_correct@@0) (=> (= (ControlFlow 0 223093) 223347) anon27_Else_correct@@0)))))
(let ((anon26_Else_correct@@1  (=> (and (and (not $t23@@1) (= $t25@@1 $t25@@1)) (and (= $t15@0@@0 $t25@@1) (= (ControlFlow 0 222733) 223081))) L3_correct@@3)))
(let ((anon25_Else_correct@@1  (=> (not $t18@@0) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t4@@11) (let (($range_0@@68 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)))))
(let (($range_1@@16 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)))))
(forall (($i_2@@10 Int) ($i_3@@18 Int) ) (!  (=> ($InRange $range_0@@68 $i_2@@10) (=> ($InRange $range_1@@16 $i_3@@18) (let ((i@@68 $i_2@@10))
(let ((j@@33 $i_3@@18))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t4@@11) i@@68)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t4@@11) j@@33))) (= i@@68 j@@33))))))
 :qid |DiemSystemseqArraybpl.10213:222|
 :skolemid |305|
))))) (=> (and (and (and (and (= $t4@@11 (let ((addr@@176 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@176)))) (= $t4@@11 $t4@@11)) (and (= $t20@0 (|$validators#$1_DiemSystem_DiemSystem| $t4@@11)) (= $t21@@0 (seq.len $t20@0)))) (and (and (|$IsValid'$1_Option_Option'u64''| $t22@@0) (<= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 1)) (=> (let (($range_0@@69 ($Range 0 $t21@@0)))
(forall (($i_1@@57 Int) ) (!  (=> ($InRange $range_0@@69 $i_1@@57) (let ((i@@69 $i_1@@57))
 (not (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20@0 i@@69)) _$t1@@10))))
 :qid |DiemSystemseqArraybpl.10246:55|
 :skolemid |306|
))) (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)))) (and (and (and (=> (let (($range_0@@70 ($Range 0 $t21@@0)))
(exists (($i_1@@58 Int) ) (!  (and ($InRange $range_0@@70 $i_1@@58) (let ((i@@70 $i_1@@58))
(= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20@0 i@@70)) _$t1@@10)))
 :qid |DiemSystemseqArraybpl.10250:55|
 :skolemid |307|
))) (and (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0)) (let ((at@@3 (seq.nth (|$vec#$1_Option_Option'u64'| $t22@@0) 0)))
 (and (and (<= 0 at@@3) (< at@@3 $t21@@0)) (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t20@0 at@@3)) _$t1@@10))))) (= $t22@@0 $t22@@0)) (and (= $t23@@1  (not (= (seq.len (|$vec#$1_Option_Option'u64'| $t22@@0)) 0))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t25@@1) (= $t25@@1 7)) (and (= $t25@@1 $t25@@1) (= $t23@@1 $t23@@1))))) (and (=> (= (ControlFlow 0 222717) 223093) anon26_Then_correct@@1) (=> (= (ControlFlow 0 222717) 222733) anon26_Else_correct@@1)))))))
(let ((anon25_Then_correct@@1  (=> $t18@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 224242) 223081))) L3_correct@@3))))
(let ((anon24_Else_correct@@1  (=> (and (not $t17@@1) (= $t18@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 222406) 224242) anon25_Then_correct@@1) (=> (= (ControlFlow 0 222406) 222717) anon25_Else_correct@@1)))))
(let ((anon24_Then_correct@@1  (=> $t17@@1 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@@3)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t16@@1)) (= 5 $t15@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t16@@1)) 0)) (= 3 $t15@@3))) (and (not (= (|$addr#$signer| _$t0@@15) 173345816)) (= 2 $t15@@3))) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 224334) 223081))) L3_correct@@3))))
(let ((anon23_Else_correct@@1  (=> (not $t14@@2) (=> (and (= $t16@@1 (|$addr#$signer| _$t0@@15)) (= $t17@@1  (or (or (or (not (= (|$addr#$signer| _$t0@@15) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) $t16@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $t16@@1)) 0))) (not (= (|$addr#$signer| _$t0@@15) 173345816))))) (and (=> (= (ControlFlow 0 222386) 224334) anon24_Then_correct@@1) (=> (= (ControlFlow 0 222386) 222406) anon24_Else_correct@@1))))))
(let ((anon23_Then_correct@@1  (=> $t14@@2 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t15@@3)) (= $t15@@3 $t15@@3)) (and (= $t15@0@@0 $t15@@3) (= (ControlFlow 0 224360) 223081))) L3_correct@@3))))
(let ((anon0$1_correct@@16  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130113| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@177) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@177)) 4))))
 :qid |DiemSystemseqArraybpl.10000:20|
 :skolemid |287|
))) (=> (and (and (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@178) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@178)) 3))))
 :qid |DiemSystemseqArraybpl.10004:20|
 :skolemid |288|
)) (forall ((addr@@179 Int) ) (!  (=> (|$IsValid'address'| addr@@179) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@179) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@179) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@179)) 3))))
 :qid |DiemSystemseqArraybpl.10008:20|
 :skolemid |289|
))) (and (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@180) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@180)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@180) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@180)) 3))))
 :qid |DiemSystemseqArraybpl.10012:20|
 :skolemid |290|
)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)))) (=> (and (and (and (and (and (and (and (forall ((config_address@@29 Int) ) (!  (=> (|$IsValid'address'| config_address@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@29) (= config_address@@29 173345816)))
 :qid |DiemSystemseqArraybpl.10020:24|
 :skolemid |291|
)) (forall ((config_address@@30 Int) ) (!  (=> (|$IsValid'address'| config_address@@30) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@30) (= config_address@@30 173345816)))
 :qid |DiemSystemseqArraybpl.10020:243|
 :skolemid |292|
))) (forall ((config_address@@31 Int) ) (!  (=> (|$IsValid'address'| config_address@@31) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@31) (= config_address@@31 173345816)))
 :qid |DiemSystemseqArraybpl.10020:483|
 :skolemid |293|
))) (forall ((config_address@@32 Int) ) (!  (=> (|$IsValid'address'| config_address@@32) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@32) (= config_address@@32 173345816)))
 :qid |DiemSystemseqArraybpl.10020:745|
 :skolemid |294|
))) (forall ((config_address@@33 Int) ) (!  (=> (|$IsValid'address'| config_address@@33) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@33) (= config_address@@33 173345816)))
 :qid |DiemSystemseqArraybpl.10020:969|
 :skolemid |295|
))) (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (let (($range_0@@71 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@181 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@181))))))))
(forall (($i_1@@59 Int) ) (!  (=> ($InRange $range_0@@71 $i_1@@59) (let ((i1@@14 $i_1@@59))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@182 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@182)))) i1@@14))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@182 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@182)))) i1@@14)))) 3))))
 :qid |DiemSystemseqArraybpl.10028:151|
 :skolemid |296|
))))) (and (and (let (($range_0@@72 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@183 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@183))))))))
(forall (($i_1@@60 Int) ) (!  (=> ($InRange $range_0@@72 $i_1@@60) (let ((i1@@15 $i_1@@60))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@184 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@184)))) i1@@15)) 1)))
 :qid |DiemSystemseqArraybpl.10033:151|
 :skolemid |297|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@15))) (and (|$IsValid'address'| _$t1@@10) (forall (($a_0@@25 Int) ) (! (let (($rsc@@25 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@25))
 :qid |DiemSystemseqArraybpl.10043:20|
 :skolemid |298|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@25))
))))) (and (and (and (and (forall (($a_0@@26 Int) ) (! (let (($rsc@@26 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@26)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@26))
 :qid |DiemSystemseqArraybpl.10047:20|
 :skolemid |299|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) $a_0@@26))
)) (forall (($a_0@@27 Int) ) (! (let (($rsc@@27 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) $a_0@@27)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@27))
 :qid |DiemSystemseqArraybpl.10051:20|
 :skolemid |300|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) $a_0@@27))
))) (and (forall (($a_0@@28 Int) ) (! (let (($rsc@@28 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@28)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@28))
 :qid |DiemSystemseqArraybpl.10055:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@28))
)) (forall (($a_0@@29 Int) ) (! (let (($rsc@@29 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@29)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@29) (let (($range_1@@17 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29))))))
(let (($range_2@@7 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29))))))
(forall (($i_3@@19 Int) ($i_4@@5 Int) ) (!  (=> ($InRange $range_1@@17 $i_3@@19) (=> ($InRange $range_2@@7 $i_4@@5) (let ((i@@71 $i_3@@19))
(let ((j@@34 $i_4@@5))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29)) i@@71)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@29)) j@@34))) (= i@@71 j@@34))))))
 :qid |DiemSystemseqArraybpl.10060:367|
 :skolemid |302|
))))))
 :qid |DiemSystemseqArraybpl.10059:20|
 :skolemid |303|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@29))
)))) (and (and (forall (($a_0@@30 Int) ) (! (let (($rsc@@30 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@30)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@30))
 :qid |DiemSystemseqArraybpl.10065:20|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@30))
)) (= $t7@@4 (|$addr#$signer| _$t0@@15))) (and (= $t8@@5 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t9@@10 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (and (and (= $t10@@3 (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@185 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@185))))) (= $t11@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816))) (and (= $t12@@0 (|$events#$1_DiemConfig_Configuration| $t11@@2)) (= $t13@@1 (|$addr#$signer| _$t0@@15)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@1| 173345816) (= _$t0@@15 _$t0@@15)) (and (= _$t1@@10 _$t1@@10) (= $t14@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 222314) 224360) anon23_Then_correct@@1) (=> (= (ControlFlow 0 222314) 222386) anon23_Else_correct@@1)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@16  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@24 T@$1_Event_EventHandle) ) (! (let ((stream@@25 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@24)))
 (and (= (|l#Multiset_86037| stream@@25) 0) (forall ((v@@85 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@25) v@@85) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 221616) 222314)) anon0$1_correct@@16)))
(let ((anon0_correct@@16  (=> (= (seq.len (|p#$Mutation_133691| $t28@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_94640| $t29@@0)) 0) (= (ControlFlow 0 221626) 221616)) inline$$InitEventStore$0$anon0_correct@@16))))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (= (ControlFlow 0 298164) 221626) anon0_correct@@16)))
PreconditionGeneratedEntry_correct@@1)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 298164)))
(get-value ((ControlFlow 0 221626)))
(get-value ((ControlFlow 0 221616)))
(get-value ((ControlFlow 0 222314)))
(get-value ((ControlFlow 0 222386)))
(get-value ((ControlFlow 0 222406)))
(get-value ((ControlFlow 0 222717)))
(get-value ((ControlFlow 0 223093)))
(get-value ((ControlFlow 0 223347)))
(get-value ((ControlFlow 0 223255)))
(get-value ((ControlFlow 0 223287)))
(get-value ((ControlFlow 0 223574)))
(assert (not (= (ControlFlow 0 223574) (- 299787))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 298164)))
(get-value ((ControlFlow 0 221626)))
(get-value ((ControlFlow 0 221616)))
(get-value ((ControlFlow 0 222314)))
(get-value ((ControlFlow 0 222386)))
(get-value ((ControlFlow 0 222406)))
(get-value ((ControlFlow 0 222717)))
(get-value ((ControlFlow 0 223093)))
(get-value ((ControlFlow 0 223347)))
(get-value ((ControlFlow 0 223255)))
(get-value ((ControlFlow 0 223287)))
(get-value ((ControlFlow 0 223574)))
(get-value ((ControlFlow 0 223580)))
(get-value ((ControlFlow 0 224100)))
(get-value ((ControlFlow 0 224088)))
(get-value ((ControlFlow 0 224076)))
(assert (not (= (ControlFlow 0 224076) (- 300817))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 298164)))
(get-value ((ControlFlow 0 221626)))
(get-value ((ControlFlow 0 221616)))
(get-value ((ControlFlow 0 222314)))
(get-value ((ControlFlow 0 222386)))
(get-value ((ControlFlow 0 222406)))
(get-value ((ControlFlow 0 222717)))
(get-value ((ControlFlow 0 223093)))
(get-value ((ControlFlow 0 223347)))
(get-value ((ControlFlow 0 223255)))
(get-value ((ControlFlow 0 223287)))
(get-value ((ControlFlow 0 223574)))
(get-value ((ControlFlow 0 223580)))
(get-value ((ControlFlow 0 224100)))
(get-value ((ControlFlow 0 224088)))
(get-value ((ControlFlow 0 224076)))
(assert (not (= (ControlFlow 0 224076) (- 300883))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t21@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $1_DiemConfig_Configuration_$memory@2@@1 () T@$Memory_132007)
(declare-fun $t22@@1 () Int)
(declare-fun $t23@@2 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2| () T@$Memory_117614)
(declare-fun _$t0@@16 () T@$1_DiemSystem_DiemSystem)
(declare-fun $t24@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t25@@2 () T@$1_Event_EventHandle)
(declare-fun $t19@@0 () T@$1_Event_EventHandle)
(declare-fun $t26@@1 () Bool)
(declare-fun $t18@@1 () T@$1_DiemConfig_Configuration)
(declare-fun $es@0@@1 () T@$EventStore)
(declare-fun $t27@@0 () T@$1_DiemConfig_Configuration)
(declare-fun $t28@@1 () Int)
(declare-fun $t29@@1 () T@$1_DiemConfig_NewEpochEvent)
(declare-fun $t3@@8 () T@$1_DiemConfig_Configuration)
(declare-fun $t4@@12 () Int)
(declare-fun $t5@@13 () T@$1_DiemConfig_Configuration)
(declare-fun $t6@@9 () T@$1_Event_EventHandle)
(declare-fun |$temp_0'bool'@1@@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@2| () T@$Memory_117614)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2| () T@$Memory_117614)
(declare-fun |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@2| () |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|)
(declare-fun |$temp_0'bool'@0@@9| () Bool)
(declare-fun $1_DiemConfig_Configuration_$memory@1@@1 () T@$Memory_132007)
(declare-fun $1_DiemConfig_Configuration_$memory@0@@1 () T@$Memory_132007)
(declare-fun |$temp_0'$1_DiemConfig_Configuration'@0@@1| () T@$1_DiemConfig_Configuration)
(declare-fun $t20@@2 () Bool)
(declare-fun $t8@0@@1 () Int)
(declare-fun $t8@@6 () Int)
(declare-fun $t16@@2 () T@$1_DiemConfig_Configuration)
(declare-fun $t17@@2 () Int)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun $t15@0@@1 () |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|)
(declare-fun $t14@@3 () T@$1_DiemSystem_CapabilityHolder)
(declare-fun $1_DiemConfig_Configuration_$modifies () |T@[Int]Bool|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| () |T@[Int]Bool|)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun $t14@0@@4 () T@$1_DiemSystem_CapabilityHolder)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun $t10@0@@1 () Bool)
(declare-fun $t12@@1 () Int)
(declare-fun $t7@@5 () Bool)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_set_diem_system_config$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 300987) (let ((anon18_correct  (=> (= $t21@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory@2@@1) 173345816)) (=> (and (and (= $t22@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t23@@2 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t21@@1)))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) 173345816) (= (let ((addr@@186 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) addr@@186))) _$t0@@16))) (=> (and (and (and (= (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory@2@@1) 173345816)) (= $t24@@1 $t23@@2)) (and (= $t25@@2 $t19@@0) (= $t26@@1  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t22@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t18@@1))))))) (and (and (= $es@0@@1 (ite $t26@@1 (let ((stream@@26 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) $t25@@2)))
(let ((stream_new@@7 (let ((len@@7 (|l#Multiset_86037| stream@@26)))
(let ((cnt@@7 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t24@@1))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@26) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t24@@1) (+ cnt@@7 1)) (+ len@@7 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) $t25@@2 stream_new@@7)))) $es)) (= $t27@@0 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory@2@@1) 173345816))) (and (= $t28@@1 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= $t29@@1 ($1_DiemConfig_NewEpochEvent (|$epoch#$1_DiemConfig_Configuration| $t27@@0)))))) (and (=> (= (ControlFlow 0 226100) (- 0 302438)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 226100) (- 0 302448)) (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@8) 18446744073709551615)) (< $t4@@12 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@8))))) (=> (not (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@8) 18446744073709551615)) (< $t4@@12 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@8)))) (and (=> (= (ControlFlow 0 226100) (- 0 302490)) (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) 173345816)) _$t0@@16)) (=> (= (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2|) 173345816)) _$t0@@16) (and (=> (= (ControlFlow 0 226100) (- 0 302503)) (let ((actual@@5 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@5 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t28@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5@@13)))) (let ((stream@@27 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t6@@9)))
(let ((stream_new@@8 (let ((len@@8 (|l#Multiset_86037| stream@@27)))
(let ((cnt@@8 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@27) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@27) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1) (+ cnt@@8 1)) (+ len@@8 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t6@@9 stream_new@@8)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@5) (|counter#$EventStore| actual@@5)) (forall ((handle@@25 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@5) handle@@25)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@5) handle@@25))) (forall ((v@@86 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@5) handle@@25)) v@@86) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@5) handle@@25)) v@@86))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
)))))) (=> (let ((actual@@6 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@6 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t28@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5@@13)))) (let ((stream@@28 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t6@@9)))
(let ((stream_new@@9 (let ((len@@9 (|l#Multiset_86037| stream@@28)))
(let ((cnt@@9 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@28) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@28) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1) (+ cnt@@9 1)) (+ len@@9 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t6@@9 stream_new@@9)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| expected@@6) (|counter#$EventStore| actual@@6)) (forall ((handle@@26 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@6) handle@@26)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@6) handle@@26))) (forall ((v@@87 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@6) handle@@26)) v@@87) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@6) handle@@26)) v@@87))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
))))) (=> (= (ControlFlow 0 226100) (- 0 302548)) (let ((actual@@7 ($EventStore (- (|counter#$EventStore| $es@0@@1) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0@@1) (|streams#$EventStore| $es)))))
(let ((expected@@7 (ite  (and (not (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))))) (not (= $t28@@1 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t5@@13)))) (let ((stream@@29 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t6@@9)))
(let ((stream_new@@10 (let ((len@@10 (|l#Multiset_86037| stream@@29)))
(let ((cnt@@10 (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@29) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1))))
(Multiset_86037 (|Store__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@29) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| $t29@@1) (+ cnt@@10 1)) (+ len@@10 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $EmptyEventStore) $t6@@9 stream_new@@10)))) $EmptyEventStore)))
 (and (<= (|counter#$EventStore| actual@@7) (|counter#$EventStore| expected@@7)) (forall ((handle@@27 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@7) handle@@27)) (|l#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@7) handle@@27))) (forall ((v@@88 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| actual@@7) handle@@27)) v@@88) (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| expected@@7) handle@@27)) v@@88))
 :qid |DiemSystemseqArraybpl.134:13|
 :skolemid |3|
)))
 :qid |DiemSystemseqArraybpl.2739:13|
 :skolemid |75|
)))))))))))))))))))
(let ((anon26_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@1@@1|) (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@2| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 false) (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@1@@2|) (= (ControlFlow 0 225792) 226100))) anon18_correct)))
(let ((anon26_Then_correct@@2  (=> (and (and |$temp_0'bool'@1@@1| (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2| ($Memory_117614 (|Store__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816 |$temp_0'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''@0@@2|)))) (and (= |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@2@@2| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory@0@@2|) (= (ControlFlow 0 226112) 226100))) anon18_correct)))
(let ((anon25_Else_correct@@2  (=> (not |$temp_0'bool'@0@@9|) (=> (and (= $1_DiemConfig_Configuration_$memory@1@@1 ($Memory_132007 (|Store__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 false) (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory))) (= $1_DiemConfig_Configuration_$memory@2@@1 $1_DiemConfig_Configuration_$memory@1@@1)) (and (=> (= (ControlFlow 0 225778) 226112) anon26_Then_correct@@2) (=> (= (ControlFlow 0 225778) 225792) anon26_Else_correct@@2))))))
(let ((anon25_Then_correct@@2  (=> |$temp_0'bool'@0@@9| (=> (and (= $1_DiemConfig_Configuration_$memory@0@@1 ($Memory_132007 (|Store__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 true) (|Store__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816 |$temp_0'$1_DiemConfig_Configuration'@0@@1|))) (= $1_DiemConfig_Configuration_$memory@2@@1 $1_DiemConfig_Configuration_$memory@0@@1)) (and (=> (= (ControlFlow 0 226124) 226112) anon26_Then_correct@@2) (=> (= (ControlFlow 0 226124) 225792) anon26_Else_correct@@2))))))
(let ((anon24_Else_correct@@2  (=> (not $t20@@2) (and (=> (= (ControlFlow 0 225766) 226124) anon25_Then_correct@@2) (=> (= (ControlFlow 0 225766) 225778) anon25_Else_correct@@2)))))
(let ((L3_correct@@4  (and (=> (= (ControlFlow 0 225608) (- 0 302083)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@8) 18446744073709551615)) (< $t4@@12 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@8))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@8) 18446744073709551615)) (< $t4@@12 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@8)))) (=> (= (ControlFlow 0 225608) (- 0 302127)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@0@@1)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t3@@8) 18446744073709551615)) (< $t4@@12 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t3@@8))) (= 1 $t8@0@@1))))))))
(let ((anon24_Then_correct@@2  (=> $t20@@2 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t8@@6)) (and (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@2) 18446744073709551615)) (< $t17@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@2))) (= 1 $t8@@6))) (= $t8@@6 $t8@@6)) (and (= $t8@0@@1 $t8@@6) (= (ControlFlow 0 226202) 225608))) L3_correct@@4))))
(let ((anon23_Else_correct@@2  (=> (and (not $abort_flag@0@@6) (= $t15@0@@1 (|$cap#$1_DiemSystem_CapabilityHolder| $t14@@3))) (=> (and (and (= $t16@@2 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t17@@2 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t18@@1 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t19@@0 (|$events#$1_DiemConfig_Configuration| $t18@@1)))) (and (=> (= (ControlFlow 0 225758) (- 0 301919)) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816)) (=> (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816) (and (=> (= (ControlFlow 0 225758) (- 0 301925)) (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| 173345816)) (=> (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| 173345816) (=> (= $t20@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (not (|Select__T@[Int]Bool_| (|domain#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) 173345816))) (> (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) 0)) (< (|$epoch#$1_DiemConfig_Configuration| $t16@@2) 18446744073709551615)) (< $t17@@2 (|$last_reconfiguration_time#$1_DiemConfig_Configuration| $t16@@2))))) (and (=> (= (ControlFlow 0 225758) 226202) anon24_Then_correct@@2) (=> (= (ControlFlow 0 225758) 225766) anon24_Else_correct@@2)))))))))))
(let ((anon23_Then_correct@@2  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= $t8@0@@1 $abort_code@1@@6) (= (ControlFlow 0 226216) 225608))) L3_correct@@4)))
(let ((anon22_Then$1_correct@@0  (=> (and (= $abort_flag@0@@6 true) (= $abort_code@1@@6 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 226268) 226216) anon23_Then_correct@@2) (=> (= (ControlFlow 0 226268) 225758) anon23_Else_correct@@2)))))
(let ((anon22_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (= (ControlFlow 0 226266) 226268)) anon22_Then$1_correct@@0)))
(let ((anon22_Else_correct@@2  (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816) (= $t14@0@@4 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816))) (and (= $abort_flag@0@@6 false) (= $abort_code@1@@6 $abort_code@0@@6))) (and (=> (= (ControlFlow 0 225632) 226216) anon23_Then_correct@@2) (=> (= (ControlFlow 0 225632) 225758) anon23_Else_correct@@2)))))
(let ((anon21_Then_correct@@2  (=> (and $t10@0@@1 (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 225618) 226266) anon22_Then_correct@@2) (=> (= (ControlFlow 0 225618) 225632) anon22_Else_correct@@2)))))
(let ((anon21_Else_correct@@2  (=> (and (and (not $t10@0@@1) (= $t12@@1 $t12@@1)) (and (= $t8@0@@1 $t12@@1) (= (ControlFlow 0 225488) 225608))) L3_correct@@4)))
(let ((anon20_Else_correct@@1  (=> (and (and (and (not $t7@@5) (|$IsValid'address'| 173345816)) (and (= $t10@0@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| $t12@@1) (= $t12@@1 5)) (and (= $t12@@1 $t12@@1) (= $t10@0@@1 $t10@0@@1)))) (and (=> (= (ControlFlow 0 225472) 225618) anon21_Then_correct@@2) (=> (= (ControlFlow 0 225472) 225488) anon21_Else_correct@@2)))))
(let ((anon20_Then_correct@@1  (=> $t7@@5 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t8@@6)) (= $t8@@6 $t8@@6)) (and (= $t8@0@@1 $t8@@6) (= (ControlFlow 0 226294) 225608))) L3_correct@@4))))
(let ((anon0$1_correct@@17  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (and (and (and (and (and (forall ((config_address@@34 Int) ) (!  (=> (|$IsValid'address'| config_address@@34) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@34) (= config_address@@34 173345816)))
 :qid |DiemSystemseqArraybpl.10658:24|
 :skolemid |311|
)) (forall ((config_address@@35 Int) ) (!  (=> (|$IsValid'address'| config_address@@35) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@35) (= config_address@@35 173345816)))
 :qid |DiemSystemseqArraybpl.10658:243|
 :skolemid |312|
))) (forall ((config_address@@36 Int) ) (!  (=> (|$IsValid'address'| config_address@@36) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@36) (= config_address@@36 173345816)))
 :qid |DiemSystemseqArraybpl.10658:483|
 :skolemid |313|
))) (forall ((config_address@@37 Int) ) (!  (=> (|$IsValid'address'| config_address@@37) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@37) (= config_address@@37 173345816)))
 :qid |DiemSystemseqArraybpl.10658:745|
 :skolemid |314|
))) (forall ((config_address@@38 Int) ) (!  (=> (|$IsValid'address'| config_address@@38) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@38) (= config_address@@38 173345816)))
 :qid |DiemSystemseqArraybpl.10658:969|
 :skolemid |315|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (let (($range_0@@73 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@187 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@187))))))))
(forall (($i_1@@61 Int) ) (!  (=> ($InRange $range_0@@73 $i_1@@61) (let ((i1@@16 $i_1@@61))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@188 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@188)))) i1@@16))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@188 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@188)))) i1@@16)))) 3))))
 :qid |DiemSystemseqArraybpl.10666:151|
 :skolemid |316|
))) (let (($range_0@@74 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@189 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@189))))))))
(forall (($i_1@@62 Int) ) (!  (=> ($InRange $range_0@@74 $i_1@@62) (let ((i1@@17 $i_1@@62))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@190 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@190)))) i1@@17)) 1)))
 :qid |DiemSystemseqArraybpl.10671:151|
 :skolemid |317|
))))) (and (and (and (and (|$IsValid'$1_DiemSystem_DiemSystem'| _$t0@@16) (let (($range_0@@75 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| _$t0@@16)))))
(let (($range_1@@18 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| _$t0@@16)))))
(forall (($i_2@@11 Int) ($i_3@@20 Int) ) (!  (=> ($InRange $range_0@@75 $i_2@@11) (=> ($InRange $range_1@@18 $i_3@@20) (let ((i@@72 $i_2@@11))
(let ((j@@35 $i_3@@20))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| _$t0@@16) i@@72)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| _$t0@@16) j@@35))) (= i@@72 j@@35))))))
 :qid |DiemSystemseqArraybpl.10675:222|
 :skolemid |318|
))))) (forall (($a_0@@31 Int) ) (! (let (($rsc@@31 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@31)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@31))
 :qid |DiemSystemseqArraybpl.10680:20|
 :skolemid |319|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@31))
))) (and (and (forall (($a_0@@32 Int) ) (! (let (($rsc@@32 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) $a_0@@32)))
(|$IsValid'$1_DiemConfig_Configuration'| $rsc@@32))
 :qid |DiemSystemseqArraybpl.10684:20|
 :skolemid |320|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) $a_0@@32))
)) (forall (($a_0@@33 Int) ) (! (let (($rsc@@33 (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@33)))
(|$IsValid'$1_DiemConfig_DisableReconfiguration'| $rsc@@33))
 :qid |DiemSystemseqArraybpl.10688:20|
 :skolemid |321|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DisableReconfiguration_| (|contents#$Memory_131895| $1_DiemConfig_DisableReconfiguration_$memory) $a_0@@33))
))) (and (forall (($a_0@@34 Int) ) (! (let (($rsc@@34 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@34)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@34) (let (($range_1@@19 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@34))))))
(let (($range_2@@8 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@34))))))
(forall (($i_3@@21 Int) ($i_4@@6 Int) ) (!  (=> ($InRange $range_1@@19 $i_3@@21) (=> ($InRange $range_2@@8 $i_4@@6) (let ((i@@73 $i_3@@21))
(let ((j@@36 $i_4@@6))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@34)) i@@73)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@34)) j@@36))) (= i@@73 j@@36))))))
 :qid |DiemSystemseqArraybpl.10693:367|
 :skolemid |322|
))))))
 :qid |DiemSystemseqArraybpl.10692:20|
 :skolemid |323|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@34))
)) (forall (($a_0@@35 Int) ) (! (let (($rsc@@35 (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@35)))
(|$IsValid'$1_DiemSystem_CapabilityHolder'| $rsc@@35))
 :qid |DiemSystemseqArraybpl.10698:20|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]$1_DiemSystem_CapabilityHolder_| (|contents#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) $a_0@@35))
))))) (and (and (and (= $t3@@8 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t4@@12 (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (= $t5@@13 (|Select__T@[Int]$1_DiemConfig_Configuration_| (|contents#$Memory_132007| $1_DiemConfig_Configuration_$memory) 173345816)) (= $t6@@9 (|$events#$1_DiemConfig_Configuration| $t5@@13)))) (and (and (|Select__T@[Int]Bool_| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$modifies@@2| 173345816) (|Select__T@[Int]Bool_| $1_DiemConfig_Configuration_$modifies 173345816)) (and (= _$t0@@16 _$t0@@16) (= $t7@@5  (not (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))))) (and (=> (= (ControlFlow 0 225420) 226294) anon20_Then_correct@@1) (=> (= (ControlFlow 0 225420) 225472) anon20_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@17  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@28 T@$1_Event_EventHandle) ) (! (let ((stream@@30 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@28)))
 (and (= (|l#Multiset_86037| stream@@30) 0) (forall ((v@@89 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@30) v@@89) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 224789) 225420)) anon0$1_correct@@17)))
(let ((anon0_correct@@17  (=> (= (ControlFlow 0 300987) 224789) inline$$InitEventStore$0$anon0_correct@@17)))
anon0_correct@@17)))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t21@@2 () Bool)
(declare-fun $t19@0 () Int)
(declare-fun $t10@@4 () Int)
(declare-fun $abort_flag@0@@7 () Bool)
(declare-fun $abort_code@1@@7 () Int)
(declare-fun $t13@0@@0 () Bool)
(declare-fun $t0@1 () T@$Mutation_94640)
(declare-fun _$t1@@11 () Int)
(declare-fun $t6@@10 () T@$1_ValidatorConfig_Config)
(declare-fun $t7@0@@1 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t24@0@@0 () Bool)
(declare-fun $t22@1 () T@$Mutation_101944)
(declare-fun $t22@0 () T@$Mutation_101944)
(declare-fun $t20@@3 () T@$1_ValidatorConfig_Config)
(declare-fun $t14@0@@5 () T@$Mutation_95386)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| () T@$Mutation_95386)
(declare-fun $t0@0 () T@$Mutation_94640)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| () T@$Mutation_94640)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$temp_0'$1_ValidatorConfig_Config'@0| () T@$1_ValidatorConfig_Config)
(declare-fun $t23@0@@0 () T@$1_ValidatorConfig_Config)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t16@@3 () Bool)
(declare-fun |$temp_0'$1_DiemSystem_ValidatorInfo'@0| () T@$1_DiemSystem_ValidatorInfo)
(declare-fun $t15@0@@2 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@0| () T@$Mutation_95386)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@0| () T@$Mutation_94640)
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1| () T@$Mutation_95386)
(declare-fun _$t0@@17 () T@$Mutation_94640)
(declare-fun $abort_code@0@@7 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0| () Int)
(declare-fun $t8@0@@2 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0| () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t2@@7 () T@$Mutation_101944)
(declare-fun $t5@@14 () T@$Mutation_95386)
(declare-fun $t14@@4 () T@$Mutation_95386)
(declare-fun $t22@@2 () T@$Mutation_101944)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_update_ith_validator_info_$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 302601) (let ((L10_correct  (=> (= (ControlFlow 0 227662) (- 0 303802)) false)))
(let ((anon25_Then_correct@@3  (=> (and (and $t21@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)) (= 5 $t10@@4)) (and (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)))) 0) (= 7 $t10@@4)))) (and (= $t10@@4 $t10@@4) (= (ControlFlow 0 227652) 227662))) L10_correct)))
(let ((anon23_Then_correct@@3  (=> $abort_flag@0@@7 (=> (and (= $abort_code@1@@7 $abort_code@1@@7) (= (ControlFlow 0 227704) 227662)) L10_correct))))
(let ((L9_correct@@0  (and (=> (= (ControlFlow 0 227576) (- 0 303648)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 227576) (- 0 303655)) (= $t13@0@@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_94640| $t0@1) _$t1@@11))) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_94640| $t0@1) _$t1@@11)))))) 0))) (not (= $t6@@10 (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11))))))) (=> (= $t13@0@@0  (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_94640| $t0@1) _$t1@@11))) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_94640| $t0@1) _$t1@@11)))))) 0))) (not (= $t6@@10 (|$config#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)))))) (and (=> (= (ControlFlow 0 227576) (- 0 303687)) (=> $t13@0@@0 (= (|v#$Mutation_94640| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@11 0)) (seq.unit ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)) $t6@@10 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)))) (seq.extract $t7@0@@1 (+ _$t1@@11 1) (- (seq.len $t7@0@@1) (+ _$t1@@11 1))))))) (=> (=> $t13@0@@0 (= (|v#$Mutation_94640| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@11 0)) (seq.unit ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)) $t6@@10 (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (seq.nth $t7@0@@1 _$t1@@11)))) (seq.extract $t7@0@@1 (+ _$t1@@11 1) (- (seq.len $t7@0@@1) (+ _$t1@@11 1)))))) (and (=> (= (ControlFlow 0 227576) (- 0 303710)) (=> (not $t13@0@@0) (= (|v#$Mutation_94640| $t0@1) $t7@0@@1))) (=> (=> (not $t13@0@@0) (= (|v#$Mutation_94640| $t0@1) $t7@0@@1)) (and (=> (= (ControlFlow 0 227576) (- 0 303724)) (= (|v#$Mutation_94640| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@11 0)) (seq.unit (seq.nth (|v#$Mutation_94640| $t0@1) _$t1@@11)) (seq.extract $t7@0@@1 (+ _$t1@@11 1) (- (seq.len $t7@0@@1) (+ _$t1@@11 1)))))) (=> (= (|v#$Mutation_94640| $t0@1) (seq.++ (seq.extract $t7@0@@1 0 (- _$t1@@11 0)) (seq.unit (seq.nth (|v#$Mutation_94640| $t0@1) _$t1@@11)) (seq.extract $t7@0@@1 (+ _$t1@@11 1) (- (seq.len $t7@0@@1) (+ _$t1@@11 1))))) (and (=> (= (ControlFlow 0 227576) (- 0 303742)) (let (($range_0@@76 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@191 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@191))))))))
(forall (($i_1@@63 Int) ) (!  (=> ($InRange $range_0@@76 $i_1@@63) (let ((i1@@18 $i_1@@63))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@192 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@192)))) i1@@18)) 1)))
 :qid |DiemSystemseqArraybpl.11386:146|
 :skolemid |330|
)))) (=> (let (($range_0@@77 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@193 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@193))))))))
(forall (($i_1@@64 Int) ) (!  (=> ($InRange $range_0@@77 $i_1@@64) (let ((i1@@19 $i_1@@64))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@194 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@194)))) i1@@19)) 1)))
 :qid |DiemSystemseqArraybpl.11386:146|
 :skolemid |330|
))) (=> (= (ControlFlow 0 227576) (- 0 303786)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@195 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@195)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@196 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@196))))))))))))))))))))
(let ((anon26_Else_correct@@3  (=> (and (not $t24@0@@0) (= $t22@1 ($Mutation_101944 (|l#$Mutation_101944| $t22@0) (|p#$Mutation_101944| $t22@0) $t20@@3))) (=> (and (and (and (= $t14@0@@5 ($Mutation_95386 (|l#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (|p#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) ($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)) (|v#$Mutation_101944| $t22@1) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))))) (= $t0@0 ($Mutation_94640 (|l#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (|p#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_95386| $t14@0@@5) (seq.len (|p#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_95386| $t14@0@@5)) (seq.extract (|v#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|) (+ (seq.nth (|p#$Mutation_95386| $t14@0@@5) (seq.len (|p#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_95386| $t14@0@@5) (seq.len (|p#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) 1))))))) (and (= true true) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4| (|v#$Mutation_94640| $t0@0)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@4|) (= $t0@1 $t0@0)) (and (= $t13@0@@0 true) (= (ControlFlow 0 227407) 227576)))) L9_correct@@0))))
(let ((anon26_Then_correct@@3  (=> $t24@0@@0 (=> (and (= false false) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3| (|v#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) (=> (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@3|) (= $t0@1 |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|)) (and (= $t13@0@@0 false) (= (ControlFlow 0 227604) 227576))) L9_correct@@0)))))
(let ((anon25_Else_correct@@3  (=> (not $t21@@2) (=> (and (and (and (|$IsValid'$1_ValidatorConfig_Config'| $t20@@3) (= $t20@@3 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0))) 0))) (and (= $t20@@3 $t20@@3) (= $t22@0 ($Mutation_101944 (|l#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (seq.++ (|p#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|) (seq.unit 2)) (|$config#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)))))) (and (and (= |$temp_0'$1_ValidatorConfig_Config'@0| (|v#$Mutation_101944| $t22@0)) (= |$temp_0'$1_ValidatorConfig_Config'@0| |$temp_0'$1_ValidatorConfig_Config'@0|)) (and (= $t23@0@@0 (|v#$Mutation_101944| $t22@0)) (= $t24@0@@0 (= $t23@0@@0 $t20@@3))))) (and (=> (= (ControlFlow 0 227327) 227604) anon26_Then_correct@@3) (=> (= (ControlFlow 0 227327) 227407) anon26_Else_correct@@3))))))
(let ((anon24_Else_correct@@3  (=> (not inline$$Not$0$dst@1@@2) (=> (and (= $t19@0 (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))) (= $t21@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)) (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t19@0)))) 0)))) (and (=> (= (ControlFlow 0 227265) 227652) anon25_Then_correct@@3) (=> (= (ControlFlow 0 227265) 227327) anon25_Else_correct@@3))))))
(let ((anon24_Then_correct@@3  (=> inline$$Not$0$dst@1@@2 (=> (and (= false false) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2| (|v#$Mutation_94640| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|))) (=> (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@2|) (= $t0@1 |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1|)) (and (= $t13@0@@0 false) (= (ControlFlow 0 227690) 227576))) L9_correct@@0)))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (= inline$$Not$0$dst@1@@2  (not $t16@@3)) (and (=> (= (ControlFlow 0 227221) 227690) anon24_Then_correct@@3) (=> (= (ControlFlow 0 227221) 227265) anon24_Else_correct@@3)))))
(let ((anon23_Else_correct@@3  (=> (and (not $abort_flag@0@@7) (= |$temp_0'$1_DiemSystem_ValidatorInfo'@0| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|))) (=> (and (and (= |$temp_0'$1_DiemSystem_ValidatorInfo'@0| |$temp_0'$1_DiemSystem_ValidatorInfo'@0|) (= $t15@0@@2 (|$addr#$1_DiemSystem_ValidatorInfo| (|v#$Mutation_95386| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2|)))) (and (= $t16@@3  (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@0@@2) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $t15@0@@2)))) 0)))) (= (ControlFlow 0 227227) 227221))) inline$$Not$0$anon0_correct@@2))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0@@7 true) (= $abort_code@1@@7 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@0|))) (and (=> (= (ControlFlow 0 227143) 227704) anon23_Then_correct@@3) (=> (= (ControlFlow 0 227143) 227227) anon23_Else_correct@@3)))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|  (=> (and (not (and (>= _$t1@@11 0) (< _$t1@@11 (seq.len |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1|)))) (= (ControlFlow 0 227141) 227143)) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|  (=> (and (and (and (>= _$t1@@11 0) (< _$t1@@11 (seq.len |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1| ($Mutation_95386 (|l#$Mutation_94640| _$t0@@17) (seq.++ (|p#$Mutation_94640| _$t0@@17) (seq.unit _$t1@@11)) (seq.nth |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| _$t1@@11)))) (and (and (= $abort_flag@0@@7 false) (= $abort_code@1@@7 $abort_code@0@@7)) (and (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$m'@1| _$t0@@17)))) (and (=> (= (ControlFlow 0 227091) 227704) anon23_Then_correct@@3) (=> (= (ControlFlow 0 227091) 227227) anon23_Else_correct@@3)))))
(let ((|inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$v@1| (|v#$Mutation_94640| _$t0@@17)) (and (=> (= (ControlFlow 0 227061) 227141) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 227061) 227091) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon3_Else_correct|)))))
(let ((anon22_Else_correct@@3  (=> (and (not inline$$Ge$0$dst@1) (= (ControlFlow 0 227151) 227061)) |inline$$1_Vector_borrow_mut'$1_DiemSystem_ValidatorInfo'$0$anon0_correct|)))
(let ((anon22_Then_correct@@3  (=> inline$$Ge$0$dst@1 (=> (and (= false false) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| (|v#$Mutation_94640| _$t0@@17))) (=> (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@1|) (= $t0@1 _$t0@@17)) (and (= $t13@0@@0 false) (= (ControlFlow 0 227732) 227576))) L9_correct@@0)))))
(let ((inline$$Ge$0$anon0_correct  (=> (= inline$$Ge$0$dst@1 (>= _$t1@@11 |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0|)) (and (=> (= (ControlFlow 0 226947) 227732) anon22_Then_correct@@3) (=> (= (ControlFlow 0 226947) 227151) anon22_Else_correct@@3)))))
(let ((anon21_Else_correct@@3  (=> (not false) (=> (and (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0|) (= (ControlFlow 0 226953) 226947)) inline$$Ge$0$anon0_correct))))
(let ((anon21_Then_correct@@3 true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@0| (seq.len $t8@0@@2)) (and (=> (= (ControlFlow 0 226885) 227746) anon21_Then_correct@@3) (=> (= (ControlFlow 0 226885) 226953) anon21_Else_correct@@3)))))
(let ((anon0$1_correct@@18  (=> (and (and (and (= (|l#$Mutation_94640| _$t0@@17) ($Param 0)) (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@197) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@197) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@197)) 3))))
 :qid |DiemSystemseqArraybpl.11065:20|
 :skolemid |325|
))) (and (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@198) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@198) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@198)) 3))))
 :qid |DiemSystemseqArraybpl.11069:20|
 :skolemid |326|
)) (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@199) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@199)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) addr@@199)) 3))))
 :qid |DiemSystemseqArraybpl.11073:20|
 :skolemid |327|
)))) (and (and (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|v#$Mutation_94640| _$t0@@17)) (|$IsValid'u64'| _$t1@@11)) (and (forall (($a_0@@36 Int) ) (! (let (($rsc@@36 (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@36)))
 (and (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| $rsc@@36) (and (<= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| $rsc@@36))) 1) (<= (seq.len (|$vec#$1_Option_Option'address'| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| $rsc@@36))) 1))))
 :qid |DiemSystemseqArraybpl.11083:20|
 :skolemid |328|
 :pattern ( (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) $a_0@@36))
)) (= $t6@@10 (seq.nth (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_130999| $1_ValidatorConfig_ValidatorConfig_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|v#$Mutation_94640| _$t0@@17) _$t1@@11))))) 0))))) (=> (and (and (and (and (<= 0 _$t1@@11) (< _$t1@@11 (seq.len (|v#$Mutation_94640| _$t0@@17)))) (let (($range_0@@78 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@200 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@200))))))))
(forall (($i_1@@65 Int) ) (!  (=> ($InRange $range_0@@78 $i_1@@65) (let ((i1@@20 $i_1@@65))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@201 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@201)))) i1@@20)) 1)))
 :qid |DiemSystemseqArraybpl.11096:151|
 :skolemid |329|
)))) (and (= $t7@0@@1 (|v#$Mutation_94640| _$t0@@17)) (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0| (|v#$Mutation_94640| _$t0@@17)))) (and (and (= |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0| |$temp_0'vec'$1_DiemSystem_ValidatorInfo''@0@@0|) (= _$t1@@11 _$t1@@11)) (and (= $t8@0@@2 (|v#$Mutation_94640| _$t0@@17)) (= (ControlFlow 0 226891) 226885)))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@0|))))
(let ((inline$$InitEventStore$0$anon0_correct@@18  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@29 T@$1_Event_EventHandle) ) (! (let ((stream@@31 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@29)))
 (and (= (|l#Multiset_86037| stream@@31) 0) (forall ((v@@90 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@31) v@@90) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 226587) 226891)) anon0$1_correct@@18)))
(let ((anon0_correct@@18  (=> (= (seq.len (|p#$Mutation_101944| $t2@@7)) 0) (=> (and (and (= (seq.len (|p#$Mutation_95386| $t5@@14)) 0) (= (seq.len (|p#$Mutation_95386| $t14@@4)) 0)) (and (= (seq.len (|p#$Mutation_101944| $t22@@2)) 0) (= (ControlFlow 0 226597) 226587))) inline$$InitEventStore$0$anon0_correct@@18))))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (= (ControlFlow 0 302601) 226597) anon0_correct@@18)))
PreconditionGeneratedEntry_correct@@2))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@0 () Int)
(declare-fun $t2@@8 () Bool)
(declare-fun $t3@@9 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| () Int)
(declare-fun $t4@0@@0 () (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun $t1@@1 () T@$1_DiemSystem_DiemSystem)
(push 1)
(set-info :boogie-vc-id $1_DiemSystem_validator_set_size$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 303820) (let ((L2_correct@@6  (and (=> (= (ControlFlow 0 228621) (- 0 304457)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (=> (= (ControlFlow 0 228621) (- 0 304464)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t3@0)))))))
(let ((anon6_Then_correct  (=> $t2@@8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)) (= 5 $t3@@9)) (= $t3@@9 $t3@@9)) (and (= $t3@0 $t3@@9) (= (ControlFlow 0 228649) 228621))) L2_correct@@6))))
(let ((anon7_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1|)) (and (=> (= (ControlFlow 0 228575) (- 0 304409)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 228575) (- 0 304421)) (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@202 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@202))))))) (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@203 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@203)))))) (=> (= (ControlFlow 0 228575) (- 0 304433)) (= (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@204 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@204)))) (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@205 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@205)))))))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@1|  (=> (= |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$l@1@@1| (seq.len $t4@0@@0)) (and (=> (= (ControlFlow 0 228515) 228589) anon7_Then_correct) (=> (= (ControlFlow 0 228515) 228575) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (not $t2@@8) (=> (and (|$IsValid'$1_DiemSystem_DiemSystem'| $t1@@1) (let (($range_0@@79 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t1@@1)))))
(let (($range_1@@20 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| $t1@@1)))))
(forall (($i_2@@12 Int) ($i_3@@22 Int) ) (!  (=> ($InRange $range_0@@79 $i_2@@12) (=> ($InRange $range_1@@20 $i_3@@22) (let ((i@@74 $i_2@@12))
(let ((j@@37 $i_3@@22))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t1@@1) i@@74)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| $t1@@1) j@@37))) (= i@@74 j@@37))))))
 :qid |DiemSystemseqArraybpl.11511:222|
 :skolemid |340|
))))) (=> (and (and (= $t1@@1 (let ((addr@@206 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@206)))) (= $t1@@1 $t1@@1)) (and (= $t4@0@@0 (|$validators#$1_DiemSystem_DiemSystem| $t1@@1)) (= (ControlFlow 0 228521) 228515))) |inline$$1_Vector_length'$1_DiemSystem_ValidatorInfo'$0$anon0_correct@@1|)))))
(let ((anon0$1_correct@@19  (=> (and (and (and (and (and (and (forall ((config_address@@39 Int) ) (!  (=> (|$IsValid'address'| config_address@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address@@39) (= config_address@@39 173345816)))
 :qid |DiemSystemseqArraybpl.11455:24|
 :skolemid |331|
)) (forall ((config_address@@40 Int) ) (!  (=> (|$IsValid'address'| config_address@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131571| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@40) (= config_address@@40 173345816)))
 :qid |DiemSystemseqArraybpl.11455:243|
 :skolemid |332|
))) (forall ((config_address@@41 Int) ) (!  (=> (|$IsValid'address'| config_address@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131652| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@41) (= config_address@@41 173345816)))
 :qid |DiemSystemseqArraybpl.11455:483|
 :skolemid |333|
))) (forall ((config_address@@42 Int) ) (!  (=> (|$IsValid'address'| config_address@@42) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131733| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@42) (= config_address@@42 173345816)))
 :qid |DiemSystemseqArraybpl.11455:745|
 :skolemid |334|
))) (forall ((config_address@@43 Int) ) (!  (=> (|$IsValid'address'| config_address@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_131814| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@43) (= config_address@@43 173345816)))
 :qid |DiemSystemseqArraybpl.11455:969|
 :skolemid |335|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_116168| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_117687| $1_DiemSystem_CapabilityHolder_$memory) 173345816)))) (and (and (let (($range_0@@80 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@207 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@207))))))))
(forall (($i_1@@66 Int) ) (!  (=> ($InRange $range_0@@80 $i_1@@66) (let ((i1@@21 $i_1@@66))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@208 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@208)))) i1@@21))) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_118068| $1_Roles_RoleId_$memory) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@208 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@208)))) i1@@21)))) 3))))
 :qid |DiemSystemseqArraybpl.11463:151|
 :skolemid |336|
))) (let (($range_0@@81 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@209 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@209))))))))
(forall (($i_1@@67 Int) ) (!  (=> ($InRange $range_0@@81 $i_1@@67) (let ((i1@@22 $i_1@@67))
(= (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (let ((addr@@210 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) addr@@210)))) i1@@22)) 1)))
 :qid |DiemSystemseqArraybpl.11468:151|
 :skolemid |337|
)))) (and (forall (($a_0@@37 Int) ) (! (let (($rsc@@37 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@37)))
 (and (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| $rsc@@37) (let (($range_1@@21 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@37))))))
(let (($range_2@@9 ($Range 0 (seq.len (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@37))))))
(forall (($i_3@@23 Int) ($i_4@@7 Int) ) (!  (=> ($InRange $range_1@@21 $i_3@@23) (=> ($InRange $range_2@@9 $i_4@@7) (let ((i@@75 $i_3@@23))
(let ((j@@38 $i_4@@7))
 (=> (= (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@37)) i@@75)) (|$addr#$1_DiemSystem_ValidatorInfo| (seq.nth (|$validators#$1_DiemSystem_DiemSystem| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| $rsc@@37)) j@@38))) (= i@@75 j@@38))))))
 :qid |DiemSystemseqArraybpl.11474:367|
 :skolemid |338|
))))))
 :qid |DiemSystemseqArraybpl.11473:20|
 :skolemid |339|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_| (|contents#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) $a_0@@37))
)) (= $t2@@8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_117614| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 228374) 228649) anon6_Then_correct) (=> (= (ControlFlow 0 228374) 228521) anon6_Else_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@19  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@30 T@$1_Event_EventHandle) ) (! (let ((stream@@32 (|Select__T@[$1_Event_EventHandle]Multiset_86037_| (|streams#$EventStore| $es) handle@@30)))
 (and (= (|l#Multiset_86037| stream@@32) 0) (forall ((v@@91 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_86037| stream@@32) v@@91) 0)
 :qid |DiemSystemseqArraybpl.129:13|
 :skolemid |2|
))))
 :qid |DiemSystemseqArraybpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 228004) 228374)) anon0$1_correct@@19)))
(let ((anon0_correct@@19  (=> (= (ControlFlow 0 303820) 228004) inline$$InitEventStore$0$anon0_correct@@19)))
anon0_correct@@19))))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $1_Genesis_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 304501) true)
))
(check-sat)
(pop 1)
; Valid
