(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_298429 0)) ((($Memory_298429 (|domain#$Memory_298429| |T@[Int]Bool|) (|contents#$Memory_298429| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_662809 0)) ((($Memory_662809 (|domain#$Memory_662809| |T@[Int]Bool|) (|contents#$Memory_662809| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_659698 0)) ((($Memory_659698 (|domain#$Memory_659698| |T@[Int]Bool|) (|contents#$Memory_659698| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_657492 0)) ((($Memory_657492 (|domain#$Memory_657492| |T@[Int]Bool|) (|contents#$Memory_657492| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_657772 0)) ((($Memory_657772 (|domain#$Memory_657772| |T@[Int]Bool|) (|contents#$Memory_657772| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_657459 0)) ((($Memory_657459 (|domain#$Memory_657459| |T@[Int]Bool|) (|contents#$Memory_657459| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_657244 0)) ((($Memory_657244 (|domain#$Memory_657244| |T@[Int]Bool|) (|contents#$Memory_657244| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_654705 0)) ((($Memory_654705 (|domain#$Memory_654705| |T@[Int]Bool|) (|contents#$Memory_654705| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_654641 0)) ((($Memory_654641 (|domain#$Memory_654641| |T@[Int]Bool|) (|contents#$Memory_654641| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_653351 0)) ((($Memory_653351 (|domain#$Memory_653351| |T@[Int]Bool|) (|contents#$Memory_653351| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_653287 0)) ((($Memory_653287 (|domain#$Memory_653287| |T@[Int]Bool|) (|contents#$Memory_653287| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_652975 0)) ((($Memory_652975 (|domain#$Memory_652975| |T@[Int]Bool|) (|contents#$Memory_652975| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_649709 0)) ((($Memory_649709 (|domain#$Memory_649709| |T@[Int]Bool|) (|contents#$Memory_649709| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_649422 0)) ((($Memory_649422 (|domain#$Memory_649422| |T@[Int]Bool|) (|contents#$Memory_649422| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_649135 0)) ((($Memory_649135 (|domain#$Memory_649135| |T@[Int]Bool|) (|contents#$Memory_649135| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_648916 0)) ((($Memory_648916 (|domain#$Memory_648916| |T@[Int]Bool|) (|contents#$Memory_648916| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_659305 0)) ((($Memory_659305 (|domain#$Memory_659305| |T@[Int]Bool|) (|contents#$Memory_659305| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'#0'| 0)) (((|$1_Diem_MintCapability'#0'| (|$dummy_field#$1_Diem_MintCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'#0'| 0)
(declare-datatypes ((T@$Memory_307988 0)) ((($Memory_307988 (|domain#$Memory_307988| |T@[Int]Bool|) (|contents#$Memory_307988| |T@[Int]$1_Diem_MintCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_307903 0)) ((($Memory_307903 (|domain#$Memory_307903| |T@[Int]Bool|) (|contents#$Memory_307903| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_307818 0)) ((($Memory_307818 (|domain#$Memory_307818| |T@[Int]Bool|) (|contents#$Memory_307818| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'#0'| 0)) (((|$1_Diem_BurnCapability'#0'| (|$dummy_field#$1_Diem_BurnCapability'#0'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'#0'| 0)
(declare-datatypes ((T@$Memory_308247 0)) ((($Memory_308247 (|domain#$Memory_308247| |T@[Int]Bool|) (|contents#$Memory_308247| |T@[Int]$1_Diem_BurnCapability'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_308162 0)) ((($Memory_308162 (|domain#$Memory_308162| |T@[Int]Bool|) (|contents#$Memory_308162| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_308077 0)) ((($Memory_308077 (|domain#$Memory_308077| |T@[Int]Bool|) (|contents#$Memory_308077| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_308692 0)) ((($Memory_308692 (|domain#$Memory_308692| |T@[Int]Bool|) (|contents#$Memory_308692| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_308632 0)) ((($Memory_308632 (|domain#$Memory_308632| |T@[Int]Bool|) (|contents#$Memory_308632| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_659531 0)) ((($Memory_659531 (|domain#$Memory_659531| |T@[Int]Bool|) (|contents#$Memory_659531| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_308545 0)) ((($Memory_308545 (|domain#$Memory_308545| |T@[Int]Bool|) (|contents#$Memory_308545| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_651642 0)) ((($Memory_651642 (|domain#$Memory_651642| |T@[Int]Bool|) (|contents#$Memory_651642| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_308485 0)) ((($Memory_308485 (|domain#$Memory_308485| |T@[Int]Bool|) (|contents#$Memory_308485| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_659440 0)) ((($Memory_659440 (|domain#$Memory_659440| |T@[Int]Bool|) (|contents#$Memory_659440| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_308398 0)) ((($Memory_308398 (|domain#$Memory_308398| |T@[Int]Bool|) (|contents#$Memory_308398| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_653531 0)) ((($Memory_653531 (|domain#$Memory_653531| |T@[Int]Bool|) (|contents#$Memory_653531| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_308338 0)) ((($Memory_308338 (|domain#$Memory_308338| |T@[Int]Bool|) (|contents#$Memory_308338| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_326486 0)) ((($Memory_326486 (|domain#$Memory_326486| |T@[Int]Bool|) (|contents#$Memory_326486| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_326367 0)) ((($Memory_326367 (|domain#$Memory_326367| |T@[Int]Bool|) (|contents#$Memory_326367| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_326248 0)) ((($Memory_326248 (|domain#$Memory_326248| |T@[Int]Bool|) (|contents#$Memory_326248| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_322108 0)) ((($Memory_322108 (|domain#$Memory_322108| |T@[Int]Bool|) (|contents#$Memory_322108| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_322021 0)) ((($Memory_322021 (|domain#$Memory_322021| |T@[Int]Bool|) (|contents#$Memory_322021| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_321934 0)) ((($Memory_321934 (|domain#$Memory_321934| |T@[Int]Bool|) (|contents#$Memory_321934| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_321847 0)) ((($Memory_321847 (|domain#$Memory_321847| |T@[Int]Bool|) (|contents#$Memory_321847| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_321760 0)) ((($Memory_321760 (|domain#$Memory_321760| |T@[Int]Bool|) (|contents#$Memory_321760| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_322373 0)) ((($Memory_322373 (|domain#$Memory_322373| |T@[Int]Bool|) (|contents#$Memory_322373| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_320886 0)) ((($Memory_320886 (|domain#$Memory_320886| |T@[Int]Bool|) (|contents#$Memory_320886| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_320952 0)) ((($Memory_320952 (|domain#$Memory_320952| |T@[Int]Bool|) (|contents#$Memory_320952| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_320805 0)) ((($Memory_320805 (|domain#$Memory_320805| |T@[Int]Bool|) (|contents#$Memory_320805| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_320724 0)) ((($Memory_320724 (|domain#$Memory_320724| |T@[Int]Bool|) (|contents#$Memory_320724| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_320643 0)) ((($Memory_320643 (|domain#$Memory_320643| |T@[Int]Bool|) (|contents#$Memory_320643| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_320562 0)) ((($Memory_320562 (|domain#$Memory_320562| |T@[Int]Bool|) (|contents#$Memory_320562| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_320448 0)) ((($Memory_320448 (|domain#$Memory_320448| |T@[Int]Bool|) (|contents#$Memory_320448| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_658442 0)) ((($Memory_658442 (|domain#$Memory_658442| |T@[Int]Bool|) (|contents#$Memory_658442| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_320481 0)) ((($Memory_320481 (|domain#$Memory_320481| |T@[Int]Bool|) (|contents#$Memory_320481| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_319937 0)) ((($Memory_319937 (|domain#$Memory_319937| |T@[Int]Bool|) (|contents#$Memory_319937| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_318908 0)) ((($Memory_318908 (|domain#$Memory_318908| |T@[Int]Bool|) (|contents#$Memory_318908| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_305770 0)) ((($Memory_305770 (|domain#$Memory_305770| |T@[Int]Bool|) (|contents#$Memory_305770| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_305276 0)) ((($Memory_305276 (|domain#$Memory_305276| |T@[Int]Bool|) (|contents#$Memory_305276| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_274039 0)) (((Multiset_274039 (|v#Multiset_274039| |T@[$EventRep]Int|) (|l#Multiset_274039| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_274039| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_274039|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_660526 0)) ((($Mutation_660526 (|l#$Mutation_660526| T@$Location) (|p#$Mutation_660526| (Seq Int)) (|v#$Mutation_660526| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_660482 0)) ((($Mutation_660482 (|l#$Mutation_660482| T@$Location) (|p#$Mutation_660482| (Seq Int)) (|v#$Mutation_660482| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_609974 0)) ((($Mutation_609974 (|l#$Mutation_609974| T@$Location) (|p#$Mutation_609974| (Seq Int)) (|v#$Mutation_609974| T@$1_FixedPoint32_FixedPoint32) ) ) ))
(declare-datatypes ((T@$Mutation_196068 0)) ((($Mutation_196068 (|l#$Mutation_196068| T@$Location) (|p#$Mutation_196068| (Seq Int)) (|v#$Mutation_196068| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_390969 0)) ((($Mutation_390969 (|l#$Mutation_390969| T@$Location) (|p#$Mutation_390969| (Seq Int)) (|v#$Mutation_390969| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_390922 0)) ((($Mutation_390922 (|l#$Mutation_390922| T@$Location) (|p#$Mutation_390922| (Seq Int)) (|v#$Mutation_390922| |T@$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_388850 0)) ((($Mutation_388850 (|l#$Mutation_388850| T@$Location) (|p#$Mutation_388850| (Seq Int)) (|v#$Mutation_388850| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_388803 0)) ((($Mutation_388803 (|l#$Mutation_388803| T@$Location) (|p#$Mutation_388803| (Seq Int)) (|v#$Mutation_388803| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_386686 0)) ((($Mutation_386686 (|l#$Mutation_386686| T@$Location) (|p#$Mutation_386686| (Seq Int)) (|v#$Mutation_386686| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_386639 0)) ((($Mutation_386639 (|l#$Mutation_386639| T@$Location) (|p#$Mutation_386639| (Seq Int)) (|v#$Mutation_386639| |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_371473 0)) ((($Mutation_371473 (|l#$Mutation_371473| T@$Location) (|p#$Mutation_371473| (Seq Int)) (|v#$Mutation_371473| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_369132 0)) ((($Mutation_369132 (|l#$Mutation_369132| T@$Location) (|p#$Mutation_369132| (Seq Int)) (|v#$Mutation_369132| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_366791 0)) ((($Mutation_366791 (|l#$Mutation_366791| T@$Location) (|p#$Mutation_366791| (Seq Int)) (|v#$Mutation_366791| |T@$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_339548 0)) ((($Mutation_339548 (|l#$Mutation_339548| T@$Location) (|p#$Mutation_339548| (Seq Int)) (|v#$Mutation_339548| |T@$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_324989 0)) ((($Mutation_324989 (|l#$Mutation_324989| T@$Location) (|p#$Mutation_324989| (Seq Int)) (|v#$Mutation_324989| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_299060 0)) ((($Mutation_299060 (|l#$Mutation_299060| T@$Location) (|p#$Mutation_299060| (Seq Int)) (|v#$Mutation_299060| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_13434 0)) ((($Mutation_13434 (|l#$Mutation_13434| T@$Location) (|p#$Mutation_13434| (Seq Int)) (|v#$Mutation_13434| Int) ) ) ))
(declare-datatypes ((T@$Mutation_294373 0)) ((($Mutation_294373 (|l#$Mutation_294373| T@$Location) (|p#$Mutation_294373| (Seq Int)) (|v#$Mutation_294373| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_293627 0)) ((($Mutation_293627 (|l#$Mutation_293627| T@$Location) (|p#$Mutation_293627| (Seq Int)) (|v#$Mutation_293627| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_292187 0)) ((($Mutation_292187 (|l#$Mutation_292187| T@$Location) (|p#$Mutation_292187| (Seq Int)) (|v#$Mutation_292187| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_291441 0)) ((($Mutation_291441 (|l#$Mutation_291441| T@$Location) (|p#$Mutation_291441| (Seq Int)) (|v#$Mutation_291441| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_290001 0)) ((($Mutation_290001 (|l#$Mutation_290001| T@$Location) (|p#$Mutation_290001| (Seq Int)) (|v#$Mutation_290001| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_289255 0)) ((($Mutation_289255 (|l#$Mutation_289255| T@$Location) (|p#$Mutation_289255| (Seq Int)) (|v#$Mutation_289255| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_287815 0)) ((($Mutation_287815 (|l#$Mutation_287815| T@$Location) (|p#$Mutation_287815| (Seq Int)) (|v#$Mutation_287815| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_287069 0)) ((($Mutation_287069 (|l#$Mutation_287069| T@$Location) (|p#$Mutation_287069| (Seq Int)) (|v#$Mutation_287069| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_285629 0)) ((($Mutation_285629 (|l#$Mutation_285629| T@$Location) (|p#$Mutation_285629| (Seq Int)) (|v#$Mutation_285629| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_284883 0)) ((($Mutation_284883 (|l#$Mutation_284883| T@$Location) (|p#$Mutation_284883| (Seq Int)) (|v#$Mutation_284883| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_283443 0)) ((($Mutation_283443 (|l#$Mutation_283443| T@$Location) (|p#$Mutation_283443| (Seq Int)) (|v#$Mutation_283443| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_282697 0)) ((($Mutation_282697 (|l#$Mutation_282697| T@$Location) (|p#$Mutation_282697| (Seq Int)) (|v#$Mutation_282697| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_281257 0)) ((($Mutation_281257 (|l#$Mutation_281257| T@$Location) (|p#$Mutation_281257| (Seq Int)) (|v#$Mutation_281257| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_280511 0)) ((($Mutation_280511 (|l#$Mutation_280511| T@$Location) (|p#$Mutation_280511| (Seq Int)) (|v#$Mutation_280511| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_279071 0)) ((($Mutation_279071 (|l#$Mutation_279071| T@$Location) (|p#$Mutation_279071| (Seq Int)) (|v#$Mutation_279071| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_278325 0)) ((($Mutation_278325 (|l#$Mutation_278325| T@$Location) (|p#$Mutation_278325| (Seq Int)) (|v#$Mutation_278325| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_276847 0)) ((($Mutation_276847 (|l#$Mutation_276847| T@$Location) (|p#$Mutation_276847| (Seq Int)) (|v#$Mutation_276847| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_276101 0)) ((($Mutation_276101 (|l#$Mutation_276101| T@$Location) (|p#$Mutation_276101| (Seq Int)) (|v#$Mutation_276101| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun $EmptyEventStore () T@$EventStore)
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_274039_| (|T@[$1_Event_EventHandle]Multiset_274039| T@$1_Event_EventHandle) T@Multiset_274039)
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
(declare-fun |$IsValid'$1_Diem_Diem'#0''| (|T@$1_Diem_Diem'#0'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| (|T@$1_Diem_BurnCapability'$1_XUS_XUS'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|T@$1_Diem_BurnCapability'$1_XDX_XDX'|) Bool)
(declare-fun |$IsValid'$1_Diem_BurnCapability'#0''| (|T@$1_Diem_BurnCapability'#0'|) Bool)
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
(declare-fun ReverseVec_13287 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_247118 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_245936 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_246133 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_246330 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_247315 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_246921 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_246724 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_246527 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_245739 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_274039| |T@[$1_Event_EventHandle]Multiset_274039|) |T@[$1_Event_EventHandle]Multiset_274039|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Diemcvc5bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Diemcvc5bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Diemcvc5bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Diemcvc5bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Diemcvc5bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Diemcvc5bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Diemcvc5bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Diemcvc5bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |Diemcvc5bpl.590:13|
 :skolemid |15|
))))
 :qid |Diemcvc5bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Diemcvc5bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Diemcvc5bpl.603:17|
 :skolemid |18|
)))))
 :qid |Diemcvc5bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |Diemcvc5bpl.770:13|
 :skolemid |20|
))))
 :qid |Diemcvc5bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Diemcvc5bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Diemcvc5bpl.783:17|
 :skolemid |23|
)))))
 :qid |Diemcvc5bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |Diemcvc5bpl.950:13|
 :skolemid |25|
))))
 :qid |Diemcvc5bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |Diemcvc5bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |Diemcvc5bpl.963:17|
 :skolemid |28|
)))))
 :qid |Diemcvc5bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |Diemcvc5bpl.1130:13|
 :skolemid |30|
))))
 :qid |Diemcvc5bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |Diemcvc5bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |Diemcvc5bpl.1143:17|
 :skolemid |33|
)))))
 :qid |Diemcvc5bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |Diemcvc5bpl.1310:13|
 :skolemid |35|
))))
 :qid |Diemcvc5bpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |Diemcvc5bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |Diemcvc5bpl.1323:17|
 :skolemid |38|
)))))
 :qid |Diemcvc5bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |Diemcvc5bpl.1490:13|
 :skolemid |40|
))))
 :qid |Diemcvc5bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |Diemcvc5bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |Diemcvc5bpl.1503:17|
 :skolemid |43|
)))))
 :qid |Diemcvc5bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |Diemcvc5bpl.1670:13|
 :skolemid |45|
))))
 :qid |Diemcvc5bpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |Diemcvc5bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |Diemcvc5bpl.1683:17|
 :skolemid |48|
)))))
 :qid |Diemcvc5bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@18 i@@21)))
 :qid |Diemcvc5bpl.1850:13|
 :skolemid |50|
))))
 :qid |Diemcvc5bpl.1848:51|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_ValidatorConfig_Config)) (e@@6 T@$1_ValidatorConfig_Config) ) (! (let ((i@@22 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |Diemcvc5bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |Diemcvc5bpl.1863:17|
 :skolemid |53|
)))))
 :qid |Diemcvc5bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'vec'u8''| (seq.nth v@@20 i@@24)))
 :qid |Diemcvc5bpl.2030:13|
 :skolemid |55|
))))
 :qid |Diemcvc5bpl.2028:33|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@20))
)))
(assert (forall ((v@@21 (Seq (Seq Int))) (e@@7 (Seq Int)) ) (! (let ((i@@25 (|$IndexOfVec'vec'u8''| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |Diemcvc5bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |Diemcvc5bpl.2043:17|
 :skolemid |58|
)))))
 :qid |Diemcvc5bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'address'| (seq.nth v@@22 i@@27)))
 :qid |Diemcvc5bpl.2210:13|
 :skolemid |60|
))))
 :qid |Diemcvc5bpl.2208:33|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'address''| v@@22))
)))
(assert (forall ((v@@23 (Seq Int)) (e@@8 Int) ) (! (let ((i@@28 (|$IndexOfVec'address'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |Diemcvc5bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |Diemcvc5bpl.2223:17|
 :skolemid |63|
)))))
 :qid |Diemcvc5bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'address'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'u8'| (seq.nth v@@24 i@@30)))
 :qid |Diemcvc5bpl.2390:13|
 :skolemid |65|
))))
 :qid |Diemcvc5bpl.2388:28|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'u8''| v@@24))
)))
(assert (forall ((v@@25 (Seq Int)) (e@@9 Int) ) (! (let ((i@@31 (|$IndexOfVec'u8'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |Diemcvc5bpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |Diemcvc5bpl.2403:17|
 :skolemid |68|
)))))
 :qid |Diemcvc5bpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'u8'| v@@25 e@@9))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Diemcvc5bpl.2576:15|
 :skolemid |70|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Diemcvc5bpl.2592:15|
 :skolemid |71|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Diemcvc5bpl.2659:15|
 :skolemid |72|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Diemcvc5bpl.2662:15|
 :skolemid |73|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_274039| stream) 0) (forall ((v@@26 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream) v@@26) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |Diemcvc5bpl.2764:80|
 :skolemid |76|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |Diemcvc5bpl.2770:15|
 :skolemid |77|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |Diemcvc5bpl.2820:82|
 :skolemid |78|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |Diemcvc5bpl.2826:15|
 :skolemid |79|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |Diemcvc5bpl.2876:80|
 :skolemid |80|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |Diemcvc5bpl.2882:15|
 :skolemid |81|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |Diemcvc5bpl.2932:79|
 :skolemid |82|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |Diemcvc5bpl.2938:15|
 :skolemid |83|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |Diemcvc5bpl.2988:76|
 :skolemid |84|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |Diemcvc5bpl.2994:15|
 :skolemid |85|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |Diemcvc5bpl.3044:78|
 :skolemid |86|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |Diemcvc5bpl.3050:15|
 :skolemid |87|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |Diemcvc5bpl.3100:74|
 :skolemid |88|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |Diemcvc5bpl.3106:15|
 :skolemid |89|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |Diemcvc5bpl.3156:69|
 :skolemid |90|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |Diemcvc5bpl.3162:15|
 :skolemid |91|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |Diemcvc5bpl.3212:70|
 :skolemid |92|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |Diemcvc5bpl.3218:15|
 :skolemid |93|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |Diemcvc5bpl.3268:60|
 :skolemid |94|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |Diemcvc5bpl.3274:15|
 :skolemid |95|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |Diemcvc5bpl.3324:66|
 :skolemid |96|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |Diemcvc5bpl.3330:15|
 :skolemid |97|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |Diemcvc5bpl.3380:60|
 :skolemid |98|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |Diemcvc5bpl.3386:15|
 :skolemid |99|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |Diemcvc5bpl.3436:63|
 :skolemid |100|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |Diemcvc5bpl.3442:15|
 :skolemid |101|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |Diemcvc5bpl.3492:79|
 :skolemid |102|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |Diemcvc5bpl.3498:15|
 :skolemid |103|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |Diemcvc5bpl.3548:82|
 :skolemid |104|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |Diemcvc5bpl.3554:15|
 :skolemid |105|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |Diemcvc5bpl.3604:88|
 :skolemid |106|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |Diemcvc5bpl.3610:15|
 :skolemid |107|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |Diemcvc5bpl.3660:72|
 :skolemid |108|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |Diemcvc5bpl.3666:15|
 :skolemid |109|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |Diemcvc5bpl.3720:15|
 :skolemid |110|
)))
(assert (forall ((addr Int) ) (! true
 :qid |Diemcvc5bpl.3729:15|
 :skolemid |111|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |Diemcvc5bpl.3754:61|
 :skolemid |112|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |Diemcvc5bpl.3931:36|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |Diemcvc5bpl.6045:71|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |Diemcvc5bpl.6124:46|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |Diemcvc5bpl.6137:64|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |Diemcvc5bpl.6150:75|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |Diemcvc5bpl.6163:72|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |Diemcvc5bpl.6192:55|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |Diemcvc5bpl.6214:46|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |Diemcvc5bpl.6232:49|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |Diemcvc5bpl.6307:71|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |Diemcvc5bpl.6321:91|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |Diemcvc5bpl.6335:113|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |Diemcvc5bpl.6349:75|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |Diemcvc5bpl.6363:73|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |Diemcvc5bpl.6383:48|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |Diemcvc5bpl.6399:57|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |Diemcvc5bpl.6413:83|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |Diemcvc5bpl.6427:103|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |Diemcvc5bpl.6441:125|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |Diemcvc5bpl.6455:87|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |Diemcvc5bpl.6469:85|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |Diemcvc5bpl.6483:48|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |Diemcvc5bpl.6504:45|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |Diemcvc5bpl.6518:51|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |Diemcvc5bpl.6541:48|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |Diemcvc5bpl.6857:49|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |Diemcvc5bpl.6907:65|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |Diemcvc5bpl.7541:45|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |Diemcvc5bpl.7554:45|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |Diemcvc5bpl.7567:37|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |Diemcvc5bpl.7580:55|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |Diemcvc5bpl.7594:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 |T@$1_Diem_BurnCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33) true)
 :qid |Diemcvc5bpl.7608:47|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'#0''| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@34))))
 :qid |Diemcvc5bpl.7628:38|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@34))
)))
(assert (forall ((s@@35 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@35)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@35))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@35))))
 :qid |Diemcvc5bpl.7649:44|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@36))))
 :qid |Diemcvc5bpl.7700:53|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@37))))
 :qid |Diemcvc5bpl.7762:53|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@38)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@38))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@38))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@38))))
 :qid |Diemcvc5bpl.7824:45|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39) true)
 :qid |Diemcvc5bpl.7850:55|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@39))
)))
(assert (forall ((s@@40 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40) true)
 :qid |Diemcvc5bpl.7864:55|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_MintCapability'#0'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'#0''| s@@41) true)
 :qid |Diemcvc5bpl.7878:47|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'#0''| s@@41))
)))
(assert (forall ((s@@42 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@42)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@42)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@42))))
 :qid |Diemcvc5bpl.7895:38|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@43)))
 :qid |Diemcvc5bpl.7909:48|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@43))
)))
(assert (forall ((s@@44 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@44)))
 :qid |Diemcvc5bpl.7923:48|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@45) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@45)))
 :qid |Diemcvc5bpl.7937:40|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@45))
)))
(assert (forall ((s@@46 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@46)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@46)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@46))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@46))))
 :qid |Diemcvc5bpl.7957:41|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@47)))
 :qid |Diemcvc5bpl.7972:53|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@48)))
 :qid |Diemcvc5bpl.7986:53|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@49)))
 :qid |Diemcvc5bpl.8000:45|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@50))))
 :qid |Diemcvc5bpl.8017:60|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@50))
)))
(assert (forall ((s@@51 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@51))))
 :qid |Diemcvc5bpl.8034:60|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@51))
)))
(assert (forall ((s@@52 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@52)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@52))))
 :qid |Diemcvc5bpl.8051:52|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@52))
)))
(assert (forall ((s@@53 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@53))))
 :qid |Diemcvc5bpl.8068:57|
 :skolemid |235|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@53))
)))
(assert (forall ((s@@54 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54) true)
 :qid |Diemcvc5bpl.61698:68|
 :skolemid |3449|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@55))))
 :qid |Diemcvc5bpl.61720:66|
 :skolemid |3450|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@56))))
 :qid |Diemcvc5bpl.61746:66|
 :skolemid |3451|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@57))))
 :qid |Diemcvc5bpl.61775:56|
 :skolemid |3452|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@57))
)))
(assert (forall ((s@@58 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@58))))
 :qid |Diemcvc5bpl.61805:56|
 :skolemid |3453|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@58))
)))
(assert (forall ((s@@59 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@59) true)
 :qid |Diemcvc5bpl.62139:31|
 :skolemid |3454|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@59))
)))
(assert (forall ((s@@60 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@60) true)
 :qid |Diemcvc5bpl.62483:31|
 :skolemid |3455|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@60))
)))
(assert (forall ((s@@61 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@61)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@61)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@61))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@61))))
 :qid |Diemcvc5bpl.62502:35|
 :skolemid |3456|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@62)))
 :qid |Diemcvc5bpl.62923:45|
 :skolemid |3457|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@63))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@63))))
 :qid |Diemcvc5bpl.62942:50|
 :skolemid |3458|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@64)))
 :qid |Diemcvc5bpl.62957:52|
 :skolemid |3459|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@65) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@65)))
 :qid |Diemcvc5bpl.62981:38|
 :skolemid |3460|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@65))
)))
(assert (forall ((s@@66 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@66) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@66)))
 :qid |Diemcvc5bpl.62995:39|
 :skolemid |3461|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@66))
)))
(assert (forall ((s@@67 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@67)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@67)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@67))))
 :qid |Diemcvc5bpl.63022:65|
 :skolemid |3462|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@68))))
 :qid |Diemcvc5bpl.63407:60|
 :skolemid |3463|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@69)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@69)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@69))))
 :qid |Diemcvc5bpl.63424:66|
 :skolemid |3464|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@70)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@70)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@70))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@70))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@70))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@70))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@70))))
 :qid |Diemcvc5bpl.63453:50|
 :skolemid |3465|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@71) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@71)))
 :qid |Diemcvc5bpl.63472:45|
 :skolemid |3466|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@72)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@72)) true))
 :qid |Diemcvc5bpl.63791:87|
 :skolemid |3467|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@73) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@73)))
 :qid |Diemcvc5bpl.64003:47|
 :skolemid |3468|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@73))
)))
(assert (forall ((s@@74 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@74)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@74)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@74))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@74))))
 :qid |Diemcvc5bpl.64023:58|
 :skolemid |3469|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@74))
)))
(assert (forall ((s@@75 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@75) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@75)))
 :qid |Diemcvc5bpl.64038:39|
 :skolemid |3470|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@76)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@76)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@76))))
 :qid |Diemcvc5bpl.64060:58|
 :skolemid |3471|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@77)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@77)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@77))))
 :qid |Diemcvc5bpl.64077:58|
 :skolemid |3472|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@78) true)
 :qid |Diemcvc5bpl.64092:51|
 :skolemid |3473|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@78))
)))
(assert (forall ((s@@79 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@79)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@79)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@79))))
 :qid |Diemcvc5bpl.64109:60|
 :skolemid |3474|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@80)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@80)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@80))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@80))))
 :qid |Diemcvc5bpl.64407:47|
 :skolemid |3475|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@81)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@81)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@81))))
 :qid |Diemcvc5bpl.64429:63|
 :skolemid |3476|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@81))
)))
(assert (forall ((s@@82 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@82) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@82)))
 :qid |Diemcvc5bpl.64444:57|
 :skolemid |3477|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@83) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@83)))
 :qid |Diemcvc5bpl.64457:55|
 :skolemid |3478|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@84) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@84)))
 :qid |Diemcvc5bpl.64471:55|
 :skolemid |3479|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@85)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@85))))
 :qid |Diemcvc5bpl.64488:54|
 :skolemid |3480|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@86)))
 :qid |Diemcvc5bpl.64502:55|
 :skolemid |3481|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@87)))
 :qid |Diemcvc5bpl.64516:57|
 :skolemid |3482|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@88)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@88))))
 :qid |Diemcvc5bpl.64538:56|
 :skolemid |3483|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@89)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@89))))
 :qid |Diemcvc5bpl.64563:52|
 :skolemid |3484|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@90)))
 :qid |Diemcvc5bpl.64579:54|
 :skolemid |3485|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@91)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@91)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@91))))
 :qid |Diemcvc5bpl.65451:47|
 :skolemid |3486|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@92)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@92)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@92))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@92))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@92))))
 :qid |Diemcvc5bpl.65475:47|
 :skolemid |3487|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@93) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@93)))
 :qid |Diemcvc5bpl.65716:49|
 :skolemid |3488|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@94)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@94)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@94))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@94))))
 :qid |Diemcvc5bpl.65759:49|
 :skolemid |3489|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@95)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@95)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@95))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@95))))
 :qid |Diemcvc5bpl.65788:48|
 :skolemid |3490|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@96) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@96)))
 :qid |Diemcvc5bpl.66083:47|
 :skolemid |3491|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@96))
)))
(assert (forall ((v@@27 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_13287 v@@27)))
 (and (= (seq.len r@@0) (seq.len v@@27)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len r@@0))) (= (seq.nth r@@0 i@@33) (seq.nth v@@27 (- (- (seq.len v@@27) i@@33) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@33))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13287 v@@27))
)))
(assert (forall ((v@@28 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_247118 v@@28)))
 (and (= (seq.len r@@1) (seq.len v@@28)) (forall ((i@@34 Int) ) (!  (=> (and (>= i@@34 0) (< i@@34 (seq.len r@@1))) (= (seq.nth r@@1 i@@34) (seq.nth v@@28 (- (- (seq.len v@@28) i@@34) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@34))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_247118 v@@28))
)))
(assert (forall ((v@@29 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_245936 v@@29)))
 (and (= (seq.len r@@2) (seq.len v@@29)) (forall ((i@@35 Int) ) (!  (=> (and (>= i@@35 0) (< i@@35 (seq.len r@@2))) (= (seq.nth r@@2 i@@35) (seq.nth v@@29 (- (- (seq.len v@@29) i@@35) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@35))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_245936 v@@29))
)))
(assert (forall ((v@@30 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_246133 v@@30)))
 (and (= (seq.len r@@3) (seq.len v@@30)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len r@@3))) (= (seq.nth r@@3 i@@36) (seq.nth v@@30 (- (- (seq.len v@@30) i@@36) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@36))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_246133 v@@30))
)))
(assert (forall ((v@@31 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_246330 v@@31)))
 (and (= (seq.len r@@4) (seq.len v@@31)) (forall ((i@@37 Int) ) (!  (=> (and (>= i@@37 0) (< i@@37 (seq.len r@@4))) (= (seq.nth r@@4 i@@37) (seq.nth v@@31 (- (- (seq.len v@@31) i@@37) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@37))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_246330 v@@31))
)))
(assert (forall ((v@@32 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_247315 v@@32)))
 (and (= (seq.len r@@5) (seq.len v@@32)) (forall ((i@@38 Int) ) (!  (=> (and (>= i@@38 0) (< i@@38 (seq.len r@@5))) (= (seq.nth r@@5 i@@38) (seq.nth v@@32 (- (- (seq.len v@@32) i@@38) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@38))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_247315 v@@32))
)))
(assert (forall ((v@@33 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_246921 v@@33)))
 (and (= (seq.len r@@6) (seq.len v@@33)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len r@@6))) (= (seq.nth r@@6 i@@39) (seq.nth v@@33 (- (- (seq.len v@@33) i@@39) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@39))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_246921 v@@33))
)))
(assert (forall ((v@@34 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_246724 v@@34)))
 (and (= (seq.len r@@7) (seq.len v@@34)) (forall ((i@@40 Int) ) (!  (=> (and (>= i@@40 0) (< i@@40 (seq.len r@@7))) (= (seq.nth r@@7 i@@40) (seq.nth v@@34 (- (- (seq.len v@@34) i@@40) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@40))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_246724 v@@34))
)))
(assert (forall ((v@@35 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_246527 v@@35)))
 (and (= (seq.len r@@8) (seq.len v@@35)) (forall ((i@@41 Int) ) (!  (=> (and (>= i@@41 0) (< i@@41 (seq.len r@@8))) (= (seq.nth r@@8 i@@41) (seq.nth v@@35 (- (- (seq.len v@@35) i@@41) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@41))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_246527 v@@35))
)))
(assert (forall ((v@@36 (Seq |T@#0|)) ) (! (let ((r@@9 (ReverseVec_245739 v@@36)))
 (and (= (seq.len r@@9) (seq.len v@@36)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@9))) (= (seq.nth r@@9 i@@42) (seq.nth v@@36 (- (- (seq.len v@@36) i@@42) 1))))
 :qid |Diemcvc5bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@42))
))))
 :qid |Diemcvc5bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_245739 v@@36))
)))
(assert (forall ((|l#0| Bool) (i@@43 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43) |l#0|)
 :qid |Diemcvc5bpl.245:54|
 :skolemid |3575|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@43))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_274039|) (|l#1| |T@[$1_Event_EventHandle]Multiset_274039|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_274039| (|Select__T@[$1_Event_EventHandle]Multiset_274039_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_274039| (|Select__T@[$1_Event_EventHandle]Multiset_274039_| |l#1| handle@@0))))
(Multiset_274039 (|lambda#3| (|v#Multiset_274039| (|Select__T@[$1_Event_EventHandle]Multiset_274039_| |l#0@@0| handle@@0)) (|v#Multiset_274039| (|Select__T@[$1_Event_EventHandle]Multiset_274039_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |Diemcvc5bpl.2733:13|
 :skolemid |3576|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@37 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@37) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@37)))
 :qid |Diemcvc5bpl.124:29|
 :skolemid |3577|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@37))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_305276)
(declare-fun _$t0 () T@$signer)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_305770)
(declare-fun $t2 () Int)
(declare-fun $t6 () Bool)
(declare-fun $t3 () Bool)
(declare-fun $t1 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_305770)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_305770)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_305770)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Roles_RoleId'@0| () T@$1_Roles_RoleId)
(declare-fun $t5 () Int)
(declare-fun $1_Roles_RoleId_$modifies () |T@[Int]Bool|)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_diem_root_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1044573) (let ((L2_correct  (and (=> (= (ControlFlow 0 679502) (- 0 1045319)) (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 679502) (- 0 1045350)) (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t2))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2))))))))
(let ((anon13_Then_correct  (=> $t6 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)) (= 6 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 679390) 679502))) L2_correct))))
(let ((anon12_Then_correct  (=> $t3 (=> (and (and (not (= (|$addr#$signer| _$t0) 173345816)) (= 2 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 679532) 679502))) L2_correct))))
(let ((anon11_Then_correct  (=> $t1 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t2)) (and (= $t2 $t2) (= (ControlFlow 0 679558) 679502))) L2_correct))))
(let ((anon9_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0)) (and (=> (= (ControlFlow 0 679348) (- 0 1044965)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 679348) (- 0 1044975)) (not (not (= (|$addr#$signer| _$t0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0) 173345816))) (and (=> (= (ControlFlow 0 679348) (- 0 1044989)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 679348) (- 0 1045000)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 679348) (- 0 1045010)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0)) (and (=> (= (ControlFlow 0 679348) (- 0 1045019)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) (|$addr#$signer| _$t0))) 0) (and (=> (= (ControlFlow 0 679348) (- 0 1045034)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@0)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@0)) 1))))
 :qid |Diemcvc5bpl.4157:15|
 :skolemid |116|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@1)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@1)) 1))))
 :qid |Diemcvc5bpl.4157:15|
 :skolemid |116|
)) (and (=> (= (ControlFlow 0 679348) (- 0 1045081)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@2)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@2)) 3))))
 :qid |Diemcvc5bpl.4161:15|
 :skolemid |117|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@3)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@3)) 3))))
 :qid |Diemcvc5bpl.4161:15|
 :skolemid |117|
)) (and (=> (= (ControlFlow 0 679348) (- 0 1045128)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@4)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |Diemcvc5bpl.4165:15|
 :skolemid |118|
))) (=> (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@5)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@5)) 4))))
 :qid |Diemcvc5bpl.4165:15|
 :skolemid |118|
)) (and (=> (= (ControlFlow 0 679348) (- 0 1045175)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@6)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@6)) 2))))
 :qid |Diemcvc5bpl.4169:15|
 :skolemid |119|
))) (=> (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@7)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@7)) 2))))
 :qid |Diemcvc5bpl.4169:15|
 :skolemid |119|
)) (and (=> (= (ControlFlow 0 679348) (- 0 1045222)) (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@8)) 5))))
 :qid |Diemcvc5bpl.4173:15|
 :skolemid |120|
))) (=> (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@9)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@9)) 5))))
 :qid |Diemcvc5bpl.4173:15|
 :skolemid |120|
)) (=> (= (ControlFlow 0 679348) (- 0 1045269)) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2) addr@@10)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@10)) 6))))
 :qid |Diemcvc5bpl.4177:15|
 :skolemid |121|
))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $1_Roles_RoleId_$memory@1 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 678942) 679348))) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $1_Roles_RoleId_$memory@0 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0) |$temp_0'$1_Roles_RoleId'@0|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 679362) 679348))) anon9_correct)))
(let ((anon13_Else_correct  (=> (not $t6) (and (=> (= (ControlFlow 0 678928) 679362) anon14_Then_correct) (=> (= (ControlFlow 0 678928) 678942) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (not $t3) (=> (and (|$IsValid'u64'| 0) (= $t5 (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 678922) (- 0 1044815)) (=> (= 0 0) (= $t5 173345816))) (=> (=> (= 0 0) (= $t5 173345816)) (and (=> (= (ControlFlow 0 678922) (- 0 1044831)) (=> (= 0 1) (= $t5 186537453))) (=> (=> (= 0 1) (= $t5 186537453)) (and (=> (= (ControlFlow 0 678922) (- 0 1044847)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0)) (=> (= $t6 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0))) (and (=> (= (ControlFlow 0 678922) 679390) anon13_Then_correct) (=> (= (ControlFlow 0 678922) 678928) anon13_Else_correct)))))))))))))
(let ((anon11_Else_correct  (=> (and (not $t1) (= $t3  (not (= (|$addr#$signer| _$t0) 173345816)))) (and (=> (= (ControlFlow 0 678844) 679532) anon12_Then_correct) (=> (= (ControlFlow 0 678844) 678922) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc))
 :qid |Diemcvc5bpl.3971:20|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0))
))) (=> (and (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |Diemcvc5bpl.3975:20|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@0))
)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies (|$addr#$signer| _$t0))) (and (= _$t0 _$t0) (= $t1  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 678822) 679558) anon11_Then_correct) (=> (= (ControlFlow 0 678822) 678844) anon11_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_274039| stream@@0) 0) (forall ((v@@38 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@0) v@@38) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 678714) 678822)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 1044573) 678714) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_307818)
(declare-fun $1_Roles_RoleId_$memory@1@@0 () T@$Memory_305770)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_307903)
(declare-fun |$1_Diem_MintCapability'#0'_$memory| () T@$Memory_307988)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_308077)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_308162)
(declare-fun |$1_Diem_BurnCapability'#0'_$memory| () T@$Memory_308247)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_308338)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_308398)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_308485)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_308545)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_308632)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_308692)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@0@@0 () T@$Memory_305770)
(declare-fun $t11@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $1_Roles_RoleId_$modifies@@0 () |T@[Int]Bool|)
(declare-fun $t9 () Int)
(declare-fun $t6@0 () Bool)
(declare-fun $t4 () Int)
(declare-fun $t5@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1045629) (let ((anon12_Else_correct@@0  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 680536) (- 0 1046266)) (and (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner)) 1))))
 :qid |Diemcvc5bpl.4370:17|
 :skolemid |132|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@0)) 1))))
 :qid |Diemcvc5bpl.4370:264|
 :skolemid |133|
))) (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@1)) 1))))
 :qid |Diemcvc5bpl.4370:512|
 :skolemid |134|
)))) (=> (and (and (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@2)) 1))))
 :qid |Diemcvc5bpl.4370:17|
 :skolemid |132|
)) (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@3)) 1))))
 :qid |Diemcvc5bpl.4370:264|
 :skolemid |133|
))) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) mint_cap_owner@@4)) 1))))
 :qid |Diemcvc5bpl.4370:512|
 :skolemid |134|
))) (and (=> (= (ControlFlow 0 680536) (- 0 1046339)) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1)) 1))))
 :qid |Diemcvc5bpl.4376:17|
 :skolemid |135|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@0)) 1))))
 :qid |Diemcvc5bpl.4376:227|
 :skolemid |136|
))) (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@1)) 1))))
 :qid |Diemcvc5bpl.4376:438|
 :skolemid |137|
)))) (=> (and (and (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@2)) 1))))
 :qid |Diemcvc5bpl.4376:17|
 :skolemid |135|
)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@3)) 1))))
 :qid |Diemcvc5bpl.4376:227|
 :skolemid |136|
))) (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@4)) 1))))
 :qid |Diemcvc5bpl.4376:438|
 :skolemid |137|
))) (and (=> (= (ControlFlow 0 680536) (- 0 1046412)) (and (and (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@5)) 2))))
 :qid |Diemcvc5bpl.4382:17|
 :skolemid |138|
)) (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@6)) 2))))
 :qid |Diemcvc5bpl.4382:288|
 :skolemid |139|
))) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@7)) 2))))
 :qid |Diemcvc5bpl.4382:560|
 :skolemid |140|
)))) (=> (and (and (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@8)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@8)) 2))))
 :qid |Diemcvc5bpl.4382:17|
 :skolemid |138|
)) (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@9)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@9)) 2))))
 :qid |Diemcvc5bpl.4382:288|
 :skolemid |139|
))) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@10)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) addr1@@10)) 2))))
 :qid |Diemcvc5bpl.4382:560|
 :skolemid |140|
))) (and (=> (= (ControlFlow 0 680536) (- 0 1046512)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 680536) (- 0 1046523)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 680536) (- 0 1046532)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@1@@0) (|$addr#$signer| _$t0@@0))) _$t1)))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 679954) (- 0 1046236)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 679954) (- 0 1046242)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= 6 $t10@0)))))))
(let ((anon12_Then_correct@@0  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t10@0 $abort_code@1) (= (ControlFlow 0 680550) 679954))) L3_correct)))
(let ((anon11_Then$1_correct  (=> (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 680602) 680550) anon12_Then_correct@@0) (=> (= (ControlFlow 0 680602) 680536) anon12_Else_correct@@0))))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 680600) 680602)) anon11_Then$1_correct)))
(let ((anon11_Else_correct@@0  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_Roles_RoleId_$memory@0@@0 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@0) $t11@0))) (= $1_Roles_RoleId_$memory@1@@0 $1_Roles_RoleId_$memory@0@@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 680239) 680550) anon12_Then_correct@@0) (=> (= (ControlFlow 0 680239) 680536) anon12_Else_correct@@0))))))
(let ((anon10_Then_correct  (=> (and inline$$Not$0$dst@1 (= $t11@0 ($1_Roles_RoleId _$t1))) (and (=> (= (ControlFlow 0 680217) (- 0 1045873)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0)) (=> (and (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |Diemcvc5bpl.4342:22|
 :skolemid |123|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |Diemcvc5bpl.4342:269|
 :skolemid |124|
))) (forall ((mint_cap_owner@@7 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@7)) 1))))
 :qid |Diemcvc5bpl.4342:517|
 :skolemid |125|
))) (=> (and (and (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@11) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@11)) 1))))
 :qid |Diemcvc5bpl.4346:22|
 :skolemid |126|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@12) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@12)) 1))))
 :qid |Diemcvc5bpl.4346:232|
 :skolemid |127|
))) (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@13) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@13)) 1))))
 :qid |Diemcvc5bpl.4346:443|
 :skolemid |128|
))) (and (and (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@14) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@14)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@14)) 2))))
 :qid |Diemcvc5bpl.4350:22|
 :skolemid |129|
)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@15) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@15)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@15)) 2))))
 :qid |Diemcvc5bpl.4350:293|
 :skolemid |130|
))) (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@16)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@16)) 2))))
 :qid |Diemcvc5bpl.4350:565|
 :skolemid |131|
)))) (and (=> (= (ControlFlow 0 680217) 680600) anon11_Then_correct@@0) (=> (= (ControlFlow 0 680217) 680239) anon11_Else_correct@@0)))))))))
(let ((anon10_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t9 $t9)) (and (= $t10@0 $t9) (= (ControlFlow 0 679922) 679954))) L3_correct)))
(let ((anon0$2_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 6)) (and (= $t9 $t9) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 679906) 680217) anon10_Then_correct) (=> (= (ControlFlow 0 679906) 679922) anon10_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t6@0)) (= (ControlFlow 0 679870) 679906)) anon0$2_correct)))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (=> (and (and (|$IsValid'u64'| _$t1) (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@1)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@1))
 :qid |Diemcvc5bpl.4238:20|
 :skolemid |122|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@1))
))) (and (= $t4 (|$addr#$signer| _$t0@@0)) (=> (= _$t1 0) (= $t4 173345816)))) (=> (and (and (and (=> (= _$t1 1) (= $t4 186537453)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@0 (|$addr#$signer| _$t0@@0))) (and (= _$t0@@0 _$t0@@0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t5@@0) (= $t5@@0 (|$addr#$signer| _$t0@@0))) (and (= $t6@0 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t5@@0)) (= (ControlFlow 0 679876) 679870)))) inline$$Not$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_274039| stream@@1) 0) (forall ((v@@39 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@1) v@@39) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 679708) 679876)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 1045629) 679708) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $t2@@0 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t4@@0 () Int)
(declare-fun $t10 () Bool)
(declare-fun $t7 () Bool)
(declare-fun $t6@@0 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $t3@@0 () Bool)
(declare-fun $1_Roles_RoleId_$memory@2@@0 () T@$Memory_305770)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@1 () T@$Memory_305770)
(declare-fun $1_Roles_RoleId_$memory@0@@1 () T@$Memory_305770)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@0| () T@$1_Roles_RoleId)
(declare-fun $t9@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_grant_treasury_compliance_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1046552) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 681767) (- 0 1047525)) (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@1) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (= (ControlFlow 0 681767) (- 0 1047591)) (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t4@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t4@@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0))))))))
(let ((anon16_Then_correct  (=> $t10 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)) (= 6 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 681555) 681767))) L2_correct@@0))))
(let ((anon15_Then_correct  (=> (and (and $t7 (or (or (or (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t6@@0)) (= 5 $t4@@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t6@@0)) 0)) (= 3 $t4@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 173345816)) (= 2 $t4@@0)))) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 681859) 681767))) L2_correct@@0)))
(let ((anon14_Then_correct@@0  (=> $t5@@1 (=> (and (and (not (= (|$addr#$signer| _$t0@@1) 186537453)) (= 2 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 681889) 681767))) L2_correct@@0))))
(let ((anon13_Then_correct@@0  (=> $t3@@0 (=> (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@0)) (and (= $t4@@0 $t4@@0) (= (ControlFlow 0 681915) 681767))) L2_correct@@0))))
(let ((anon11_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1)) (and (=> (= (ControlFlow 0 681513) (- 0 1047127)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 681513) (- 0 1047137)) (not (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@1) 186537453))) (and (=> (= (ControlFlow 0 681513) (- 0 1047151)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0))) (and (=> (= (ControlFlow 0 681513) (- 0 1047163)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@0)) 0))) (and (=> (= (ControlFlow 0 681513) (- 0 1047181)) (not (not (= (|$addr#$signer| _$t1@@0) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 173345816))) (and (=> (= (ControlFlow 0 681513) (- 0 1047195)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 681513) (- 0 1047206)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 681513) (- 0 1047216)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1)) (and (=> (= (ControlFlow 0 681513) (- 0 1047225)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) (|$addr#$signer| _$t0@@1))) 1) (and (=> (= (ControlFlow 0 681513) (- 0 1047240)) (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@11)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@11)) 0))))
 :qid |Diemcvc5bpl.4709:15|
 :skolemid |143|
))) (=> (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@12)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@12)) 0))))
 :qid |Diemcvc5bpl.4709:15|
 :skolemid |143|
)) (and (=> (= (ControlFlow 0 681513) (- 0 1047287)) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@13)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@13)) 3))))
 :qid |Diemcvc5bpl.4713:15|
 :skolemid |144|
))) (=> (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@14)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@14)) 3))))
 :qid |Diemcvc5bpl.4713:15|
 :skolemid |144|
)) (and (=> (= (ControlFlow 0 681513) (- 0 1047334)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@15)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@15)) 4))))
 :qid |Diemcvc5bpl.4717:15|
 :skolemid |145|
))) (=> (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@16)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@16)) 4))))
 :qid |Diemcvc5bpl.4717:15|
 :skolemid |145|
)) (and (=> (= (ControlFlow 0 681513) (- 0 1047381)) (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@17)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@17)) 2))))
 :qid |Diemcvc5bpl.4721:15|
 :skolemid |146|
))) (=> (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@18)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@18)) 2))))
 :qid |Diemcvc5bpl.4721:15|
 :skolemid |146|
)) (and (=> (= (ControlFlow 0 681513) (- 0 1047428)) (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@19)) 5))))
 :qid |Diemcvc5bpl.4725:15|
 :skolemid |147|
))) (=> (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@20)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@20)) 5))))
 :qid |Diemcvc5bpl.4725:15|
 :skolemid |147|
)) (=> (= (ControlFlow 0 681513) (- 0 1047475)) (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@0) addr@@21)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@21)) 6))))
 :qid |Diemcvc5bpl.4729:15|
 :skolemid |148|
))))))))))))))))))))))))))))))))))
(let ((anon17_Else_correct  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $1_Roles_RoleId_$memory@1@@1 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@1@@1) (= (ControlFlow 0 681063) 681513))) anon11_correct)))
(let ((anon17_Then_correct  (=> (and (and |$temp_0'bool'@0@@0| (= $1_Roles_RoleId_$memory@0@@1 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1) |$temp_0'$1_Roles_RoleId'@0@@0|)))) (and (= $1_Roles_RoleId_$memory@2@@0 $1_Roles_RoleId_$memory@0@@1) (= (ControlFlow 0 681527) 681513))) anon11_correct)))
(let ((anon16_Else_correct  (=> (not $t10) (and (=> (= (ControlFlow 0 681049) 681527) anon17_Then_correct) (=> (= (ControlFlow 0 681049) 681063) anon17_Else_correct)))))
(let ((anon15_Else_correct  (=> (not $t7) (=> (and (|$IsValid'u64'| 1) (= $t9@@0 (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 681043) (- 0 1046977)) (=> (= 1 0) (= $t9@@0 173345816))) (=> (=> (= 1 0) (= $t9@@0 173345816)) (and (=> (= (ControlFlow 0 681043) (- 0 1046993)) (=> (= 1 1) (= $t9@@0 186537453))) (=> (=> (= 1 1) (= $t9@@0 186537453)) (and (=> (= (ControlFlow 0 681043) (- 0 1047009)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1)) (=> (= $t10 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 681043) 681555) anon16_Then_correct) (=> (= (ControlFlow 0 681043) 681049) anon16_Else_correct)))))))))))))
(let ((anon14_Else_correct@@0  (=> (not $t5@@1) (=> (and (= $t6@@0 (|$addr#$signer| _$t1@@0)) (= $t7  (or (or (or (not (= (|$addr#$signer| _$t1@@0) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t6@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t6@@0)) 0))) (not (= (|$addr#$signer| _$t1@@0) 173345816))))) (and (=> (= (ControlFlow 0 680965) 681859) anon15_Then_correct) (=> (= (ControlFlow 0 680965) 681043) anon15_Else_correct))))))
(let ((anon13_Else_correct@@0  (=> (and (not $t3@@0) (= $t5@@1  (not (= (|$addr#$signer| _$t0@@1) 186537453)))) (and (=> (= (ControlFlow 0 680893) 681889) anon14_Then_correct@@0) (=> (= (ControlFlow 0 680893) 680965) anon14_Else_correct@@0)))))
(let ((anon0$1_correct@@1  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (|$IsValid'address'| (|$addr#$signer| _$t0@@1))) (=> (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t1@@0)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |Diemcvc5bpl.4466:20|
 :skolemid |141|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
))) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |Diemcvc5bpl.4470:20|
 :skolemid |142|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@3))
)) (= $t2@@0 (|$addr#$signer| _$t1@@0)))) (and (and (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@1 (|$addr#$signer| _$t0@@1)) (= _$t0@@1 _$t0@@1)) (and (= _$t1@@0 _$t1@@0) (= $t3@@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))) (and (=> (= (ControlFlow 0 680871) 681915) anon13_Then_correct@@0) (=> (= (ControlFlow 0 680871) 680893) anon13_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_274039| stream@@2) 0) (forall ((v@@40 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@2) v@@40) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 680743) 680871)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 1046552) 680743) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@1 () Int)
(declare-fun _$t1@@1 () T@$signer)
(declare-fun $t3@@1 () Int)
(declare-fun $t6@@1 () Int)
(declare-fun $t9@@1 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun $t4@@1 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@1 () T@$Memory_305770)
(declare-fun |$temp_0'bool'@0@@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@2 () T@$Memory_305770)
(declare-fun $1_Roles_RoleId_$memory@0@@2 () T@$Memory_305770)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@1| () T@$1_Roles_RoleId)
(declare-fun $t8 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@2 () |T@[Int]Bool|)
(declare-fun _$t0@@2 () T@$signer)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_child_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1047728) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 682962) (- 0 1048499)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (=> (= (ControlFlow 0 682962) (- 0 1048553)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $t6@@1))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)) (= 6 $t6@@1))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)) (= 5 $t6@@1))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)) 5)) (= 3 $t6@@1))))))))
(let ((anon10_Then_correct@@0  (=> $t9@@1 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)) (= 6 $t6@@1)) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 682794) 682962))) L2_correct@@1))))
(let ((anon9_Then_correct  (=> (and (and $t5@@2 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@1)) (= 5 $t6@@1)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@1)) 5)) (= 3 $t6@@1)))) (and (= $t6@@1 $t6@@1) (= (ControlFlow 0 683014) 682962))) L2_correct@@1)))
(let ((anon7_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6)) (and (=> (= (ControlFlow 0 682752) (- 0 1048119)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 682752) (- 0 1048131)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 682752) (- 0 1048149)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 682752) (- 0 1048160)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 682752) (- 0 1048172)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@1)) 5))) (and (=> (= (ControlFlow 0 682752) (- 0 1048190)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1)) (and (=> (= (ControlFlow 0 682752) (- 0 1048199)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) (|$addr#$signer| _$t1@@1))) 6) (and (=> (= (ControlFlow 0 682752) (- 0 1048214)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@22)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@22)) 0))))
 :qid |Diemcvc5bpl.4957:15|
 :skolemid |150|
))) (=> (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@23)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@23)) 0))))
 :qid |Diemcvc5bpl.4957:15|
 :skolemid |150|
)) (and (=> (= (ControlFlow 0 682752) (- 0 1048261)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@24)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@24)) 1))))
 :qid |Diemcvc5bpl.4961:15|
 :skolemid |151|
))) (=> (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@25)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@25)) 1))))
 :qid |Diemcvc5bpl.4961:15|
 :skolemid |151|
)) (and (=> (= (ControlFlow 0 682752) (- 0 1048308)) (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@26)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@26)) 3))))
 :qid |Diemcvc5bpl.4965:15|
 :skolemid |152|
))) (=> (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@27)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@27)) 3))))
 :qid |Diemcvc5bpl.4965:15|
 :skolemid |152|
)) (and (=> (= (ControlFlow 0 682752) (- 0 1048355)) (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@28)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@28)) 4))))
 :qid |Diemcvc5bpl.4969:15|
 :skolemid |153|
))) (=> (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@29)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@29)) 4))))
 :qid |Diemcvc5bpl.4969:15|
 :skolemid |153|
)) (and (=> (= (ControlFlow 0 682752) (- 0 1048402)) (forall ((addr@@30 Int) ) (!  (=> (|$IsValid'address'| addr@@30) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@30)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@30)) 2))))
 :qid |Diemcvc5bpl.4973:15|
 :skolemid |154|
))) (=> (forall ((addr@@31 Int) ) (!  (=> (|$IsValid'address'| addr@@31) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@31)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@31)) 2))))
 :qid |Diemcvc5bpl.4973:15|
 :skolemid |154|
)) (=> (= (ControlFlow 0 682752) (- 0 1048449)) (forall ((addr@@32 Int) ) (!  (=> (|$IsValid'address'| addr@@32) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@1) addr@@32)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@32)) 5))))
 :qid |Diemcvc5bpl.4977:15|
 :skolemid |155|
))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0@@1|) (= $1_Roles_RoleId_$memory@1@@2 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@1@@2) (= (ControlFlow 0 682320) 682752))) anon7_correct)))
(let ((anon11_Then_correct@@1  (=> (and (and |$temp_0'bool'@0@@1| (= $1_Roles_RoleId_$memory@0@@2 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1) |$temp_0'$1_Roles_RoleId'@0@@1|)))) (and (= $1_Roles_RoleId_$memory@2@@1 $1_Roles_RoleId_$memory@0@@2) (= (ControlFlow 0 682766) 682752))) anon7_correct)))
(let ((anon10_Else_correct@@0  (=> (not $t9@@1) (and (=> (= (ControlFlow 0 682306) 682766) anon11_Then_correct@@1) (=> (= (ControlFlow 0 682306) 682320) anon11_Else_correct@@1)))))
(let ((anon9_Else_correct  (=> (not $t5@@2) (=> (and (|$IsValid'u64'| 6) (= $t8 (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 682300) (- 0 1047969)) (=> (= 6 0) (= $t8 173345816))) (=> (=> (= 6 0) (= $t8 173345816)) (and (=> (= (ControlFlow 0 682300) (- 0 1047985)) (=> (= 6 1) (= $t8 186537453))) (=> (=> (= 6 1) (= $t8 186537453)) (and (=> (= (ControlFlow 0 682300) (- 0 1048001)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1)) (=> (= $t9@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@1))) (and (=> (= (ControlFlow 0 682300) 682794) anon10_Then_correct@@0) (=> (= (ControlFlow 0 682300) 682306) anon10_Else_correct@@0)))))))))))))
(let ((anon0$1_correct@@2  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (|$IsValid'address'| (|$addr#$signer| _$t1@@1))) (=> (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |Diemcvc5bpl.4788:20|
 :skolemid |149|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@4))
)) (= $t2@@1 (|$addr#$signer| _$t0@@2))) (and (= $t3@@1 (|$addr#$signer| _$t0@@2)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@2 (|$addr#$signer| _$t1@@1)))) (and (and (= _$t0@@2 _$t0@@2) (= _$t1@@1 _$t1@@1)) (and (= $t4@@1 (|$addr#$signer| _$t0@@2)) (= $t5@@2  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@1)) 5))))))) (and (=> (= (ControlFlow 0 682222) 683014) anon9_Then_correct) (=> (= (ControlFlow 0 682222) 682300) anon9_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_274039| stream@@3) 0) (forall ((v@@41 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@3) v@@41) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 682092) 682222)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 1047728) 682092) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@2 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun _$t1@@2 () T@$signer)
(declare-fun $t3@@2 () Int)
(declare-fun $t6@@2 () Int)
(declare-fun $t9@@2 () Bool)
(declare-fun $t5@@3 () Bool)
(declare-fun $t4@@2 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@2 () T@$Memory_305770)
(declare-fun |$temp_0'bool'@0@@2| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@3 () T@$Memory_305770)
(declare-fun $1_Roles_RoleId_$memory@0@@3 () T@$Memory_305770)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@2| () T@$1_Roles_RoleId)
(declare-fun $t8@@0 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@3 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_designated_dealer_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1048662) (let ((L2_correct@@2  (and (=> (= (ControlFlow 0 684143) (- 0 1049491)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))) (=> (= (ControlFlow 0 684143) (- 0 1049567)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)) (= 5 $t6@@2))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2))))))))
(let ((anon10_Then_correct@@1  (=> $t9@@2 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)) (= 6 $t6@@2)) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 683911) 684143))) L2_correct@@2))))
(let ((anon9_Then_correct@@0  (=> (and (and $t5@@3 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@2)) (= 5 $t6@@2)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@2)) 1)) (= 3 $t6@@2))) (and (not (= (|$addr#$signer| _$t0@@3) 186537453)) (= 2 $t6@@2)))) (and (= $t6@@2 $t6@@2) (= (ControlFlow 0 684215) 684143))) L2_correct@@2)))
(let ((anon7_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2)) (and (=> (= (ControlFlow 0 683869) (- 0 1049083)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2))) (and (=> (= (ControlFlow 0 683869) (- 0 1049095)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@2)) 1))) (and (=> (= (ControlFlow 0 683869) (- 0 1049113)) (not (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 186537453))) (and (=> (= (ControlFlow 0 683869) (- 0 1049127)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 683869) (- 0 1049138)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2))) (and (=> (= (ControlFlow 0 683869) (- 0 1049150)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@2)) 1))) (and (=> (= (ControlFlow 0 683869) (- 0 1049168)) (not (not (= (|$addr#$signer| _$t0@@3) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@3) 186537453))) (and (=> (= (ControlFlow 0 683869) (- 0 1049182)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2)) (and (=> (= (ControlFlow 0 683869) (- 0 1049191)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) (|$addr#$signer| _$t1@@2))) 2) (and (=> (= (ControlFlow 0 683869) (- 0 1049206)) (forall ((addr@@33 Int) ) (!  (=> (|$IsValid'address'| addr@@33) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@33)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@33)) 0))))
 :qid |Diemcvc5bpl.5215:15|
 :skolemid |157|
))) (=> (forall ((addr@@34 Int) ) (!  (=> (|$IsValid'address'| addr@@34) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@34)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@34)) 0))))
 :qid |Diemcvc5bpl.5215:15|
 :skolemid |157|
)) (and (=> (= (ControlFlow 0 683869) (- 0 1049253)) (forall ((addr@@35 Int) ) (!  (=> (|$IsValid'address'| addr@@35) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@35)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@35)) 1))))
 :qid |Diemcvc5bpl.5219:15|
 :skolemid |158|
))) (=> (forall ((addr@@36 Int) ) (!  (=> (|$IsValid'address'| addr@@36) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@36)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@36)) 1))))
 :qid |Diemcvc5bpl.5219:15|
 :skolemid |158|
)) (and (=> (= (ControlFlow 0 683869) (- 0 1049300)) (forall ((addr@@37 Int) ) (!  (=> (|$IsValid'address'| addr@@37) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@37)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@37)) 3))))
 :qid |Diemcvc5bpl.5223:15|
 :skolemid |159|
))) (=> (forall ((addr@@38 Int) ) (!  (=> (|$IsValid'address'| addr@@38) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@38)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@38)) 3))))
 :qid |Diemcvc5bpl.5223:15|
 :skolemid |159|
)) (and (=> (= (ControlFlow 0 683869) (- 0 1049347)) (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@39)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@39)) 4))))
 :qid |Diemcvc5bpl.5227:15|
 :skolemid |160|
))) (=> (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@40)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@40)) 4))))
 :qid |Diemcvc5bpl.5227:15|
 :skolemid |160|
)) (and (=> (= (ControlFlow 0 683869) (- 0 1049394)) (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@41)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@41)) 5))))
 :qid |Diemcvc5bpl.5231:15|
 :skolemid |161|
))) (=> (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@42)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@42)) 5))))
 :qid |Diemcvc5bpl.5231:15|
 :skolemid |161|
)) (=> (= (ControlFlow 0 683869) (- 0 1049441)) (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@2) addr@@43)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@43) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@43)) 6))))
 :qid |Diemcvc5bpl.5235:15|
 :skolemid |162|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@2|) (= $1_Roles_RoleId_$memory@1@@3 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@1@@3) (= (ControlFlow 0 683409) 683869))) anon7_correct@@0)))
(let ((anon11_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@2| (= $1_Roles_RoleId_$memory@0@@3 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2) |$temp_0'$1_Roles_RoleId'@0@@2|)))) (and (= $1_Roles_RoleId_$memory@2@@2 $1_Roles_RoleId_$memory@0@@3) (= (ControlFlow 0 683883) 683869))) anon7_correct@@0)))
(let ((anon10_Else_correct@@1  (=> (not $t9@@2) (and (=> (= (ControlFlow 0 683395) 683883) anon11_Then_correct@@2) (=> (= (ControlFlow 0 683395) 683409) anon11_Else_correct@@2)))))
(let ((anon9_Else_correct@@0  (=> (not $t5@@3) (=> (and (|$IsValid'u64'| 2) (= $t8@@0 (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 683389) (- 0 1048933)) (=> (= 2 0) (= $t8@@0 173345816))) (=> (=> (= 2 0) (= $t8@@0 173345816)) (and (=> (= (ControlFlow 0 683389) (- 0 1048949)) (=> (= 2 1) (= $t8@@0 186537453))) (=> (=> (= 2 1) (= $t8@@0 186537453)) (and (=> (= (ControlFlow 0 683389) (- 0 1048965)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2)) (=> (= $t9@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@2))) (and (=> (= (ControlFlow 0 683389) 683911) anon10_Then_correct@@1) (=> (= (ControlFlow 0 683389) 683395) anon10_Else_correct@@1)))))))))))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@3)) (|$IsValid'address'| (|$addr#$signer| _$t1@@2))) (=> (and (and (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@5)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@5))
 :qid |Diemcvc5bpl.5036:20|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@5))
)) (= $t2@@2 (|$addr#$signer| _$t0@@3))) (and (= $t3@@2 (|$addr#$signer| _$t0@@3)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@3 (|$addr#$signer| _$t1@@2)))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@2 _$t1@@2)) (and (= $t4@@2 (|$addr#$signer| _$t0@@3)) (= $t5@@3  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@2)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@2)) 1))) (not (= (|$addr#$signer| _$t0@@3) 186537453))))))) (and (=> (= (ControlFlow 0 683311) 684215) anon9_Then_correct@@0) (=> (= (ControlFlow 0 683311) 683389) anon9_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_274039| stream@@4) 0) (forall ((v@@42 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@4) v@@42) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 683169) 683311)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 1048662) 683169) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@3 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun _$t1@@3 () T@$signer)
(declare-fun $t3@@3 () Int)
(declare-fun $t6@@3 () Int)
(declare-fun $t9@@3 () Bool)
(declare-fun $t5@@4 () Bool)
(declare-fun $t4@@3 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@3 () T@$Memory_305770)
(declare-fun |$temp_0'bool'@0@@3| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@4 () T@$Memory_305770)
(declare-fun $1_Roles_RoleId_$memory@0@@4 () T@$Memory_305770)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@3| () T@$1_Roles_RoleId)
(declare-fun $t8@@1 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@4 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_parent_vasp_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1049714) (let ((L2_correct@@3  (and (=> (= (ControlFlow 0 685352) (- 0 1050543)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))) (=> (= (ControlFlow 0 685352) (- 0 1050619)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@3))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)) (= 5 $t6@@3))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3))))))))
(let ((anon10_Then_correct@@2  (=> $t9@@3 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)) (= 6 $t6@@3)) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 685120) 685352))) L2_correct@@3))))
(let ((anon9_Then_correct@@1  (=> (and (and $t5@@4 (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@3)) (= 5 $t6@@3)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@3)) 1)) (= 3 $t6@@3))) (and (not (= (|$addr#$signer| _$t0@@4) 186537453)) (= 2 $t6@@3)))) (and (= $t6@@3 $t6@@3) (= (ControlFlow 0 685424) 685352))) L2_correct@@3)))
(let ((anon7_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5)) (and (=> (= (ControlFlow 0 685078) (- 0 1050135)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3))) (and (=> (= (ControlFlow 0 685078) (- 0 1050147)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@3)) 1))) (and (=> (= (ControlFlow 0 685078) (- 0 1050165)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 685078) (- 0 1050179)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 685078) (- 0 1050190)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 685078) (- 0 1050202)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@3)) 1))) (and (=> (= (ControlFlow 0 685078) (- 0 1050220)) (not (not (= (|$addr#$signer| _$t0@@4) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t0@@4) 186537453))) (and (=> (= (ControlFlow 0 685078) (- 0 1050234)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3)) (and (=> (= (ControlFlow 0 685078) (- 0 1050243)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) (|$addr#$signer| _$t1@@3))) 5) (and (=> (= (ControlFlow 0 685078) (- 0 1050258)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@44)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@44) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@44)) 0))))
 :qid |Diemcvc5bpl.5473:15|
 :skolemid |164|
))) (=> (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@45)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@45) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@45)) 0))))
 :qid |Diemcvc5bpl.5473:15|
 :skolemid |164|
)) (and (=> (= (ControlFlow 0 685078) (- 0 1050305)) (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@46)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@46) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@46)) 1))))
 :qid |Diemcvc5bpl.5477:15|
 :skolemid |165|
))) (=> (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@47)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@47) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@47)) 1))))
 :qid |Diemcvc5bpl.5477:15|
 :skolemid |165|
)) (and (=> (= (ControlFlow 0 685078) (- 0 1050352)) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@48)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@48) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@48)) 3))))
 :qid |Diemcvc5bpl.5481:15|
 :skolemid |166|
))) (=> (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@49)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@49) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@49)) 3))))
 :qid |Diemcvc5bpl.5481:15|
 :skolemid |166|
)) (and (=> (= (ControlFlow 0 685078) (- 0 1050399)) (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@50)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@50) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@50)) 4))))
 :qid |Diemcvc5bpl.5485:15|
 :skolemid |167|
))) (=> (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@51)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@51) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@51)) 4))))
 :qid |Diemcvc5bpl.5485:15|
 :skolemid |167|
)) (and (=> (= (ControlFlow 0 685078) (- 0 1050446)) (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@52)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@52) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@52)) 2))))
 :qid |Diemcvc5bpl.5489:15|
 :skolemid |168|
))) (=> (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@53)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@53)) 2))))
 :qid |Diemcvc5bpl.5489:15|
 :skolemid |168|
)) (=> (= (ControlFlow 0 685078) (- 0 1050493)) (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@3) addr@@54)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@54)) 6))))
 :qid |Diemcvc5bpl.5493:15|
 :skolemid |169|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@3  (=> (and (and (not |$temp_0'bool'@0@@3|) (= $1_Roles_RoleId_$memory@1@@4 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@1@@4) (= (ControlFlow 0 684618) 685078))) anon7_correct@@1)))
(let ((anon11_Then_correct@@3  (=> (and (and |$temp_0'bool'@0@@3| (= $1_Roles_RoleId_$memory@0@@4 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3) |$temp_0'$1_Roles_RoleId'@0@@3|)))) (and (= $1_Roles_RoleId_$memory@2@@3 $1_Roles_RoleId_$memory@0@@4) (= (ControlFlow 0 685092) 685078))) anon7_correct@@1)))
(let ((anon10_Else_correct@@2  (=> (not $t9@@3) (and (=> (= (ControlFlow 0 684604) 685092) anon11_Then_correct@@3) (=> (= (ControlFlow 0 684604) 684618) anon11_Else_correct@@3)))))
(let ((anon9_Else_correct@@1  (=> (not $t5@@4) (=> (and (|$IsValid'u64'| 5) (= $t8@@1 (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 684598) (- 0 1049985)) (=> (= 5 0) (= $t8@@1 173345816))) (=> (=> (= 5 0) (= $t8@@1 173345816)) (and (=> (= (ControlFlow 0 684598) (- 0 1050001)) (=> (= 5 1) (= $t8@@1 186537453))) (=> (=> (= 5 1) (= $t8@@1 186537453)) (and (=> (= (ControlFlow 0 684598) (- 0 1050017)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3)) (=> (= $t9@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@3))) (and (=> (= (ControlFlow 0 684598) 685120) anon10_Then_correct@@2) (=> (= (ControlFlow 0 684598) 684604) anon10_Else_correct@@2)))))))))))))
(let ((anon0$1_correct@@4  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@4)) (|$IsValid'address'| (|$addr#$signer| _$t1@@3))) (=> (and (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |Diemcvc5bpl.5294:20|
 :skolemid |163|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@6))
)) (= $t2@@3 (|$addr#$signer| _$t0@@4))) (and (= $t3@@3 (|$addr#$signer| _$t0@@4)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@4 (|$addr#$signer| _$t1@@3)))) (and (and (= _$t0@@4 _$t0@@4) (= _$t1@@3 _$t1@@3)) (and (= $t4@@3 (|$addr#$signer| _$t0@@4)) (= $t5@@4  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@3)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@3)) 1))) (not (= (|$addr#$signer| _$t0@@4) 186537453))))))) (and (=> (= (ControlFlow 0 684520) 685424) anon9_Then_correct@@1) (=> (= (ControlFlow 0 684520) 684598) anon9_Else_correct@@1))))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_274039| stream@@5) 0) (forall ((v@@43 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@5) v@@43) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 684378) 684520)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 1049714) 684378) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@4 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun _$t1@@4 () T@$signer)
(declare-fun $t3@@4 () Int)
(declare-fun $t6@@4 () Int)
(declare-fun $t9@@4 () Bool)
(declare-fun $t5@@5 () Bool)
(declare-fun $t4@@4 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@4 () T@$Memory_305770)
(declare-fun |$temp_0'bool'@0@@4| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@5 () T@$Memory_305770)
(declare-fun $1_Roles_RoleId_$memory@0@@5 () T@$Memory_305770)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@4| () T@$1_Roles_RoleId)
(declare-fun $t8@@2 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@5 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_operator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1050766) (let ((L2_correct@@4  (and (=> (= (ControlFlow 0 686573) (- 0 1051625)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))) (=> (= (ControlFlow 0 686573) (- 0 1051701)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) (= 5 $t6@@4)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@4))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4))))))))
(let ((anon10_Then_correct@@3  (=> $t9@@4 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)) (= 6 $t6@@4)) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 686341) 686573))) L2_correct@@4))))
(let ((anon9_Then_correct@@2  (=> (and (and $t5@@5 (or (or (or (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@4)) (= 5 $t6@@4))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@4)) 0)) (= 3 $t6@@4))) (and (not (= (|$addr#$signer| _$t0@@5) 173345816)) (= 2 $t6@@4)))) (and (= $t6@@4 $t6@@4) (= (ControlFlow 0 686665) 686573))) L2_correct@@4)))
(let ((anon7_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4)) (and (=> (= (ControlFlow 0 686299) (- 0 1051217)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4))) (and (=> (= (ControlFlow 0 686299) (- 0 1051229)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@4)) 0))) (and (=> (= (ControlFlow 0 686299) (- 0 1051247)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 686299) (- 0 1051261)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 686299) (- 0 1051272)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4))) (and (=> (= (ControlFlow 0 686299) (- 0 1051284)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@4)) 0))) (and (=> (= (ControlFlow 0 686299) (- 0 1051302)) (not (not (= (|$addr#$signer| _$t0@@5) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@5) 173345816))) (and (=> (= (ControlFlow 0 686299) (- 0 1051316)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4)) (and (=> (= (ControlFlow 0 686299) (- 0 1051325)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) (|$addr#$signer| _$t1@@4))) 4) (and (=> (= (ControlFlow 0 686299) (- 0 1051340)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@55)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@55)) 0))))
 :qid |Diemcvc5bpl.5731:15|
 :skolemid |171|
))) (=> (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@56)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@56)) 0))))
 :qid |Diemcvc5bpl.5731:15|
 :skolemid |171|
)) (and (=> (= (ControlFlow 0 686299) (- 0 1051387)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@57)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@57) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@57)) 1))))
 :qid |Diemcvc5bpl.5735:15|
 :skolemid |172|
))) (=> (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@58)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@58) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@58)) 1))))
 :qid |Diemcvc5bpl.5735:15|
 :skolemid |172|
)) (and (=> (= (ControlFlow 0 686299) (- 0 1051434)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@59)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@59) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@59)) 3))))
 :qid |Diemcvc5bpl.5739:15|
 :skolemid |173|
))) (=> (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@60)) 3)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@60) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@60)) 3))))
 :qid |Diemcvc5bpl.5739:15|
 :skolemid |173|
)) (and (=> (= (ControlFlow 0 686299) (- 0 1051481)) (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@61)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@61)) 2))))
 :qid |Diemcvc5bpl.5743:15|
 :skolemid |174|
))) (=> (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@62)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@62)) 2))))
 :qid |Diemcvc5bpl.5743:15|
 :skolemid |174|
)) (and (=> (= (ControlFlow 0 686299) (- 0 1051528)) (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@63)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@63)) 5))))
 :qid |Diemcvc5bpl.5747:15|
 :skolemid |175|
))) (=> (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@64)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@64)) 5))))
 :qid |Diemcvc5bpl.5747:15|
 :skolemid |175|
)) (=> (= (ControlFlow 0 686299) (- 0 1051575)) (forall ((addr@@65 Int) ) (!  (=> (|$IsValid'address'| addr@@65) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@4) addr@@65)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@65) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@65)) 6))))
 :qid |Diemcvc5bpl.5751:15|
 :skolemid |176|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@4  (=> (and (and (not |$temp_0'bool'@0@@4|) (= $1_Roles_RoleId_$memory@1@@5 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@1@@5) (= (ControlFlow 0 685839) 686299))) anon7_correct@@2)))
(let ((anon11_Then_correct@@4  (=> (and (and |$temp_0'bool'@0@@4| (= $1_Roles_RoleId_$memory@0@@5 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4) |$temp_0'$1_Roles_RoleId'@0@@4|)))) (and (= $1_Roles_RoleId_$memory@2@@4 $1_Roles_RoleId_$memory@0@@5) (= (ControlFlow 0 686313) 686299))) anon7_correct@@2)))
(let ((anon10_Else_correct@@3  (=> (not $t9@@4) (and (=> (= (ControlFlow 0 685825) 686313) anon11_Then_correct@@4) (=> (= (ControlFlow 0 685825) 685839) anon11_Else_correct@@4)))))
(let ((anon9_Else_correct@@2  (=> (not $t5@@5) (=> (and (|$IsValid'u64'| 4) (= $t8@@2 (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 685819) (- 0 1051067)) (=> (= 4 0) (= $t8@@2 173345816))) (=> (=> (= 4 0) (= $t8@@2 173345816)) (and (=> (= (ControlFlow 0 685819) (- 0 1051083)) (=> (= 4 1) (= $t8@@2 186537453))) (=> (=> (= 4 1) (= $t8@@2 186537453)) (and (=> (= (ControlFlow 0 685819) (- 0 1051099)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4)) (=> (= $t9@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@4))) (and (=> (= (ControlFlow 0 685819) 686341) anon10_Then_correct@@3) (=> (= (ControlFlow 0 685819) 685825) anon10_Else_correct@@3)))))))))))))
(let ((anon0$1_correct@@5  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (|$IsValid'address'| (|$addr#$signer| _$t1@@4))) (=> (and (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@7)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@7))
 :qid |Diemcvc5bpl.5552:20|
 :skolemid |170|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@7))
)) (= $t2@@4 (|$addr#$signer| _$t0@@5))) (and (= $t3@@4 (|$addr#$signer| _$t0@@5)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@5 (|$addr#$signer| _$t1@@4)))) (and (and (= _$t0@@5 _$t0@@5) (= _$t1@@4 _$t1@@4)) (and (= $t4@@4 (|$addr#$signer| _$t0@@5)) (= $t5@@5  (or (or (or (not (= (|$addr#$signer| _$t0@@5) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@4))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@4)) 0))) (not (= (|$addr#$signer| _$t0@@5) 173345816))))))) (and (=> (= (ControlFlow 0 685741) 686665) anon9_Then_correct@@2) (=> (= (ControlFlow 0 685741) 685819) anon9_Else_correct@@2))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_274039| stream@@6) 0) (forall ((v@@44 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@6) v@@44) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 685587) 685741)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 1050766) 685587) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t2@@5 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@5 () T@$signer)
(declare-fun $t3@@5 () Int)
(declare-fun $t6@@5 () Int)
(declare-fun $t9@@5 () Bool)
(declare-fun $t5@@6 () Bool)
(declare-fun $t4@@5 () Int)
(declare-fun $1_Roles_RoleId_$memory@2@@5 () T@$Memory_305770)
(declare-fun |$temp_0'bool'@0@@5| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1@@6 () T@$Memory_305770)
(declare-fun $1_Roles_RoleId_$memory@0@@6 () T@$Memory_305770)
(declare-fun |$temp_0'$1_Roles_RoleId'@0@@5| () T@$1_Roles_RoleId)
(declare-fun $t8@@3 () Int)
(declare-fun $1_Roles_RoleId_$modifies@@6 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $1_Roles_new_validator_role$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1051848) (let ((L2_correct@@5  (and (=> (= (ControlFlow 0 687816) (- 0 1052707)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))) (=> (= (ControlFlow 0 687816) (- 0 1052783)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) (= 5 $t6@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@5))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5))))))))
(let ((anon10_Then_correct@@4  (=> $t9@@5 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)) (= 6 $t6@@5)) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 687584) 687816))) L2_correct@@5))))
(let ((anon9_Then_correct@@3  (=> (and (and $t5@@6 (or (or (or (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@5)) (= 5 $t6@@5))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@5)) 0)) (= 3 $t6@@5))) (and (not (= (|$addr#$signer| _$t0@@6) 173345816)) (= 2 $t6@@5)))) (and (= $t6@@5 $t6@@5) (= (ControlFlow 0 687908) 687816))) L2_correct@@5)))
(let ((anon7_correct@@3  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3)) (and (=> (= (ControlFlow 0 687542) (- 0 1052299)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5))) (and (=> (= (ControlFlow 0 687542) (- 0 1052311)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@5)) 0))) (and (=> (= (ControlFlow 0 687542) (- 0 1052329)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 687542) (- 0 1052343)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 687542) (- 0 1052354)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5))) (and (=> (= (ControlFlow 0 687542) (- 0 1052366)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t3@@5)) 0))) (and (=> (= (ControlFlow 0 687542) (- 0 1052384)) (not (not (= (|$addr#$signer| _$t0@@6) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@6) 173345816))) (and (=> (= (ControlFlow 0 687542) (- 0 1052398)) (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5)) (and (=> (= (ControlFlow 0 687542) (- 0 1052407)) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3)) (=> (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) (|$addr#$signer| _$t1@@5))) 3) (and (=> (= (ControlFlow 0 687542) (- 0 1052422)) (forall ((addr@@66 Int) ) (!  (=> (|$IsValid'address'| addr@@66) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@66)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@66)) 0))))
 :qid |Diemcvc5bpl.5989:15|
 :skolemid |178|
))) (=> (forall ((addr@@67 Int) ) (!  (=> (|$IsValid'address'| addr@@67) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@67)) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@67)) 0))))
 :qid |Diemcvc5bpl.5989:15|
 :skolemid |178|
)) (and (=> (= (ControlFlow 0 687542) (- 0 1052469)) (forall ((addr@@68 Int) ) (!  (=> (|$IsValid'address'| addr@@68) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@68)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@68)) 1))))
 :qid |Diemcvc5bpl.5993:15|
 :skolemid |179|
))) (=> (forall ((addr@@69 Int) ) (!  (=> (|$IsValid'address'| addr@@69) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@69)) 1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@69)) 1))))
 :qid |Diemcvc5bpl.5993:15|
 :skolemid |179|
)) (and (=> (= (ControlFlow 0 687542) (- 0 1052516)) (forall ((addr@@70 Int) ) (!  (=> (|$IsValid'address'| addr@@70) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@70)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@70)) 4))))
 :qid |Diemcvc5bpl.5997:15|
 :skolemid |180|
))) (=> (forall ((addr@@71 Int) ) (!  (=> (|$IsValid'address'| addr@@71) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@71)) 4)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@71)) 4))))
 :qid |Diemcvc5bpl.5997:15|
 :skolemid |180|
)) (and (=> (= (ControlFlow 0 687542) (- 0 1052563)) (forall ((addr@@72 Int) ) (!  (=> (|$IsValid'address'| addr@@72) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@72)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@72)) 2))))
 :qid |Diemcvc5bpl.6001:15|
 :skolemid |181|
))) (=> (forall ((addr@@73 Int) ) (!  (=> (|$IsValid'address'| addr@@73) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@73)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@73)) 2))))
 :qid |Diemcvc5bpl.6001:15|
 :skolemid |181|
)) (and (=> (= (ControlFlow 0 687542) (- 0 1052610)) (forall ((addr@@74 Int) ) (!  (=> (|$IsValid'address'| addr@@74) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@74)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@74)) 5))))
 :qid |Diemcvc5bpl.6005:15|
 :skolemid |182|
))) (=> (forall ((addr@@75 Int) ) (!  (=> (|$IsValid'address'| addr@@75) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@75)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@75)) 5))))
 :qid |Diemcvc5bpl.6005:15|
 :skolemid |182|
)) (=> (= (ControlFlow 0 687542) (- 0 1052657)) (forall ((addr@@76 Int) ) (!  (=> (|$IsValid'address'| addr@@76) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory@2@@5) addr@@76)) 6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr@@76)) 6))))
 :qid |Diemcvc5bpl.6009:15|
 :skolemid |183|
))))))))))))))))))))))))))))))))))
(let ((anon11_Else_correct@@5  (=> (and (and (not |$temp_0'bool'@0@@5|) (= $1_Roles_RoleId_$memory@1@@6 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) false) (|contents#$Memory_305770| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@1@@6) (= (ControlFlow 0 687082) 687542))) anon7_correct@@3)))
(let ((anon11_Then_correct@@5  (=> (and (and |$temp_0'bool'@0@@5| (= $1_Roles_RoleId_$memory@0@@6 ($Memory_305770 (|Store__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5) |$temp_0'$1_Roles_RoleId'@0@@5|)))) (and (= $1_Roles_RoleId_$memory@2@@5 $1_Roles_RoleId_$memory@0@@6) (= (ControlFlow 0 687556) 687542))) anon7_correct@@3)))
(let ((anon10_Else_correct@@4  (=> (not $t9@@5) (and (=> (= (ControlFlow 0 687068) 687556) anon11_Then_correct@@5) (=> (= (ControlFlow 0 687068) 687082) anon11_Else_correct@@5)))))
(let ((anon9_Else_correct@@3  (=> (not $t5@@6) (=> (and (|$IsValid'u64'| 3) (= $t8@@3 (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 687062) (- 0 1052149)) (=> (= 3 0) (= $t8@@3 173345816))) (=> (=> (= 3 0) (= $t8@@3 173345816)) (and (=> (= (ControlFlow 0 687062) (- 0 1052165)) (=> (= 3 1) (= $t8@@3 186537453))) (=> (=> (= 3 1) (= $t8@@3 186537453)) (and (=> (= (ControlFlow 0 687062) (- 0 1052181)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5))) (=> (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5)) (=> (= $t9@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1@@5))) (and (=> (= (ControlFlow 0 687062) 687584) anon10_Then_correct@@4) (=> (= (ControlFlow 0 687062) 687068) anon10_Else_correct@@4)))))))))))))
(let ((anon0$1_correct@@6  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'address'| (|$addr#$signer| _$t1@@5))) (=> (and (and (and (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |Diemcvc5bpl.5810:20|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@8))
)) (= $t2@@5 (|$addr#$signer| _$t0@@6))) (and (= $t3@@5 (|$addr#$signer| _$t0@@6)) (|Select__T@[Int]Bool_| $1_Roles_RoleId_$modifies@@6 (|$addr#$signer| _$t1@@5)))) (and (and (= _$t0@@6 _$t0@@6) (= _$t1@@5 _$t1@@5)) (and (= $t4@@5 (|$addr#$signer| _$t0@@6)) (= $t5@@6  (or (or (or (not (= (|$addr#$signer| _$t0@@6) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@5))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t4@@5)) 0))) (not (= (|$addr#$signer| _$t0@@6) 173345816))))))) (and (=> (= (ControlFlow 0 686984) 687908) anon9_Then_correct@@3) (=> (= (ControlFlow 0 686984) 687062) anon9_Else_correct@@3))))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_274039| stream@@7) 0) (forall ((v@@45 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@7) v@@45) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 686830) 686984)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 1051848) 686830) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@7 () T@$signer)
(declare-fun $t1@@0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_320562)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory| () T@$Memory_321847)
(declare-fun $t2@@6 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t5@@7 () Bool)
(declare-fun $t4@@6 () Int)
(declare-fun $t3@@6 () Bool)
(declare-fun |Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| () T@$Memory_320562)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| () T@$Memory_321847)
(declare-fun $1_DiemConfig_Configuration_$memory () T@$Memory_320952)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t4@1 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t10@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t9@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t4@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t6@0 () Bool)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t5@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t3@0 () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_321847)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| () T@$Memory_320562)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t8@1 () T@$1_RegisteredCurrencies_RegisteredCurrencies)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2| () Bool)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_321847)
(declare-fun |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_321847)
(declare-fun |Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Int) |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1| () Bool)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| () T@$Memory_320562)
(declare-fun |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| () T@$Memory_320562)
(declare-fun |Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| Int |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1| () |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|)
(declare-fun |inline$$1_Vector_empty'vec'u8''$0$v@1| () (Seq (Seq Int)))
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t1@0 () Int)
(declare-fun inline$$1_RegisteredCurrencies_initialize$0$$t2@0 () Int)
(declare-fun $t6@@6 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory| () T@$Memory_320481)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory| () T@$Memory_320643)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory| () T@$Memory_320724)
(declare-fun |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory| () T@$Memory_320805)
(push 1)
(set-info :boogie-vc-id $1_Diem_initialize$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1052929) (let ((L2_correct@@6  (and (=> (= (ControlFlow 0 690440) (- 0 1054504)) (or (or (or (or (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (or (or (or (or (or (or (or (or (or (or (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))) (=> (= (ControlFlow 0 690440) (- 0 1054610)) (or (or (or (or (or (or (or (or (or (or (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0)) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t4@0))) (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)) (= 5 $t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)) 0)) (= 3 $t4@0))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t4@0))) (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)) (= 5 $t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)) 0)) (= 3 $t4@0))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t4@0))))))))
(let ((anon10_Then_correct@@5  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t4@0 $abort_code@1@@0) (= (ControlFlow 0 690124) 690440))) L2_correct@@6)))
(let ((anon9_Then_correct@@4  (=> $t5@@7 (=> (and (and (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 $t4@@6)) (= $t4@@6 $t4@@6)) (and (= $t4@0 $t4@@6) (= (ControlFlow 0 690470) 690440))) L2_correct@@6))))
(let ((anon8_Then_correct  (=> $t3@@6 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 $t4@@6)) (= $t4@@6 $t4@@6)) (and (= $t4@0 $t4@@6) (= (ControlFlow 0 690496) 690440))) L2_correct@@6))))
(let ((anon10_Else_correct@@5  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 690110) (- 0 1054298)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 690110) (- 0 1054308)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 690110) (- 0 1054322)) (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))) (=> (not (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (and (=> (= (ControlFlow 0 690110) (- 0 1054332)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0))) (and (=> (= (ControlFlow 0 690110) (- 0 1054344)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t1@@0)) 0))) (and (=> (= (ControlFlow 0 690110) (- 0 1054362)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 690110) (- 0 1054376)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816)) (and (=> (= (ControlFlow 0 690110) (- 0 1054384)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7))) (and (=> (= (ControlFlow 0 690110) (- 0 1054395)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6))) (and (=> (= (ControlFlow 0 690110) (- 0 1054407)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)) 0)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $t2@@6)) 0))) (and (=> (= (ControlFlow 0 690110) (- 0 1054425)) (not (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (=> (not (not (= (|$addr#$signer| _$t0@@7) 173345816))) (and (=> (= (ControlFlow 0 690110) (- 0 1054439)) (= (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@77 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr@@77))))) 0)) (=> (= (seq.len (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (let ((addr@@78 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr@@78))))) 0) (and (=> (= (ControlFlow 0 690110) (- 0 1054451)) (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) (|$addr#$signer| _$t0@@7))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) (|$addr#$signer| _$t0@@7)) (and (=> (= (ControlFlow 0 690110) (- 0 1054460)) (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) 173345816) (and (=> (= (ControlFlow 0 690110) (- 0 1054466)) (= (let ((addr@@79 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr@@79))) ($1_RegisteredCurrencies_RegisteredCurrencies (as seq.empty (Seq (Seq Int)))))) (=> (= (let ((addr@@80 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3|) addr@@80))) ($1_RegisteredCurrencies_RegisteredCurrencies (as seq.empty (Seq (Seq Int))))) (=> (= (ControlFlow 0 690110) (- 0 1054478)) (= (|Select__T@[Int]Bool_| (|domain#$Memory_320952| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_320952| $1_DiemConfig_Configuration_$memory) 173345816))))))))))))))))))))))))))))))))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$L2_correct  (=> (and (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)) (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@1))) (and (=> (= (ControlFlow 0 689770) 690124) anon10_Then_correct@@5) (=> (= (ControlFlow 0 689770) 690110) anon10_Else_correct@@5)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon18_Then_correct  (=> inline$$1_RegisteredCurrencies_initialize$0$$t10@0 (=> (and (and (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0)) (= 5 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0)) 0)) (= 3 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (= inline$$1_RegisteredCurrencies_initialize$0$$t4@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t4@1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0) (= (ControlFlow 0 689764) 689770))) inline$$1_RegisteredCurrencies_initialize$0$L2_correct))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon16_Then_correct  (=> inline$$1_RegisteredCurrencies_initialize$0$$t6@0 (=> (and (and (or (or (or (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0)) (= 5 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0)) 0)) (= 3 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (and (not (= (|$addr#$signer| _$t0@@7) 173345816)) (= 2 inline$$1_RegisteredCurrencies_initialize$0$$t4@0))) (= inline$$1_RegisteredCurrencies_initialize$0$$t4@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t4@1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0) (= (ControlFlow 0 689876) 689770))) inline$$1_RegisteredCurrencies_initialize$0$L2_correct))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon15_Then_correct  (=> inline$$1_RegisteredCurrencies_initialize$0$$t3@0 (=> (and (and (and (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (= 1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (= inline$$1_RegisteredCurrencies_initialize$0$$t4@0 inline$$1_RegisteredCurrencies_initialize$0$$t4@0)) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t4@1 inline$$1_RegisteredCurrencies_initialize$0$$t4@0) (= (ControlFlow 0 689902) 689770))) inline$$1_RegisteredCurrencies_initialize$0$L2_correct))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon14_correct  (=> (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) (|$addr#$signer| _$t0@@7)) (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) 173345816)) (and (= (let ((addr@@81 173345816))
(|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) addr@@81))) inline$$1_RegisteredCurrencies_initialize$0$$t8@1) (= (|Select__T@[Int]Bool_| (|domain#$Memory_320952| $1_DiemConfig_Configuration_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_320952| $1_DiemConfig_Configuration_$memory) 173345816)))) (and (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@3| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2|)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0)))) (and (=> (= (ControlFlow 0 689652) 690124) anon10_Then_correct@@5) (=> (= (ControlFlow 0 689652) 690110) anon10_Else_correct@@5)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon20_Else_correct  (=> (and (and (not |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2|) (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_321847 (|Store__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|) (= (ControlFlow 0 689618) 689652))) inline$$1_RegisteredCurrencies_initialize$0$anon14_correct)))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon20_Then_correct  (=> (and (and |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@2| (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_321847 (|Store__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''@1|)))) (and (= |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|) (= (ControlFlow 0 689664) 689652))) inline$$1_RegisteredCurrencies_initialize$0$anon14_correct)))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon19_Else_correct  (=> (not |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1|) (=> (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1| ($Memory_320562 (|Store__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 false) (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|))) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@1|)) (and (=> (= (ControlFlow 0 689604) 689664) inline$$1_RegisteredCurrencies_initialize$0$anon20_Then_correct) (=> (= (ControlFlow 0 689604) 689618) inline$$1_RegisteredCurrencies_initialize$0$anon20_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon19_Then_correct  (=> |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'bool'@1| (=> (and (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0| ($Memory_320562 (|Store__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 true) (|Store__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816 |inline$$1_RegisteredCurrencies_initialize$0$$temp_0'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''@1|))) (= |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@2| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory@0|)) (and (=> (= (ControlFlow 0 689676) 689664) inline$$1_RegisteredCurrencies_initialize$0$anon20_Then_correct) (=> (= (ControlFlow 0 689676) 689618) inline$$1_RegisteredCurrencies_initialize$0$anon20_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon18_Else_correct  (=> (not inline$$1_RegisteredCurrencies_initialize$0$$t10@0) (and (=> (= (ControlFlow 0 689592) 689676) inline$$1_RegisteredCurrencies_initialize$0$anon19_Then_correct) (=> (= (ControlFlow 0 689592) 689604) inline$$1_RegisteredCurrencies_initialize$0$anon19_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon17_Else_correct  (=> (and (and (not false) (= inline$$1_RegisteredCurrencies_initialize$0$$t8@1 ($1_RegisteredCurrencies_RegisteredCurrencies |inline$$1_Vector_empty'vec'u8''$0$v@1|))) (and (= inline$$1_RegisteredCurrencies_initialize$0$$t9@0 (|$addr#$signer| _$t0@@7)) (= inline$$1_RegisteredCurrencies_initialize$0$$t10@0  (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) (|$addr#$signer| _$t0@@7))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t9@0)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816)))))) (and (=> (= (ControlFlow 0 689584) 689764) inline$$1_RegisteredCurrencies_initialize$0$anon18_Then_correct) (=> (= (ControlFlow 0 689584) 689592) inline$$1_RegisteredCurrencies_initialize$0$anon18_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'vec'u8''$0$v@1| (as seq.empty (Seq (Seq Int)))) (and (=> (= (ControlFlow 0 689496) 689784) inline$$1_RegisteredCurrencies_initialize$0$anon17_Then_correct) (=> (= (ControlFlow 0 689496) 689584) inline$$1_RegisteredCurrencies_initialize$0$anon17_Else_correct)))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon16_Else_correct  (=> (and (not inline$$1_RegisteredCurrencies_initialize$0$$t6@0) (= (ControlFlow 0 689502) 689496)) |inline$$1_Vector_empty'vec'u8''$0$anon0_correct|)))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon15_Else_correct  (=> (not inline$$1_RegisteredCurrencies_initialize$0$$t3@0) (=> (and (= inline$$1_RegisteredCurrencies_initialize$0$$t5@0 (|$addr#$signer| _$t0@@7)) (= inline$$1_RegisteredCurrencies_initialize$0$$t6@0  (or (or (or (not (= (|$addr#$signer| _$t0@@7) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) inline$$1_RegisteredCurrencies_initialize$0$$t5@0)) 0))) (not (= (|$addr#$signer| _$t0@@7) 173345816))))) (and (=> (= (ControlFlow 0 689468) 689876) inline$$1_RegisteredCurrencies_initialize$0$anon16_Then_correct) (=> (= (ControlFlow 0 689468) 689502) inline$$1_RegisteredCurrencies_initialize$0$anon16_Else_correct))))))
(let ((inline$$1_RegisteredCurrencies_initialize$0$anon0_correct  (=> (and (and (= inline$$1_RegisteredCurrencies_initialize$0$$t1@0 (|$addr#$signer| _$t0@@7)) (= inline$$1_RegisteredCurrencies_initialize$0$$t2@0 (|$addr#$signer| _$t0@@7))) (and (= _$t0@@7 _$t0@@7) (= inline$$1_RegisteredCurrencies_initialize$0$$t3@0  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 689396) 689902) inline$$1_RegisteredCurrencies_initialize$0$anon15_Then_correct) (=> (= (ControlFlow 0 689396) 689468) inline$$1_RegisteredCurrencies_initialize$0$anon15_Else_correct)))))
(let ((anon9_Else_correct@@4  (=> (and (and (not $t5@@7) (= $t6@@6 (|$addr#$signer| _$t0@@7))) (and (= $t7@@0 (|$addr#$signer| _$t0@@7)) (= (ControlFlow 0 689906) 689396))) inline$$1_RegisteredCurrencies_initialize$0$anon0_correct)))
(let ((anon8_Else_correct  (=> (and (not $t3@@6) (= $t5@@7  (not (= (|$addr#$signer| _$t0@@7) 173345816)))) (and (=> (= (ControlFlow 0 688645) 690470) anon9_Then_correct@@4) (=> (= (ControlFlow 0 688645) 689906) anon9_Else_correct@@4)))))
(let ((anon0$1_correct@@7  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_320952| $1_DiemConfig_Configuration_$memory) 173345816))) (=> (and (and (and (and (and (and (and (forall ((config_address Int) ) (!  (=> (|$IsValid'address'| config_address) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_320481| |$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'_$memory|) config_address) (= config_address 173345816)))
 :qid |Diemcvc5bpl.8232:24|
 :skolemid |236|
)) (forall ((config_address@@0 Int) ) (!  (=> (|$IsValid'address'| config_address@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) config_address@@0) (= config_address@@0 173345816)))
 :qid |Diemcvc5bpl.8232:243|
 :skolemid |237|
))) (forall ((config_address@@1 Int) ) (!  (=> (|$IsValid'address'| config_address@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_320643| |$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'_$memory|) config_address@@1) (= config_address@@1 173345816)))
 :qid |Diemcvc5bpl.8232:483|
 :skolemid |238|
))) (forall ((config_address@@2 Int) ) (!  (=> (|$IsValid'address'| config_address@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_320724| |$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'_$memory|) config_address@@2) (= config_address@@2 173345816)))
 :qid |Diemcvc5bpl.8232:745|
 :skolemid |239|
))) (forall ((config_address@@3 Int) ) (!  (=> (|$IsValid'address'| config_address@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_320805| |$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'_$memory|) config_address@@3) (= config_address@@3 173345816)))
 :qid |Diemcvc5bpl.8232:969|
 :skolemid |240|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) 173345816))) (and (and (and (forall ((mint_cap_owner@@8 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@8) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@8)) 1))))
 :qid |Diemcvc5bpl.8240:22|
 :skolemid |241|
)) (forall ((mint_cap_owner@@9 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@9)) 1))))
 :qid |Diemcvc5bpl.8240:269|
 :skolemid |242|
))) (forall ((mint_cap_owner@@10 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) mint_cap_owner@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) mint_cap_owner@@10)) 1))))
 :qid |Diemcvc5bpl.8240:517|
 :skolemid |243|
))) (and (and (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@17) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@17)) 1))))
 :qid |Diemcvc5bpl.8244:22|
 :skolemid |244|
)) (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@18)) 1))))
 :qid |Diemcvc5bpl.8244:232|
 :skolemid |245|
))) (forall ((addr1@@19 Int) ) (!  (=> (|$IsValid'address'| addr1@@19) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr1@@19) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@19)) 1))))
 :qid |Diemcvc5bpl.8244:443|
 :skolemid |246|
))))) (and (and (and (and (forall ((addr1@@20 Int) ) (!  (=> (|$IsValid'address'| addr1@@20) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@20) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@20)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@20)) 2))))
 :qid |Diemcvc5bpl.8248:22|
 :skolemid |247|
)) (forall ((addr1@@21 Int) ) (!  (=> (|$IsValid'address'| addr1@@21) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@21) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@21)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@21)) 2))))
 :qid |Diemcvc5bpl.8248:293|
 :skolemid |248|
))) (forall ((addr1@@22 Int) ) (!  (=> (|$IsValid'address'| addr1@@22) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@22)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@22)) 2))))
 :qid |Diemcvc5bpl.8248:565|
 :skolemid |249|
))) (|$IsValid'address'| (|$addr#$signer| _$t0@@7))) (and (and (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@9)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@9))
 :qid |Diemcvc5bpl.8254:20|
 :skolemid |250|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@10)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@10))
 :qid |Diemcvc5bpl.8258:20|
 :skolemid |251|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) $a_0@@10))
))) (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@11))
 :qid |Diemcvc5bpl.8262:20|
 :skolemid |252|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_320562| |$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@12)))
(|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| $rsc@@12))
 :qid |Diemcvc5bpl.8266:20|
 :skolemid |253|
 :pattern ( (|Select__T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_| (|contents#$Memory_321847| |$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'_$memory|) $a_0@@12))
)))) (and (and (= $t1@@0 (|$addr#$signer| _$t0@@7)) (= $t2@@6 (|$addr#$signer| _$t0@@7))) (and (= _$t0@@7 _$t0@@7) (= $t3@@6  (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_305276| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))))))))) (and (=> (= (ControlFlow 0 688623) 690496) anon8_Then_correct) (=> (= (ControlFlow 0 688623) 688645) anon8_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@7  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@9 T@$1_Event_EventHandle) ) (! (let ((stream@@8 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@9)))
 (and (= (|l#Multiset_274039| stream@@8) 0) (forall ((v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@8) v@@46) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 688071) 688623)) anon0$1_correct@@7)))
(let ((anon0_correct@@7  (=> (= (ControlFlow 0 1052929) 688071) inline$$InitEventStore$0$anon0_correct@@7)))
anon0_correct@@7)))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@8 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t1@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_326486)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_Diem_value$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1054790) (let ((anon0$1_correct@@8  (=> (and (and (|$IsValid'$1_Diem_Diem'#0''| _$t0@@8) (= _$t0@@8 _$t0@@8)) (and (= $t1@0 (|$value#$1_Diem_Diem'#0'| _$t0@@8)) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 691090) (- 0 1054881)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691090) (- 0 1054902)) (forall ((addr@@82 Int) ) (!  (=> (|$IsValid'address'| addr@@82) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@82)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@82))))
 :qid |Diemcvc5bpl.8635:15|
 :skolemid |254|
))) (=> (forall ((addr@@83 Int) ) (!  (=> (|$IsValid'address'| addr@@83) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@83)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@83))))
 :qid |Diemcvc5bpl.8635:15|
 :skolemid |254|
)) (and (=> (= (ControlFlow 0 691090) (- 0 1054931)) (forall ((addr@@84 Int) ) (!  (=> (|$IsValid'address'| addr@@84) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@84) (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@84)))
 :qid |Diemcvc5bpl.8640:15|
 :skolemid |255|
))) (=> (forall ((addr@@85 Int) ) (!  (=> (|$IsValid'address'| addr@@85) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@85) (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@85)))
 :qid |Diemcvc5bpl.8640:15|
 :skolemid |255|
)) (and (=> (= (ControlFlow 0 691090) (- 0 1054956)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691090) (- 0 1054977)) (forall ((addr@@86 Int) ) (!  (=> (|$IsValid'address'| addr@@86) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@86)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@86))))
 :qid |Diemcvc5bpl.8650:15|
 :skolemid |256|
))) (=> (forall ((addr@@87 Int) ) (!  (=> (|$IsValid'address'| addr@@87) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@87)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@87))))
 :qid |Diemcvc5bpl.8650:15|
 :skolemid |256|
)) (and (=> (= (ControlFlow 0 691090) (- 0 1055006)) (forall ((addr@@88 Int) ) (!  (=> (|$IsValid'address'| addr@@88) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@88) (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@88)))
 :qid |Diemcvc5bpl.8655:15|
 :skolemid |257|
))) (=> (forall ((addr@@89 Int) ) (!  (=> (|$IsValid'address'| addr@@89) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@89) (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@89)))
 :qid |Diemcvc5bpl.8655:15|
 :skolemid |257|
)) (and (=> (= (ControlFlow 0 691090) (- 0 1055031)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691090) (- 0 1055052)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691090) (- 0 1055073)) (forall ((addr@@90 Int) ) (!  (=> (|$IsValid'address'| addr@@90) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@90) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@90))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@90))))
 :qid |Diemcvc5bpl.8670:15|
 :skolemid |258|
))) (=> (forall ((addr@@91 Int) ) (!  (=> (|$IsValid'address'| addr@@91) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@91) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@91))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@91))))
 :qid |Diemcvc5bpl.8670:15|
 :skolemid |258|
)) (and (=> (= (ControlFlow 0 691090) (- 0 1055109)) (forall ((addr@@92 Int) ) (!  (=> (|$IsValid'address'| addr@@92) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@92) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@92)))
 :qid |Diemcvc5bpl.8675:15|
 :skolemid |259|
))) (=> (forall ((addr@@93 Int) ) (!  (=> (|$IsValid'address'| addr@@93) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@93) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@93)))
 :qid |Diemcvc5bpl.8675:15|
 :skolemid |259|
)) (=> (= (ControlFlow 0 691090) (- 0 1055134)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))))))))))))))))))))))))
(let ((inline$$InitEventStore$0$anon0_correct@@8  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@10 T@$1_Event_EventHandle) ) (! (let ((stream@@9 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@10)))
 (and (= (|l#Multiset_274039| stream@@9) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@9) v@@47) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 690760) 691090)) anon0$1_correct@@8)))
(let ((anon0_correct@@8  (=> (= (ControlFlow 0 1054790) 690760) inline$$InitEventStore$0$anon0_correct@@8)))
anon0_correct@@8))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t0 () Bool)
(declare-fun $t1@@1 () Int)
(declare-fun $t4@0@@0 () (Seq Int))
(declare-fun $t3@1 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t3@@7 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $t3@0 () |T@$1_Diem_CurrencyInfo'#0'|)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_326248)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_326367)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(push 1)
(set-info :boogie-vc-id $1_Diem_currency_code$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1055162) (let ((L2_correct@@7  (and (=> (= (ControlFlow 0 691869) (- 0 1055937)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (=> (= (ControlFlow 0 691869) (- 0 1055942)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t1@0@@0)))))))
(let ((anon11_Then_correct@@6  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t1@0@@0 $abort_code@1@@1) (= (ControlFlow 0 691841) 691869))) L2_correct@@7)))
(let ((anon9_Then_correct@@5  (=> $t0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t1@@1)) (= $t1@@1 $t1@@1)) (and (= $t1@0@@0 $t1@@1) (= (ControlFlow 0 691947) 691869))) L2_correct@@7))))
(let ((anon11_Else_correct@@6  (=> (not $abort_flag@0@@1) (=> (and (= $t4@0@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| $t3@1)) (= $t4@0@@0 $t4@0@@0)) (and (=> (= (ControlFlow 0 691827) (- 0 1055631)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 691827) (- 0 1055641)) (= $t4@0@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (= $t4@0@@0 (|$currency_code#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 691827) (- 0 1055651)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691827) (- 0 1055672)) (forall ((addr@@94 Int) ) (!  (=> (|$IsValid'address'| addr@@94) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@94)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@94))))
 :qid |Diemcvc5bpl.8818:15|
 :skolemid |270|
))) (=> (forall ((addr@@95 Int) ) (!  (=> (|$IsValid'address'| addr@@95) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@95)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@95))))
 :qid |Diemcvc5bpl.8818:15|
 :skolemid |270|
)) (and (=> (= (ControlFlow 0 691827) (- 0 1055701)) (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@96) (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@96)))
 :qid |Diemcvc5bpl.8823:15|
 :skolemid |271|
))) (=> (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@97) (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@97)))
 :qid |Diemcvc5bpl.8823:15|
 :skolemid |271|
)) (and (=> (= (ControlFlow 0 691827) (- 0 1055726)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691827) (- 0 1055747)) (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@98)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@98))))
 :qid |Diemcvc5bpl.8833:15|
 :skolemid |272|
))) (=> (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@99)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@99))))
 :qid |Diemcvc5bpl.8833:15|
 :skolemid |272|
)) (and (=> (= (ControlFlow 0 691827) (- 0 1055776)) (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@100)))
 :qid |Diemcvc5bpl.8838:15|
 :skolemid |273|
))) (=> (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@101)))
 :qid |Diemcvc5bpl.8838:15|
 :skolemid |273|
)) (and (=> (= (ControlFlow 0 691827) (- 0 1055801)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691827) (- 0 1055822)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 691827) (- 0 1055843)) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@102))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@102))))
 :qid |Diemcvc5bpl.8853:15|
 :skolemid |274|
))) (=> (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@103))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@103))))
 :qid |Diemcvc5bpl.8853:15|
 :skolemid |274|
)) (and (=> (= (ControlFlow 0 691827) (- 0 1055879)) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@104)))
 :qid |Diemcvc5bpl.8858:15|
 :skolemid |275|
))) (=> (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@105)))
 :qid |Diemcvc5bpl.8858:15|
 :skolemid |275|
)) (=> (= (ControlFlow 0 691827) (- 0 1055904)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))))))))))))))))))))))))))))))
(let ((anon10_Then$1_correct  (=> (= $t3@1 $t3@@7) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 691921) 691841) anon11_Then_correct@@6) (=> (= (ControlFlow 0 691921) 691827) anon11_Else_correct@@6))))))
(let ((anon10_Then_correct@@6  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= (ControlFlow 0 691919) 691921)) anon10_Then$1_correct)))
(let ((anon10_Else_correct@@6  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (=> (and (and (= $t3@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= $t3@1 $t3@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 691505) 691841) anon11_Then_correct@@6) (=> (= (ControlFlow 0 691505) 691827) anon11_Else_correct@@6))))))
(let ((anon9_Else_correct@@5  (=> (and (not $t0) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 691491) 691919) anon10_Then_correct@@6) (=> (= (ControlFlow 0 691491) 691505) anon10_Else_correct@@6)))))
(let ((anon0$1_correct@@9  (=> (and (and (and (and (forall ((addr3 Int) ) (!  (=> (|$IsValid'address'| addr3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.8711:22|
 :skolemid |260|
)) (forall ((addr3@@0 Int) ) (!  (=> (|$IsValid'address'| addr3@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.8711:261|
 :skolemid |261|
))) (forall ((addr3@@1 Int) ) (!  (=> (|$IsValid'address'| addr3@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr3@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.8711:501|
 :skolemid |262|
))) (and (and (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@106) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8715:22|
 :skolemid |263|
)) (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@107) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8715:222|
 :skolemid |264|
))) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8715:423|
 :skolemid |265|
)))) (and (and (and (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@109) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8719:22|
 :skolemid |266|
)) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@110) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8719:227|
 :skolemid |267|
))) (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8719:433|
 :skolemid |268|
))) (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@13)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@13) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@13)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@13) 10000000000))))
 :qid |Diemcvc5bpl.8723:20|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@13))
)) (= $t0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 691477) 691947) anon9_Then_correct@@5) (=> (= (ControlFlow 0 691477) 691491) anon9_Else_correct@@5)))))
(let ((inline$$InitEventStore$0$anon0_correct@@9  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@11 T@$1_Event_EventHandle) ) (! (let ((stream@@10 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@11)))
 (and (= (|l#Multiset_274039| stream@@10) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@10) v@@48) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 691194) 691477)) anon0$1_correct@@9)))
(let ((anon0_correct@@9  (=> (= (ControlFlow 0 1055162) 691194) inline$$InitEventStore$0$anon0_correct@@9)))
anon0_correct@@9))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0@@1 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $t0@@0 () Bool)
(declare-fun $t1@@2 () Int)
(declare-fun $t4@0@@1 () (Seq Int))
(declare-fun $t3@1@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t3@@8 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $t3@0@@0 () |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun $abort_code@0@@2 () Int)
(push 1)
(set-info :boogie-vc-id $1_Diem_currency_code$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 1055967) (let ((L2_correct@@8  (and (=> (= (ControlFlow 0 692762) (- 0 1056742)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (= (ControlFlow 0 692762) (- 0 1056747)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t1@0@@1)))))))
(let ((anon11_Then_correct@@7  (=> (and (and $abort_flag@0@@2 (= $abort_code@1@@2 $abort_code@1@@2)) (and (= $t1@0@@1 $abort_code@1@@2) (= (ControlFlow 0 692734) 692762))) L2_correct@@8)))
(let ((anon9_Then_correct@@6  (=> $t0@@0 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $t1@@2)) (= $t1@@2 $t1@@2)) (and (= $t1@0@@1 $t1@@2) (= (ControlFlow 0 692840) 692762))) L2_correct@@8))))
(let ((anon11_Else_correct@@7  (=> (not $abort_flag@0@@2) (=> (and (= $t4@0@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $t3@1@@0)) (= $t4@0@@1 $t4@0@@1)) (and (=> (= (ControlFlow 0 692720) (- 0 1056436)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 692720) (- 0 1056446)) (= $t4@0@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (= $t4@0@@1 (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 692720) (- 0 1056456)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 692720) (- 0 1056477)) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@112)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@112))))
 :qid |Diemcvc5bpl.9022:15|
 :skolemid |286|
))) (=> (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@113)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@113))))
 :qid |Diemcvc5bpl.9022:15|
 :skolemid |286|
)) (and (=> (= (ControlFlow 0 692720) (- 0 1056506)) (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@114)))
 :qid |Diemcvc5bpl.9027:15|
 :skolemid |287|
))) (=> (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr@@115)))
 :qid |Diemcvc5bpl.9027:15|
 :skolemid |287|
)) (and (=> (= (ControlFlow 0 692720) (- 0 1056531)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 692720) (- 0 1056552)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@116)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@116))))
 :qid |Diemcvc5bpl.9037:15|
 :skolemid |288|
))) (=> (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@117)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@117))))
 :qid |Diemcvc5bpl.9037:15|
 :skolemid |288|
)) (and (=> (= (ControlFlow 0 692720) (- 0 1056581)) (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@118) (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@118)))
 :qid |Diemcvc5bpl.9042:15|
 :skolemid |289|
))) (=> (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@119) (|Select__T@[Int]Bool_| (|domain#$Memory_308077| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr@@119)))
 :qid |Diemcvc5bpl.9042:15|
 :skolemid |289|
)) (and (=> (= (ControlFlow 0 692720) (- 0 1056606)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 692720) (- 0 1056627)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 692720) (- 0 1056648)) (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@120) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@120))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@120))))
 :qid |Diemcvc5bpl.9057:15|
 :skolemid |290|
))) (=> (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@121) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@121))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@121))))
 :qid |Diemcvc5bpl.9057:15|
 :skolemid |290|
)) (and (=> (= (ControlFlow 0 692720) (- 0 1056684)) (forall ((addr@@122 Int) ) (!  (=> (|$IsValid'address'| addr@@122) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@122) (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@122)))
 :qid |Diemcvc5bpl.9062:15|
 :skolemid |291|
))) (=> (forall ((addr@@123 Int) ) (!  (=> (|$IsValid'address'| addr@@123) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@123) (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@123)))
 :qid |Diemcvc5bpl.9062:15|
 :skolemid |291|
)) (=> (= (ControlFlow 0 692720) (- 0 1056709)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))))))))))))))))))))))))))))))
(let ((anon10_Then$1_correct@@0  (=> (= $t3@1@@0 $t3@@8) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 692814) 692734) anon11_Then_correct@@7) (=> (= (ControlFlow 0 692814) 692720) anon11_Else_correct@@7))))))
(let ((anon10_Then_correct@@7  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= (ControlFlow 0 692812) 692814)) anon10_Then$1_correct@@0)))
(let ((anon10_Else_correct@@7  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (=> (and (and (= $t3@0@@0 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= $t3@1@@0 $t3@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 692398) 692734) anon11_Then_correct@@7) (=> (= (ControlFlow 0 692398) 692720) anon11_Else_correct@@7))))))
(let ((anon9_Else_correct@@6  (=> (and (not $t0@@0) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 692384) 692812) anon10_Then_correct@@7) (=> (= (ControlFlow 0 692384) 692398) anon10_Else_correct@@7)))))
(let ((anon0$1_correct@@10  (=> (and (and (and (and (forall ((addr3@@2 Int) ) (!  (=> (|$IsValid'address'| addr3@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.8915:22|
 :skolemid |276|
)) (forall ((addr3@@3 Int) ) (!  (=> (|$IsValid'address'| addr3@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.8915:261|
 :skolemid |277|
))) (forall ((addr3@@4 Int) ) (!  (=> (|$IsValid'address'| addr3@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr3@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.8915:501|
 :skolemid |278|
))) (and (and (forall ((addr@@124 Int) ) (!  (=> (|$IsValid'address'| addr@@124) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@124) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8919:22|
 :skolemid |279|
)) (forall ((addr@@125 Int) ) (!  (=> (|$IsValid'address'| addr@@125) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@125) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8919:222|
 :skolemid |280|
))) (forall ((addr@@126 Int) ) (!  (=> (|$IsValid'address'| addr@@126) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@126) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8919:423|
 :skolemid |281|
)))) (and (and (and (forall ((addr@@127 Int) ) (!  (=> (|$IsValid'address'| addr@@127) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@127) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8923:22|
 :skolemid |282|
)) (forall ((addr@@128 Int) ) (!  (=> (|$IsValid'address'| addr@@128) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@128) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8923:227|
 :skolemid |283|
))) (forall ((addr@@129 Int) ) (!  (=> (|$IsValid'address'| addr@@129) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@129) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.8923:433|
 :skolemid |284|
))) (and (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@14)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@14) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@14)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@14) 10000000000))))
 :qid |Diemcvc5bpl.8927:20|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@14))
)) (= $t0@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 692370) 692840) anon9_Then_correct@@6) (=> (= (ControlFlow 0 692370) 692384) anon9_Else_correct@@6)))))
(let ((inline$$InitEventStore$0$anon0_correct@@10  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@12 T@$1_Event_EventHandle) ) (! (let ((stream@@11 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@12)))
 (and (= (|l#Multiset_274039| stream@@11) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@11) v@@49) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 692087) 692370)) anon0$1_correct@@10)))
(let ((anon0_correct@@10  (=> (= (ControlFlow 0 1055967) 692087) inline$$InitEventStore$0$anon0_correct@@10)))
anon0_correct@@10))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0@@2 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t0@@1 () Bool)
(declare-fun $t1@@3 () Int)
(declare-fun $t4@0@@2 () (Seq Int))
(declare-fun $t3@1@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t3@@9 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $t3@0@@1 () |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun $abort_code@0@@3 () Int)
(push 1)
(set-info :boogie-vc-id $1_Diem_currency_code$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 1056772) (let ((L2_correct@@9  (and (=> (= (ControlFlow 0 693655) (- 0 1057547)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (=> (= (ControlFlow 0 693655) (- 0 1057552)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t1@0@@2)))))))
(let ((anon11_Then_correct@@8  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= $t1@0@@2 $abort_code@1@@3) (= (ControlFlow 0 693627) 693655))) L2_correct@@9)))
(let ((anon9_Then_correct@@7  (=> $t0@@1 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $t1@@3)) (= $t1@@3 $t1@@3)) (and (= $t1@0@@2 $t1@@3) (= (ControlFlow 0 693733) 693655))) L2_correct@@9))))
(let ((anon11_Else_correct@@8  (=> (not $abort_flag@0@@3) (=> (and (= $t4@0@@2 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $t3@1@@1)) (= $t4@0@@2 $t4@0@@2)) (and (=> (= (ControlFlow 0 693613) (- 0 1057241)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 693613) (- 0 1057251)) (= $t4@0@@2 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (= $t4@0@@2 (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 693613) (- 0 1057261)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 693613) (- 0 1057282)) (forall ((addr@@130 Int) ) (!  (=> (|$IsValid'address'| addr@@130) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@130)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@130))))
 :qid |Diemcvc5bpl.9226:15|
 :skolemid |302|
))) (=> (forall ((addr@@131 Int) ) (!  (=> (|$IsValid'address'| addr@@131) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@131)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@131))))
 :qid |Diemcvc5bpl.9226:15|
 :skolemid |302|
)) (and (=> (= (ControlFlow 0 693613) (- 0 1057311)) (forall ((addr@@132 Int) ) (!  (=> (|$IsValid'address'| addr@@132) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@132) (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@132)))
 :qid |Diemcvc5bpl.9231:15|
 :skolemid |303|
))) (=> (forall ((addr@@133 Int) ) (!  (=> (|$IsValid'address'| addr@@133) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@133) (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr@@133)))
 :qid |Diemcvc5bpl.9231:15|
 :skolemid |303|
)) (and (=> (= (ControlFlow 0 693613) (- 0 1057336)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 693613) (- 0 1057357)) (forall ((addr@@134 Int) ) (!  (=> (|$IsValid'address'| addr@@134) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@134)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@134))))
 :qid |Diemcvc5bpl.9241:15|
 :skolemid |304|
))) (=> (forall ((addr@@135 Int) ) (!  (=> (|$IsValid'address'| addr@@135) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@135)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@135))))
 :qid |Diemcvc5bpl.9241:15|
 :skolemid |304|
)) (and (=> (= (ControlFlow 0 693613) (- 0 1057386)) (forall ((addr@@136 Int) ) (!  (=> (|$IsValid'address'| addr@@136) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@136) (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@136)))
 :qid |Diemcvc5bpl.9246:15|
 :skolemid |305|
))) (=> (forall ((addr@@137 Int) ) (!  (=> (|$IsValid'address'| addr@@137) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@137) (|Select__T@[Int]Bool_| (|domain#$Memory_308162| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr@@137)))
 :qid |Diemcvc5bpl.9246:15|
 :skolemid |305|
)) (and (=> (= (ControlFlow 0 693613) (- 0 1057411)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 693613) (- 0 1057432)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 693613) (- 0 1057453)) (forall ((addr@@138 Int) ) (!  (=> (|$IsValid'address'| addr@@138) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@138) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@138))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@138))))
 :qid |Diemcvc5bpl.9261:15|
 :skolemid |306|
))) (=> (forall ((addr@@139 Int) ) (!  (=> (|$IsValid'address'| addr@@139) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@139) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@139))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@139))))
 :qid |Diemcvc5bpl.9261:15|
 :skolemid |306|
)) (and (=> (= (ControlFlow 0 693613) (- 0 1057489)) (forall ((addr@@140 Int) ) (!  (=> (|$IsValid'address'| addr@@140) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@140) (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@140)))
 :qid |Diemcvc5bpl.9266:15|
 :skolemid |307|
))) (=> (forall ((addr@@141 Int) ) (!  (=> (|$IsValid'address'| addr@@141) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@141) (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@141)))
 :qid |Diemcvc5bpl.9266:15|
 :skolemid |307|
)) (=> (= (ControlFlow 0 693613) (- 0 1057514)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))))))))))))))))))))))))))))))
(let ((anon10_Then$1_correct@@1  (=> (= $t3@1@@1 $t3@@9) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 693707) 693627) anon11_Then_correct@@8) (=> (= (ControlFlow 0 693707) 693613) anon11_Else_correct@@8))))))
(let ((anon10_Then_correct@@8  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= (ControlFlow 0 693705) 693707)) anon10_Then$1_correct@@1)))
(let ((anon10_Else_correct@@8  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (=> (and (and (= $t3@0@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= $t3@1@@1 $t3@0@@1)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 693291) 693627) anon11_Then_correct@@8) (=> (= (ControlFlow 0 693291) 693613) anon11_Else_correct@@8))))))
(let ((anon9_Else_correct@@7  (=> (and (not $t0@@1) (|$IsValid'address'| 173345816)) (and (=> (= (ControlFlow 0 693277) 693705) anon10_Then_correct@@8) (=> (= (ControlFlow 0 693277) 693291) anon10_Else_correct@@8)))))
(let ((anon0$1_correct@@11  (=> (and (and (and (and (forall ((addr3@@5 Int) ) (!  (=> (|$IsValid'address'| addr3@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307818| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) addr3@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.9119:22|
 :skolemid |292|
)) (forall ((addr3@@6 Int) ) (!  (=> (|$IsValid'address'| addr3@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307903| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) addr3@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.9119:261|
 :skolemid |293|
))) (forall ((addr3@@7 Int) ) (!  (=> (|$IsValid'address'| addr3@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr3@@7) (and (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (not (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))
 :qid |Diemcvc5bpl.9119:501|
 :skolemid |294|
))) (and (and (forall ((addr@@142 Int) ) (!  (=> (|$IsValid'address'| addr@@142) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@142) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9123:22|
 :skolemid |295|
)) (forall ((addr@@143 Int) ) (!  (=> (|$IsValid'address'| addr@@143) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@143) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9123:222|
 :skolemid |296|
))) (forall ((addr@@144 Int) ) (!  (=> (|$IsValid'address'| addr@@144) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@144) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9123:423|
 :skolemid |297|
)))) (and (and (and (forall ((addr@@145 Int) ) (!  (=> (|$IsValid'address'| addr@@145) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@145) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9127:22|
 :skolemid |298|
)) (forall ((addr@@146 Int) ) (!  (=> (|$IsValid'address'| addr@@146) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@146) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9127:227|
 :skolemid |299|
))) (forall ((addr@@147 Int) ) (!  (=> (|$IsValid'address'| addr@@147) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@147) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9127:433|
 :skolemid |300|
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@15)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@15) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@15)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@15) 10000000000))))
 :qid |Diemcvc5bpl.9131:20|
 :skolemid |301|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@15))
)) (= $t0@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))))) (and (=> (= (ControlFlow 0 693263) 693733) anon9_Then_correct@@7) (=> (= (ControlFlow 0 693263) 693277) anon9_Else_correct@@7)))))
(let ((inline$$InitEventStore$0$anon0_correct@@11  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@13 T@$1_Event_EventHandle) ) (! (let ((stream@@12 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@13)))
 (and (= (|l#Multiset_274039| stream@@12) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@12) v@@50) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 692980) 693263)) anon0$1_correct@@11)))
(let ((anon0_correct@@11  (=> (= (ControlFlow 0 1056772) 692980) inline$$InitEventStore$0$anon0_correct@@11)))
anon0_correct@@11))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun $t25@2 () T@$Mutation_339548)
(declare-fun $t25@1 () T@$Mutation_339548)
(declare-fun |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1| () T@$Mutation_284883)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory@0| () T@$Memory_308632)
(declare-fun |Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int |T@$1_Diem_PreburnQueue'#0'|) |T@[Int]$1_Diem_PreburnQueue'#0'|)
(declare-fun |Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|T@[Int]$1_Diem_PreburnQueue'#0'| Int) |T@$1_Diem_PreburnQueue'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Diem_PreburnQueue'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_Diem_PreburnQueue'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| Int) |T@$1_Diem_Preburn'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| Int) |T@$1_Diem_Preburn'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_Preburn'#0'_| (|T@[Int]$1_Diem_Preburn'#0'| Int) |T@$1_Diem_Preburn'#0'|)
(declare-fun $t33 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t10@@0 () Int)
(declare-fun _$t1@@6 () |T@$1_Diem_PreburnWithMetadata'#0'|)
(declare-fun $t12 () Int)
(declare-fun $t11 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t17@0 () Int)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun $t26@0 () T@$Mutation_284883)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t32 () Int)
(declare-fun |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| () Int)
(declare-fun $t27@0 () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| () (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun $t25 () T@$Mutation_339548)
(declare-fun $t13 () Int)
(declare-fun $t25@0 () T@$Mutation_339548)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |$1_Diem_PreburnQueue'#0'_$modifies| () |T@[Int]Bool|)
(declare-fun $t24 () Int)
(declare-fun |inline$$1_Diem_value'#0'$0$$t1@1| () Int)
(declare-fun $t19@0 () |T@$1_Diem_Diem'#0'|)
(declare-fun $t14@0 () Bool)
(declare-fun $t18@0 () |T@$1_Diem_Preburn'#0'|)
(declare-fun $t16 () Int)
(declare-fun _$t0@@9 () T@$signer)
(declare-fun $t9@@6 () T@$Mutation_284883)
(declare-fun $t26 () T@$Mutation_284883)
(push 1)
(set-info :boogie-vc-id $1_Diem_add_preburn_to_queue$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 1057578) (let ((anon29_Else_correct  (=> (and (not $abort_flag@0@@4) (= $t25@2 ($Mutation_339548 (|l#$Mutation_339548| $t25@1) (|p#$Mutation_339548| $t25@1) (|$1_Diem_PreburnQueue'#0'| (|v#$Mutation_284883| |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1|))))) (and (=> (= (ControlFlow 0 696119) (- 0 1059001)) (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@2))) 256)) (=> (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@2))) 256) (and (=> (= (ControlFlow 0 696119) (- 0 1059015)) (let (($range_0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@2))))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@44 $i_1))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@2)) i@@44)))) 0)))
 :qid |Diemcvc5bpl.9682:107|
 :skolemid |323|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@2))))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@45 $i_1@@0))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@2)) i@@45)))) 0)))
 :qid |Diemcvc5bpl.9682:107|
 :skolemid |323|
))) (=> (= |$1_Diem_PreburnQueue'#0'_$memory@0| ($Memory_308632 (|Store__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) (|a#$Global| (|l#$Mutation_339548| $t25@2)) true) (|Store__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) (|a#$Global| (|l#$Mutation_339548| $t25@2)) (|v#$Mutation_339548| $t25@2)))) (and (=> (= (ControlFlow 0 696119) (- 0 1059096)) (and (and (forall ((addr1@@23 Int) ) (!  (=> (|$IsValid'address'| addr1@@23) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@23)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@23)) 2))))
 :qid |Diemcvc5bpl.9707:17|
 :skolemid |324|
)) (forall ((addr1@@24 Int) ) (!  (=> (|$IsValid'address'| addr1@@24) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@24)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@24)) 2))))
 :qid |Diemcvc5bpl.9707:288|
 :skolemid |325|
))) (forall ((addr1@@25 Int) ) (!  (=> (|$IsValid'address'| addr1@@25) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr1@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@25)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@25)) 2))))
 :qid |Diemcvc5bpl.9707:560|
 :skolemid |326|
)))) (=> (and (and (forall ((addr1@@26 Int) ) (!  (=> (|$IsValid'address'| addr1@@26) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@26) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@26)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@26)) 2))))
 :qid |Diemcvc5bpl.9707:17|
 :skolemid |324|
)) (forall ((addr1@@27 Int) ) (!  (=> (|$IsValid'address'| addr1@@27) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@27) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@27)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@27)) 2))))
 :qid |Diemcvc5bpl.9707:288|
 :skolemid |325|
))) (forall ((addr1@@28 Int) ) (!  (=> (|$IsValid'address'| addr1@@28) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr1@@28) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@28)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@28)) 2))))
 :qid |Diemcvc5bpl.9707:560|
 :skolemid |326|
))) (and (=> (= (ControlFlow 0 696119) (- 0 1059195)) (and (and (forall ((dd_addr Int) ) (!  (=> (|$IsValid'address'| dd_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr)))))
 :qid |Diemcvc5bpl.9713:17|
 :skolemid |327|
)) (forall ((dd_addr@@0 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@0))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@0)))))
 :qid |Diemcvc5bpl.9713:370|
 :skolemid |328|
))) (forall ((dd_addr@@1 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@1) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@1))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) dd_addr@@1)))))
 :qid |Diemcvc5bpl.9713:724|
 :skolemid |329|
)))) (=> (and (and (forall ((dd_addr@@2 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@2) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@2))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@2)))))
 :qid |Diemcvc5bpl.9713:17|
 :skolemid |327|
)) (forall ((dd_addr@@3 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@3) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@3))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@3)))))
 :qid |Diemcvc5bpl.9713:370|
 :skolemid |328|
))) (forall ((dd_addr@@4 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@4) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@4))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) dd_addr@@4)))))
 :qid |Diemcvc5bpl.9713:724|
 :skolemid |329|
))) (and (=> (= (ControlFlow 0 696119) (- 0 1059324)) (and (and (forall ((dd_addr@@5 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@5) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@5))))
 :qid |Diemcvc5bpl.9719:17|
 :skolemid |330|
)) (forall ((dd_addr@@6 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@6) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@6))))
 :qid |Diemcvc5bpl.9719:215|
 :skolemid |331|
))) (forall ((dd_addr@@7 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) dd_addr@@7) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@7))))
 :qid |Diemcvc5bpl.9719:414|
 :skolemid |332|
)))) (=> (and (and (forall ((dd_addr@@8 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@8) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@8))))
 :qid |Diemcvc5bpl.9719:17|
 :skolemid |330|
)) (forall ((dd_addr@@9 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@9) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@9))))
 :qid |Diemcvc5bpl.9719:215|
 :skolemid |331|
))) (forall ((dd_addr@@10 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) dd_addr@@10) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@10))))
 :qid |Diemcvc5bpl.9719:414|
 :skolemid |332|
))) (and (=> (= (ControlFlow 0 696119) (- 0 1059405)) (and (and (forall ((addr@@148 Int) ) (!  (=> (|$IsValid'address'| addr@@148) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@148) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9725:17|
 :skolemid |333|
)) (forall ((addr@@149 Int) ) (!  (=> (|$IsValid'address'| addr@@149) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@149) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9725:222|
 :skolemid |334|
))) (forall ((addr@@150 Int) ) (!  (=> (|$IsValid'address'| addr@@150) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@150) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9725:428|
 :skolemid |335|
)))) (=> (and (and (forall ((addr@@151 Int) ) (!  (=> (|$IsValid'address'| addr@@151) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@151) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9725:17|
 :skolemid |333|
)) (forall ((addr@@152 Int) ) (!  (=> (|$IsValid'address'| addr@@152) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@152) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9725:222|
 :skolemid |334|
))) (forall ((addr@@153 Int) ) (!  (=> (|$IsValid'address'| addr@@153) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@153) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9725:428|
 :skolemid |335|
))) (and (=> (= (ControlFlow 0 696119) (- 0 1059474)) (and (and (forall ((tc_addr Int) ) (!  (=> (|$IsValid'address'| tc_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) tc_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) tc_addr)))
 :qid |Diemcvc5bpl.9731:17|
 :skolemid |336|
)) (forall ((tc_addr@@0 Int) ) (!  (=> (|$IsValid'address'| tc_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) tc_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) tc_addr@@0)))
 :qid |Diemcvc5bpl.9731:223|
 :skolemid |337|
))) (forall ((tc_addr@@1 Int) ) (!  (=> (|$IsValid'address'| tc_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) tc_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) tc_addr@@1)))
 :qid |Diemcvc5bpl.9731:430|
 :skolemid |338|
)))) (=> (and (and (forall ((tc_addr@@2 Int) ) (!  (=> (|$IsValid'address'| tc_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) tc_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) tc_addr@@2)))
 :qid |Diemcvc5bpl.9731:17|
 :skolemid |336|
)) (forall ((tc_addr@@3 Int) ) (!  (=> (|$IsValid'address'| tc_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) tc_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) tc_addr@@3)))
 :qid |Diemcvc5bpl.9731:223|
 :skolemid |337|
))) (forall ((tc_addr@@4 Int) ) (!  (=> (|$IsValid'address'| tc_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) tc_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) tc_addr@@4)))
 :qid |Diemcvc5bpl.9731:430|
 :skolemid |338|
))) (=> (= $t33 (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) $t10@@0))) (and (=> (= (ControlFlow 0 696119) (- 0 1059563)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t10@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t10@@0))) (and (=> (= (ControlFlow 0 696119) (- 0 1059575)) (not (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@6))) 0))) (=> (not (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@6))) 0)) (and (=> (= (ControlFlow 0 696119) (- 0 1059591)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256)))) (=> (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256))) (and (=> (= (ControlFlow 0 696119) (- 0 1059616)) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) $t10@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) $t10@@0) (and (=> (= (ControlFlow 0 696119) (- 0 1059624)) (and (and (= (seq.len $t33) (+ (seq.len $t11) 1)) (= (seq.nth $t33 (- (seq.len $t33) 1)) _$t1@@6)) (= (seq.extract $t33 (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t33) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))))) (seq.extract $t11 (|lb#$Range| ($Range 0 (seq.len $t11))) (- (|ub#$Range| ($Range 0 (seq.len $t11))) (|lb#$Range| ($Range 0 (seq.len $t11)))))))) (=> (and (and (= (seq.len $t33) (+ (seq.len $t11) 1)) (= (seq.nth $t33 (- (seq.len $t33) 1)) _$t1@@6)) (= (seq.extract $t33 (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))) (- (|ub#$Range| ($Range 0 (- (seq.len $t33) 1))) (|lb#$Range| ($Range 0 (- (seq.len $t33) 1))))) (seq.extract $t11 (|lb#$Range| ($Range 0 (seq.len $t11))) (- (|ub#$Range| ($Range 0 (seq.len $t11))) (|lb#$Range| ($Range 0 (seq.len $t11))))))) (and (=> (= (ControlFlow 0 696119) (- 0 1059634)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 696119) (- 0 1059655)) (forall ((addr@@154 Int) ) (!  (=> (|$IsValid'address'| addr@@154) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@154)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@154))))
 :qid |Diemcvc5bpl.9774:15|
 :skolemid |339|
))) (=> (forall ((addr@@155 Int) ) (!  (=> (|$IsValid'address'| addr@@155) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@155)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@155))))
 :qid |Diemcvc5bpl.9774:15|
 :skolemid |339|
)) (and (=> (= (ControlFlow 0 696119) (- 0 1059684)) (forall ((addr@@156 Int) ) (!  (=> (|$IsValid'address'| addr@@156) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@156) (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@156)))
 :qid |Diemcvc5bpl.9779:15|
 :skolemid |340|
))) (=> (forall ((addr@@157 Int) ) (!  (=> (|$IsValid'address'| addr@@157) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@157) (|Select__T@[Int]Bool_| (|domain#$Memory_307988| |$1_Diem_MintCapability'#0'_$memory|) addr@@157)))
 :qid |Diemcvc5bpl.9779:15|
 :skolemid |340|
)) (and (=> (= (ControlFlow 0 696119) (- 0 1059709)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$total_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 696119) (- 0 1059730)) (forall ((addr@@158 Int) ) (!  (=> (|$IsValid'address'| addr@@158) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@158)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@158))))
 :qid |Diemcvc5bpl.9789:15|
 :skolemid |341|
))) (=> (forall ((addr@@159 Int) ) (!  (=> (|$IsValid'address'| addr@@159) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@159)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@159))))
 :qid |Diemcvc5bpl.9789:15|
 :skolemid |341|
)) (and (=> (= (ControlFlow 0 696119) (- 0 1059759)) (forall ((addr@@160 Int) ) (!  (=> (|$IsValid'address'| addr@@160) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@160) (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@160)))
 :qid |Diemcvc5bpl.9794:15|
 :skolemid |342|
))) (=> (forall ((addr@@161 Int) ) (!  (=> (|$IsValid'address'| addr@@161) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@161) (|Select__T@[Int]Bool_| (|domain#$Memory_308247| |$1_Diem_BurnCapability'#0'_$memory|) addr@@161)))
 :qid |Diemcvc5bpl.9794:15|
 :skolemid |342|
)) (and (=> (= (ControlFlow 0 696119) (- 0 1059784)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (>= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 696119) (- 0 1059805)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (=> (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (<= (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 696119) (- 0 1059826)) (forall ((addr@@162 Int) ) (!  (=> (|$IsValid'address'| addr@@162) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@162) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@162))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@162))))
 :qid |Diemcvc5bpl.9809:15|
 :skolemid |343|
))) (=> (forall ((addr@@163 Int) ) (!  (=> (|$IsValid'address'| addr@@163) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@163) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr@@163))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@163))))
 :qid |Diemcvc5bpl.9809:15|
 :skolemid |343|
)) (and (=> (= (ControlFlow 0 696119) (- 0 1059861)) (forall ((addr@@164 Int) ) (!  (=> (|$IsValid'address'| addr@@164) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@164) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@164)))
 :qid |Diemcvc5bpl.9814:15|
 :skolemid |344|
))) (=> (forall ((addr@@165 Int) ) (!  (=> (|$IsValid'address'| addr@@165) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@165) (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory@0|) addr@@165)))
 :qid |Diemcvc5bpl.9814:15|
 :skolemid |344|
)) (=> (= (ControlFlow 0 696119) (- 0 1059885)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816) (= (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon23_Then_correct true))
(let ((L7_correct  (and (=> (= (ControlFlow 0 694630) (- 0 1058868)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t10@@0)) (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@6))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256)))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t10@@0)) (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@6))) 0)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256))) (=> (= (ControlFlow 0 694630) (- 0 1058910)) (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t10@@0)) (= 1 $t17@0)) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@6))) 0) (= 7 $t17@0))) (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12) (>= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t12))) 256)) (= 8 $t17@0))))))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t17@0 $abort_code@1@@4) (= (ControlFlow 0 696133) 694630))) L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$m'@1| ($Mutation_284883 (|l#$Mutation_284883| $t26@0) (|p#$Mutation_284883| $t26@0) (seq.++ (|v#$Mutation_284883| $t26@0) (seq.unit _$t1@@6)))) (and (=> (= (ControlFlow 0 695183) 696133) anon29_Then_correct) (=> (= (ControlFlow 0 695183) 696119) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 695189) 695183)) |inline$$1_Vector_push_back'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|)))
(let ((anon28_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 695128) (- 0 1058729)) (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1))) 256)) (=> (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1))) 256) (and (=> (= (ControlFlow 0 695128) (- 0 1058743)) (let (($range_0@@1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1))))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@46 $i_1@@1))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1)) i@@46)))) 0)))
 :qid |Diemcvc5bpl.9640:107|
 :skolemid |322|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1))))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@2) (let ((i@@47 $i_1@@2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1)) i@@47)))) 0)))
 :qid |Diemcvc5bpl.9640:107|
 :skolemid |322|
))) (=> (= $t32 $t32) (=> (and (= $t17@0 $t32) (= (ControlFlow 0 695128) 694630)) L7_correct)))))))))
(let ((anon27_Else$1_correct  (=> (|$IsValid'u64'| 11) (=> (and (and (|$IsValid'u64'| $t32) (= $t32 8)) (and (= $t32 $t32) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 695045) 695189) anon28_Then_correct) (=> (= (ControlFlow 0 695045) 695128) anon28_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| 256)) (= (ControlFlow 0 695005) 695045)) anon27_Else$1_correct)))
(let ((anon27_Else_correct  (=> (not $abort_flag@0@@4) (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 695011) 695005)) inline$$Lt$0$anon0_correct))))
(let ((anon27_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t17@0 $abort_code@1@@4) (= (ControlFlow 0 696147) 694630))) L7_correct)))
(let ((|inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$l@1| (seq.len $t27@0)) (and (=> (= (ControlFlow 0 694945) 696147) anon27_Then_correct) (=> (= (ControlFlow 0 694945) 695011) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not $abort_flag@0@@4) (= $t26@0 ($Mutation_284883 (|l#$Mutation_339548| $t25@1) (seq.++ (|p#$Mutation_339548| $t25@1) (seq.unit 0)) (|$preburns#$1_Diem_PreburnQueue'#0'| (|v#$Mutation_339548| $t25@1))))) (=> (and (and (= |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| (|v#$Mutation_284883| $t26@0)) (= |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0| |$temp_0'vec'$1_Diem_PreburnWithMetadata'#0'''@0|)) (and (= $t27@0 (|v#$Mutation_284883| $t26@0)) (= (ControlFlow 0 694951) 694945))) |inline$$1_Vector_length'$1_Diem_PreburnWithMetadata'#0''$0$anon0_correct|))))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= $t17@0 $abort_code@1@@4) (= (ControlFlow 0 696161) 694630))) L7_correct)))
(let ((anon25_Then$1_correct  (=> (= $t25@1 $t25) (=> (and (= $abort_flag@0@@4 true) (= $abort_code@1@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 696213) 696161) anon26_Then_correct) (=> (= (ControlFlow 0 696213) 694951) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t13)) (= (ControlFlow 0 696211) 696213)) anon25_Then$1_correct)))
(let ((anon25_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t13) (=> (and (and (= $t25@0 ($Mutation_339548 ($Global $t13) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t13))) (= $t25@1 $t25@0)) (and (= $abort_flag@0@@4 false) (= $abort_code@1@@4 $abort_code@0@@4))) (and (=> (= (ControlFlow 0 694879) 696161) anon26_Then_correct) (=> (= (ControlFlow 0 694879) 694951) anon26_Else_correct))))))
(let ((anon24_Then_correct  (=> inline$$Gt$0$dst@1 (and (=> (= (ControlFlow 0 694857) (- 0 1058483)) (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t13)) (=> (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t13) (and (=> (= (ControlFlow 0 694857) 696211) anon25_Then_correct) (=> (= (ControlFlow 0 694857) 694879) anon25_Else_correct)))))))
(let ((anon24_Else_correct  (=> (and (and (not inline$$Gt$0$dst@1) (= $t24 $t24)) (and (= $t17@0 $t24) (= (ControlFlow 0 694847) 694630))) L7_correct)))
(let ((anon23_Else$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (and (|$IsValid'u64'| $t24) (= $t24 7)) (and (= $t24 $t24) (= inline$$Gt$0$dst@1 inline$$Gt$0$dst@1))) (and (=> (= (ControlFlow 0 694831) 694857) anon24_Then_correct) (=> (= (ControlFlow 0 694831) 694847) anon24_Else_correct))))))
(let ((inline$$Gt$0$anon0_correct  (=> (and (= inline$$Gt$0$dst@1 (> |inline$$1_Diem_value'#0'$0$$t1@1| 0)) (= (ControlFlow 0 694795) 694831)) anon23_Else$1_correct)))
(let ((anon23_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 694801) 694795)) inline$$Gt$0$anon0_correct))))
(let ((|inline$$1_Diem_value'#0'$0$anon0_correct|  (=> (= $t19@0 $t19@0) (=> (and (= |inline$$1_Diem_value'#0'$0$$t1@1| (|$value#$1_Diem_Diem'#0'| $t19@0)) (= |inline$$1_Diem_value'#0'$0$$t1@1| |inline$$1_Diem_value'#0'$0$$t1@1|)) (and (=> (= (ControlFlow 0 694735) 696227) anon23_Then_correct) (=> (= (ControlFlow 0 694735) 694801) anon23_Else_correct))))))
(let ((anon22_Then_correct  (=> (and (and $t14@0 (= $t18@0 (|$preburn#$1_Diem_PreburnWithMetadata'#0'| _$t1@@6))) (and (= $t19@0 (|$to_burn#$1_Diem_Preburn'#0'| $t18@0)) (= (ControlFlow 0 694741) 694735))) |inline$$1_Diem_value'#0'$0$anon0_correct|)))
(let ((anon22_Else_correct  (=> (and (and (not $t14@0) (= $t16 $t16)) (and (= $t17@0 $t16) (= (ControlFlow 0 694506) 694630))) L7_correct)))
(let ((anon0$1_correct@@12  (=> (and (and (forall ((addr1@@29 Int) ) (!  (=> (|$IsValid'address'| addr1@@29) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@29) (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@29)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@29)) 2))))
 :qid |Diemcvc5bpl.9363:22|
 :skolemid |308|
)) (forall ((addr1@@30 Int) ) (!  (=> (|$IsValid'address'| addr1@@30) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@30) (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@30)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@30)) 2))))
 :qid |Diemcvc5bpl.9363:293|
 :skolemid |309|
))) (forall ((addr1@@31 Int) ) (!  (=> (|$IsValid'address'| addr1@@31) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr1@@31) (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) addr1@@31)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_305770| $1_Roles_RoleId_$memory) addr1@@31)) 2))))
 :qid |Diemcvc5bpl.9363:565|
 :skolemid |310|
))) (=> (and (and (and (and (and (forall ((dd_addr@@11 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@11) (and (= (|$value#$1_Diem_Diem'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| (|Select__T@[Int]$1_Diem_Preburn'$1_XUS_XUS'_| (|contents#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@11))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@11)))))
 :qid |Diemcvc5bpl.9367:22|
 :skolemid |311|
)) (forall ((dd_addr@@12 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@12) (and (= (|$value#$1_Diem_Diem'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| (|Select__T@[Int]$1_Diem_Preburn'$1_XDX_XDX'_| (|contents#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@12))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@12)))))
 :qid |Diemcvc5bpl.9367:375|
 :skolemid |312|
))) (forall ((dd_addr@@13 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@13) (and (= (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|Select__T@[Int]$1_Diem_Preburn'#0'_| (|contents#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@13))) 0) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@13)))))
 :qid |Diemcvc5bpl.9367:729|
 :skolemid |313|
))) (and (and (forall ((dd_addr@@14 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) dd_addr@@14) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308398| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) dd_addr@@14))))
 :qid |Diemcvc5bpl.9371:22|
 :skolemid |314|
)) (forall ((dd_addr@@15 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) dd_addr@@15) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308545| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) dd_addr@@15))))
 :qid |Diemcvc5bpl.9371:220|
 :skolemid |315|
))) (forall ((dd_addr@@16 Int) ) (!  (=> (|$IsValid'address'| dd_addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) dd_addr@@16) (not (|Select__T@[Int]Bool_| (|domain#$Memory_308692| |$1_Diem_Preburn'#0'_$memory|) dd_addr@@16))))
 :qid |Diemcvc5bpl.9371:419|
 :skolemid |316|
)))) (and (and (and (forall ((addr@@166 Int) ) (!  (=> (|$IsValid'address'| addr@@166) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308338| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@166) (|Select__T@[Int]Bool_| (|domain#$Memory_326248| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9375:22|
 :skolemid |317|
)) (forall ((addr@@167 Int) ) (!  (=> (|$IsValid'address'| addr@@167) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308485| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@167) (|Select__T@[Int]Bool_| (|domain#$Memory_326367| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9375:227|
 :skolemid |318|
))) (forall ((addr@@168 Int) ) (!  (=> (|$IsValid'address'| addr@@168) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@168) (|Select__T@[Int]Bool_| (|domain#$Memory_326486| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |Diemcvc5bpl.9375:433|
 :skolemid |319|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@9)) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| _$t1@@6)))) (and (and (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@16)))
 (and (|$IsValid'$1_Diem_PreburnQueue'#0''| $rsc@@16) (and (<= (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@16)) 256) (let (($range_1 ($Range 0 (seq.len (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@16)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@48 $i_2))
(> (|$value#$1_Diem_Diem'#0'| (|$to_burn#$1_Diem_Preburn'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| (seq.nth (|$preburns#$1_Diem_PreburnQueue'#0'| $rsc@@16) i@@48)))) 0)))
 :qid |Diemcvc5bpl.9385:199|
 :skolemid |320|
))))))
 :qid |Diemcvc5bpl.9384:20|
 :skolemid |321|
 :pattern ( (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $a_0@@16))
)) (= $t10@@0 (|$addr#$signer| _$t0@@9))) (and (= $t11 (|$preburns#$1_Diem_PreburnQueue'#0'| (|Select__T@[Int]$1_Diem_PreburnQueue'#0'_| (|contents#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t10@@0))) (= $t12 (|$addr#$signer| _$t0@@9)))) (and (and (|Select__T@[Int]Bool_| |$1_Diem_PreburnQueue'#0'_$modifies| $t10@@0) (= _$t0@@9 _$t0@@9)) (and (= _$t1@@6 _$t1@@6) (|$IsValid'address'| $t13)))) (and (and (and (= $t13 (|$addr#$signer| _$t0@@9)) (= $t13 $t13)) (and (= $t14@0 (|Select__T@[Int]Bool_| (|domain#$Memory_308632| |$1_Diem_PreburnQueue'#0'_$memory|) $t13)) (|$IsValid'u64'| 11))) (and (and (|$IsValid'u64'| $t16) (= $t16 1)) (and (= $t16 $t16) (= $t14@0 $t14@0)))))) (and (=> (= (ControlFlow 0 694490) 694741) anon22_Then_correct) (=> (= (ControlFlow 0 694490) 694506) anon22_Else_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@12  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@14 T@$1_Event_EventHandle) ) (! (let ((stream@@13 (|Select__T@[$1_Event_EventHandle]Multiset_274039_| (|streams#$EventStore| $es) handle@@14)))
 (and (= (|l#Multiset_274039| stream@@13) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_274039| stream@@13) v@@51) 0)
 :qid |Diemcvc5bpl.129:13|
 :skolemid |2|
))))
 :qid |Diemcvc5bpl.2723:13|
 :skolemid |74|
))) (= (ControlFlow 0 693895) 694490)) anon0$1_correct@@12)))
(let ((anon0_correct@@12  (=> (and (and (= (seq.len (|p#$Mutation_284883| $t9@@6)) 0) (= (seq.len (|p#$Mutation_339548| $t25)) 0)) (and (= (seq.len (|p#$Mutation_284883| $t26)) 0) (= (ControlFlow 0 693905) 693895))) inline$$InitEventStore$0$anon0_correct@@12)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 1057578) 693905) anon0_correct@@12)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
