(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_120058 0)) ((($Memory_120058 (|domain#$Memory_120058| |T@[Int]Bool|) (|contents#$Memory_120058| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_192120 0)) ((($Memory_192120 (|domain#$Memory_192120| |T@[Int]Bool|) (|contents#$Memory_192120| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_162693 0)) ((($Memory_162693 (|domain#$Memory_162693| |T@[Int]Bool|) (|contents#$Memory_162693| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_160273 0)) ((($Memory_160273 (|domain#$Memory_160273| |T@[Int]Bool|) (|contents#$Memory_160273| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_160586 0)) ((($Memory_160586 (|domain#$Memory_160586| |T@[Int]Bool|) (|contents#$Memory_160586| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_160240 0)) ((($Memory_160240 (|domain#$Memory_160240| |T@[Int]Bool|) (|contents#$Memory_160240| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_160025 0)) ((($Memory_160025 (|domain#$Memory_160025| |T@[Int]Bool|) (|contents#$Memory_160025| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_155591 0)) ((($Memory_155591 (|domain#$Memory_155591| |T@[Int]Bool|) (|contents#$Memory_155591| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_155527 0)) ((($Memory_155527 (|domain#$Memory_155527| |T@[Int]Bool|) (|contents#$Memory_155527| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_154061 0)) ((($Memory_154061 (|domain#$Memory_154061| |T@[Int]Bool|) (|contents#$Memory_154061| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_153997 0)) ((($Memory_153997 (|domain#$Memory_153997| |T@[Int]Bool|) (|contents#$Memory_153997| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_153144 0)) ((($Memory_153144 (|domain#$Memory_153144| |T@[Int]Bool|) (|contents#$Memory_153144| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_153080 0)) ((($Memory_153080 (|domain#$Memory_153080| |T@[Int]Bool|) (|contents#$Memory_153080| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149836 0)) ((($Memory_149836 (|domain#$Memory_149836| |T@[Int]Bool|) (|contents#$Memory_149836| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149549 0)) ((($Memory_149549 (|domain#$Memory_149549| |T@[Int]Bool|) (|contents#$Memory_149549| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_149262 0)) ((($Memory_149262 (|domain#$Memory_149262| |T@[Int]Bool|) (|contents#$Memory_149262| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_149043 0)) ((($Memory_149043 (|domain#$Memory_149043| |T@[Int]Bool|) (|contents#$Memory_149043| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_162209 0)) ((($Memory_162209 (|domain#$Memory_162209| |T@[Int]Bool|) (|contents#$Memory_162209| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141392 0)) ((($Memory_141392 (|domain#$Memory_141392| |T@[Int]Bool|) (|contents#$Memory_141392| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141305 0)) ((($Memory_141305 (|domain#$Memory_141305| |T@[Int]Bool|) (|contents#$Memory_141305| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136672 0)) ((($Memory_136672 (|domain#$Memory_136672| |T@[Int]Bool|) (|contents#$Memory_136672| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136585 0)) ((($Memory_136585 (|domain#$Memory_136585| |T@[Int]Bool|) (|contents#$Memory_136585| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_162526 0)) ((($Memory_162526 (|domain#$Memory_162526| |T@[Int]Bool|) (|contents#$Memory_162526| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_141747 0)) ((($Memory_141747 (|domain#$Memory_141747| |T@[Int]Bool|) (|contents#$Memory_141747| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_142172 0)) ((($Memory_142172 (|domain#$Memory_142172| |T@[Int]Bool|) (|contents#$Memory_142172| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_162435 0)) ((($Memory_162435 (|domain#$Memory_162435| |T@[Int]Bool|) (|contents#$Memory_162435| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_141656 0)) ((($Memory_141656 (|domain#$Memory_141656| |T@[Int]Bool|) (|contents#$Memory_141656| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_151758 0)) ((($Memory_151758 (|domain#$Memory_151758| |T@[Int]Bool|) (|contents#$Memory_151758| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_142073 0)) ((($Memory_142073 (|domain#$Memory_142073| |T@[Int]Bool|) (|contents#$Memory_142073| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_162344 0)) ((($Memory_162344 (|domain#$Memory_162344| |T@[Int]Bool|) (|contents#$Memory_162344| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141565 0)) ((($Memory_141565 (|domain#$Memory_141565| |T@[Int]Bool|) (|contents#$Memory_141565| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_154417 0)) ((($Memory_154417 (|domain#$Memory_154417| |T@[Int]Bool|) (|contents#$Memory_154417| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_141974 0)) ((($Memory_141974 (|domain#$Memory_141974| |T@[Int]Bool|) (|contents#$Memory_141974| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_136305 0)) ((($Memory_136305 (|domain#$Memory_136305| |T@[Int]Bool|) (|contents#$Memory_136305| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_136169 0)) ((($Memory_136169 (|domain#$Memory_136169| |T@[Int]Bool|) (|contents#$Memory_136169| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_136105 0)) ((($Memory_136105 (|domain#$Memory_136105| |T@[Int]Bool|) (|contents#$Memory_136105| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_132108 0)) ((($Memory_132108 (|domain#$Memory_132108| |T@[Int]Bool|) (|contents#$Memory_132108| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_132021 0)) ((($Memory_132021 (|domain#$Memory_132021| |T@[Int]Bool|) (|contents#$Memory_132021| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_131934 0)) ((($Memory_131934 (|domain#$Memory_131934| |T@[Int]Bool|) (|contents#$Memory_131934| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_131847 0)) ((($Memory_131847 (|domain#$Memory_131847| |T@[Int]Bool|) (|contents#$Memory_131847| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_131760 0)) ((($Memory_131760 (|domain#$Memory_131760| |T@[Int]Bool|) (|contents#$Memory_131760| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_132373 0)) ((($Memory_132373 (|domain#$Memory_132373| |T@[Int]Bool|) (|contents#$Memory_132373| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_130886 0)) ((($Memory_130886 (|domain#$Memory_130886| |T@[Int]Bool|) (|contents#$Memory_130886| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_130952 0)) ((($Memory_130952 (|domain#$Memory_130952| |T@[Int]Bool|) (|contents#$Memory_130952| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_130805 0)) ((($Memory_130805 (|domain#$Memory_130805| |T@[Int]Bool|) (|contents#$Memory_130805| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_130724 0)) ((($Memory_130724 (|domain#$Memory_130724| |T@[Int]Bool|) (|contents#$Memory_130724| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_130643 0)) ((($Memory_130643 (|domain#$Memory_130643| |T@[Int]Bool|) (|contents#$Memory_130643| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_130562 0)) ((($Memory_130562 (|domain#$Memory_130562| |T@[Int]Bool|) (|contents#$Memory_130562| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_130046 0)) ((($Memory_130046 (|domain#$Memory_130046| |T@[Int]Bool|) (|contents#$Memory_130046| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_169392 0)) ((($Memory_169392 (|domain#$Memory_169392| |T@[Int]Bool|) (|contents#$Memory_169392| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey 0)) ((($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (Seq Int)) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-sort |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| 0)
(declare-datatypes ((T@$Memory_167642 0)) ((($Memory_167642 (|domain#$Memory_167642| |T@[Int]Bool|) (|contents#$Memory_167642| |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_161256 0)) ((($Memory_161256 (|domain#$Memory_161256| |T@[Int]Bool|) (|contents#$Memory_161256| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_130481 0)) ((($Memory_130481 (|domain#$Memory_130481| |T@[Int]Bool|) (|contents#$Memory_130481| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_129509 0)) ((($Memory_129509 (|domain#$Memory_129509| |T@[Int]Bool|) (|contents#$Memory_129509| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_128656 0)) ((($Memory_128656 (|domain#$Memory_128656| |T@[Int]Bool|) (|contents#$Memory_128656| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_127423 0)) ((($Memory_127423 (|domain#$Memory_127423| |T@[Int]Bool|) (|contents#$Memory_127423| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_126905 0)) ((($Memory_126905 (|domain#$Memory_126905| |T@[Int]Bool|) (|contents#$Memory_126905| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_89085 0)) (((Multiset_89085 (|v#Multiset_89085| |T@[$EventRep]Int|) (|l#Multiset_89085| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_89085| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_89085|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_171320 0)) ((($Mutation_171320 (|l#$Mutation_171320| T@$Location) (|p#$Mutation_171320| (Seq Int)) (|v#$Mutation_171320| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_167813 0)) ((($Mutation_167813 (|l#$Mutation_167813| T@$Location) (|p#$Mutation_167813| (Seq Int)) (|v#$Mutation_167813| T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) ) ))
(declare-datatypes ((T@$Mutation_165279 0)) ((($Mutation_165279 (|l#$Mutation_165279| T@$Location) (|p#$Mutation_165279| (Seq Int)) (|v#$Mutation_165279| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_165235 0)) ((($Mutation_165235 (|l#$Mutation_165235| T@$Location) (|p#$Mutation_165235| (Seq Int)) (|v#$Mutation_165235| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_156935 0)) ((($Mutation_156935 (|l#$Mutation_156935| T@$Location) (|p#$Mutation_156935| (Seq Int)) (|v#$Mutation_156935| T@$1_DualAttestation_Credential) ) ) ))
(declare-datatypes ((T@$Mutation_38672 0)) ((($Mutation_38672 (|l#$Mutation_38672| T@$Location) (|p#$Mutation_38672| (Seq Int)) (|v#$Mutation_38672| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_147652 0)) ((($Mutation_147652 (|l#$Mutation_147652| T@$Location) (|p#$Mutation_147652| (Seq Int)) (|v#$Mutation_147652| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_134846 0)) ((($Mutation_134846 (|l#$Mutation_134846| T@$Location) (|p#$Mutation_134846| (Seq Int)) (|v#$Mutation_134846| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_120689 0)) ((($Mutation_120689 (|l#$Mutation_120689| T@$Location) (|p#$Mutation_120689| (Seq Int)) (|v#$Mutation_120689| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_16749 0)) ((($Mutation_16749 (|l#$Mutation_16749| T@$Location) (|p#$Mutation_16749| (Seq Int)) (|v#$Mutation_16749| Int) ) ) ))
(declare-datatypes ((T@$Mutation_116002 0)) ((($Mutation_116002 (|l#$Mutation_116002| T@$Location) (|p#$Mutation_116002| (Seq Int)) (|v#$Mutation_116002| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_115256 0)) ((($Mutation_115256 (|l#$Mutation_115256| T@$Location) (|p#$Mutation_115256| (Seq Int)) (|v#$Mutation_115256| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_113816 0)) ((($Mutation_113816 (|l#$Mutation_113816| T@$Location) (|p#$Mutation_113816| (Seq Int)) (|v#$Mutation_113816| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_113070 0)) ((($Mutation_113070 (|l#$Mutation_113070| T@$Location) (|p#$Mutation_113070| (Seq Int)) (|v#$Mutation_113070| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_111630 0)) ((($Mutation_111630 (|l#$Mutation_111630| T@$Location) (|p#$Mutation_111630| (Seq Int)) (|v#$Mutation_111630| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_110884 0)) ((($Mutation_110884 (|l#$Mutation_110884| T@$Location) (|p#$Mutation_110884| (Seq Int)) (|v#$Mutation_110884| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_109444 0)) ((($Mutation_109444 (|l#$Mutation_109444| T@$Location) (|p#$Mutation_109444| (Seq Int)) (|v#$Mutation_109444| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_108698 0)) ((($Mutation_108698 (|l#$Mutation_108698| T@$Location) (|p#$Mutation_108698| (Seq Int)) (|v#$Mutation_108698| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_107258 0)) ((($Mutation_107258 (|l#$Mutation_107258| T@$Location) (|p#$Mutation_107258| (Seq Int)) (|v#$Mutation_107258| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_106512 0)) ((($Mutation_106512 (|l#$Mutation_106512| T@$Location) (|p#$Mutation_106512| (Seq Int)) (|v#$Mutation_106512| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_105072 0)) ((($Mutation_105072 (|l#$Mutation_105072| T@$Location) (|p#$Mutation_105072| (Seq Int)) (|v#$Mutation_105072| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_104326 0)) ((($Mutation_104326 (|l#$Mutation_104326| T@$Location) (|p#$Mutation_104326| (Seq Int)) (|v#$Mutation_104326| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_102886 0)) ((($Mutation_102886 (|l#$Mutation_102886| T@$Location) (|p#$Mutation_102886| (Seq Int)) (|v#$Mutation_102886| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_102140 0)) ((($Mutation_102140 (|l#$Mutation_102140| T@$Location) (|p#$Mutation_102140| (Seq Int)) (|v#$Mutation_102140| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_100700 0)) ((($Mutation_100700 (|l#$Mutation_100700| T@$Location) (|p#$Mutation_100700| (Seq Int)) (|v#$Mutation_100700| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_99954 0)) ((($Mutation_99954 (|l#$Mutation_99954| T@$Location) (|p#$Mutation_99954| (Seq Int)) (|v#$Mutation_99954| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_98514 0)) ((($Mutation_98514 (|l#$Mutation_98514| T@$Location) (|p#$Mutation_98514| (Seq Int)) (|v#$Mutation_98514| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_97768 0)) ((($Mutation_97768 (|l#$Mutation_97768| T@$Location) (|p#$Mutation_97768| (Seq Int)) (|v#$Mutation_97768| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_96328 0)) ((($Mutation_96328 (|l#$Mutation_96328| T@$Location) (|p#$Mutation_96328| (Seq Int)) (|v#$Mutation_96328| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_95582 0)) ((($Mutation_95582 (|l#$Mutation_95582| T@$Location) (|p#$Mutation_95582| (Seq Int)) (|v#$Mutation_95582| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_94142 0)) ((($Mutation_94142 (|l#$Mutation_94142| T@$Location) (|p#$Mutation_94142| (Seq Int)) (|v#$Mutation_94142| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_93396 0)) ((($Mutation_93396 (|l#$Mutation_93396| T@$Location) (|p#$Mutation_93396| (Seq Int)) (|v#$Mutation_93396| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_91918 0)) ((($Mutation_91918 (|l#$Mutation_91918| T@$Location) (|p#$Mutation_91918| (Seq Int)) (|v#$Mutation_91918| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_91172 0)) ((($Mutation_91172 (|l#$Mutation_91172| T@$Location) (|p#$Mutation_91172| (Seq Int)) (|v#$Mutation_91172| (Seq |T@#0|)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_VASPDomain_VASPDomain''| ((Seq T@$1_VASPDomain_VASPDomain)) Bool)
(declare-fun |$IsValid'$1_VASPDomain_VASPDomain'| (T@$1_VASPDomain_VASPDomain) Bool)
(declare-fun |$IndexOfVec'$1_VASPDomain_VASPDomain'| ((Seq T@$1_VASPDomain_VASPDomain) T@$1_VASPDomain_VASPDomain) Int)
(declare-fun |$IsValid'vec'$1_ValidatorConfig_Config''| ((Seq T@$1_ValidatorConfig_Config)) Bool)
(declare-fun |$IsValid'$1_ValidatorConfig_Config'| (T@$1_ValidatorConfig_Config) Bool)
(declare-fun |$IndexOfVec'$1_ValidatorConfig_Config'| ((Seq T@$1_ValidatorConfig_Config) T@$1_ValidatorConfig_Config) Int)
(declare-fun |$IsValid'vec'$1_XDX_XDX''| ((Seq T@$1_XDX_XDX)) Bool)
(declare-fun |$IsValid'$1_XDX_XDX'| (T@$1_XDX_XDX) Bool)
(declare-fun |$IndexOfVec'$1_XDX_XDX'| ((Seq T@$1_XDX_XDX) T@$1_XDX_XDX) Int)
(declare-fun |$IsValid'vec'$1_XUS_XUS''| ((Seq T@$1_XUS_XUS)) Bool)
(declare-fun |$IsValid'$1_XUS_XUS'| (T@$1_XUS_XUS) Bool)
(declare-fun |$IndexOfVec'$1_XUS_XUS'| ((Seq T@$1_XUS_XUS) T@$1_XUS_XUS) Int)
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_89085_| (|T@[$1_Event_EventHandle]Multiset_89085| T@$1_Event_EventHandle) T@Multiset_89085)
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
(declare-fun $1_SlidingNonce_spec_try_record_nonce (T@$signer Int) Int)
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
(declare-fun ReverseVec_16602 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_80694 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_79315 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_79512 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_79709 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_81285 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_80300 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_80103 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_79906 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_80497 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_79118 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_80891 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_81088 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_89085| |T@[$1_Event_EventHandle]Multiset_89085|) |T@[$1_Event_EventHandle]Multiset_89085|)
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
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |AccountAdministrationScriptsandybpl.1310:13|
 :skolemid |35|
))))
 :qid |AccountAdministrationScriptsandybpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |AccountAdministrationScriptsandybpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |AccountAdministrationScriptsandybpl.1323:17|
 :skolemid |38|
)))))
 :qid |AccountAdministrationScriptsandybpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |AccountAdministrationScriptsandybpl.1490:13|
 :skolemid |40|
))))
 :qid |AccountAdministrationScriptsandybpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |AccountAdministrationScriptsandybpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |AccountAdministrationScriptsandybpl.1503:17|
 :skolemid |43|
)))))
 :qid |AccountAdministrationScriptsandybpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |AccountAdministrationScriptsandybpl.1670:13|
 :skolemid |45|
))))
 :qid |AccountAdministrationScriptsandybpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |AccountAdministrationScriptsandybpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |AccountAdministrationScriptsandybpl.1683:17|
 :skolemid |48|
)))))
 :qid |AccountAdministrationScriptsandybpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |AccountAdministrationScriptsandybpl.1850:13|
 :skolemid |50|
))))
 :qid |AccountAdministrationScriptsandybpl.1848:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |AccountAdministrationScriptsandybpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |AccountAdministrationScriptsandybpl.1863:17|
 :skolemid |53|
)))))
 :qid |AccountAdministrationScriptsandybpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |AccountAdministrationScriptsandybpl.2030:13|
 :skolemid |55|
))))
 :qid |AccountAdministrationScriptsandybpl.2028:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |AccountAdministrationScriptsandybpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |AccountAdministrationScriptsandybpl.2043:17|
 :skolemid |58|
)))))
 :qid |AccountAdministrationScriptsandybpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |AccountAdministrationScriptsandybpl.2210:13|
 :skolemid |60|
))))
 :qid |AccountAdministrationScriptsandybpl.2208:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |AccountAdministrationScriptsandybpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |AccountAdministrationScriptsandybpl.2223:17|
 :skolemid |63|
)))))
 :qid |AccountAdministrationScriptsandybpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |AccountAdministrationScriptsandybpl.2390:13|
 :skolemid |65|
))))
 :qid |AccountAdministrationScriptsandybpl.2388:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |AccountAdministrationScriptsandybpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |AccountAdministrationScriptsandybpl.2403:17|
 :skolemid |68|
)))))
 :qid |AccountAdministrationScriptsandybpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |AccountAdministrationScriptsandybpl.2570:13|
 :skolemid |70|
))))
 :qid |AccountAdministrationScriptsandybpl.2568:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |AccountAdministrationScriptsandybpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |AccountAdministrationScriptsandybpl.2583:17|
 :skolemid |73|
)))))
 :qid |AccountAdministrationScriptsandybpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'address'| (seq.nth v@@28 i@@36)))
 :qid |AccountAdministrationScriptsandybpl.2750:13|
 :skolemid |75|
))))
 :qid |AccountAdministrationScriptsandybpl.2748:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |AccountAdministrationScriptsandybpl.2755:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |AccountAdministrationScriptsandybpl.2763:17|
 :skolemid |78|
)))))
 :qid |AccountAdministrationScriptsandybpl.2759:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'u8'| (seq.nth v@@30 i@@39)))
 :qid |AccountAdministrationScriptsandybpl.2930:13|
 :skolemid |80|
))))
 :qid |AccountAdministrationScriptsandybpl.2928:28|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |AccountAdministrationScriptsandybpl.2935:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |AccountAdministrationScriptsandybpl.2943:17|
 :skolemid |83|
)))))
 :qid |AccountAdministrationScriptsandybpl.2939:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |AccountAdministrationScriptsandybpl.3116:15|
 :skolemid |85|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |AccountAdministrationScriptsandybpl.3132:15|
 :skolemid |86|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |AccountAdministrationScriptsandybpl.3199:15|
 :skolemid |87|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |AccountAdministrationScriptsandybpl.3202:15|
 :skolemid |88|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_89085| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream) v@@32) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |AccountAdministrationScriptsandybpl.3304:80|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |AccountAdministrationScriptsandybpl.3310:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |AccountAdministrationScriptsandybpl.3360:82|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |AccountAdministrationScriptsandybpl.3366:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |AccountAdministrationScriptsandybpl.3416:80|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |AccountAdministrationScriptsandybpl.3422:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |AccountAdministrationScriptsandybpl.3472:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |AccountAdministrationScriptsandybpl.3478:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |AccountAdministrationScriptsandybpl.3528:76|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |AccountAdministrationScriptsandybpl.3534:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |AccountAdministrationScriptsandybpl.3584:78|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |AccountAdministrationScriptsandybpl.3590:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |AccountAdministrationScriptsandybpl.3640:74|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |AccountAdministrationScriptsandybpl.3646:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |AccountAdministrationScriptsandybpl.3696:69|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |AccountAdministrationScriptsandybpl.3702:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |AccountAdministrationScriptsandybpl.3752:70|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |AccountAdministrationScriptsandybpl.3758:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |AccountAdministrationScriptsandybpl.3808:60|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |AccountAdministrationScriptsandybpl.3814:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |AccountAdministrationScriptsandybpl.3864:66|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |AccountAdministrationScriptsandybpl.3870:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |AccountAdministrationScriptsandybpl.3920:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |AccountAdministrationScriptsandybpl.3926:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |AccountAdministrationScriptsandybpl.3976:63|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |AccountAdministrationScriptsandybpl.3982:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |AccountAdministrationScriptsandybpl.4032:79|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |AccountAdministrationScriptsandybpl.4038:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |AccountAdministrationScriptsandybpl.4088:82|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |AccountAdministrationScriptsandybpl.4094:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |AccountAdministrationScriptsandybpl.4144:88|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |AccountAdministrationScriptsandybpl.4150:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |AccountAdministrationScriptsandybpl.4200:72|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |AccountAdministrationScriptsandybpl.4206:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |AccountAdministrationScriptsandybpl.4260:15|
 :skolemid |125|
)))
(assert (forall ((addr Int) ) (! true
 :qid |AccountAdministrationScriptsandybpl.4269:15|
 :skolemid |126|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |AccountAdministrationScriptsandybpl.4299:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |AccountAdministrationScriptsandybpl.4506:36|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |AccountAdministrationScriptsandybpl.4962:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |AccountAdministrationScriptsandybpl.5104:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |AccountAdministrationScriptsandybpl.5117:64|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |AccountAdministrationScriptsandybpl.5130:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |AccountAdministrationScriptsandybpl.5143:72|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |AccountAdministrationScriptsandybpl.5172:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |AccountAdministrationScriptsandybpl.5194:46|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((account T@$signer) (seq_nonce Int) ) (! (let (($$res ($1_SlidingNonce_spec_try_record_nonce account seq_nonce)))
(|$IsValid'u64'| $$res))
 :qid |AccountAdministrationScriptsandybpl.5205:15|
 :skolemid |136|
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |AccountAdministrationScriptsandybpl.5218:49|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |AccountAdministrationScriptsandybpl.5434:71|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |AccountAdministrationScriptsandybpl.5448:91|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |AccountAdministrationScriptsandybpl.5462:113|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |AccountAdministrationScriptsandybpl.5476:75|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |AccountAdministrationScriptsandybpl.5490:73|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |AccountAdministrationScriptsandybpl.5510:48|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |AccountAdministrationScriptsandybpl.5526:57|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |AccountAdministrationScriptsandybpl.5540:83|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |AccountAdministrationScriptsandybpl.5554:103|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |AccountAdministrationScriptsandybpl.5568:125|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |AccountAdministrationScriptsandybpl.5582:87|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |AccountAdministrationScriptsandybpl.5596:85|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |AccountAdministrationScriptsandybpl.5610:48|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |AccountAdministrationScriptsandybpl.5631:45|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |AccountAdministrationScriptsandybpl.5645:51|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |AccountAdministrationScriptsandybpl.5668:48|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |AccountAdministrationScriptsandybpl.5974:49|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |AccountAdministrationScriptsandybpl.5987:65|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |AccountAdministrationScriptsandybpl.6496:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |AccountAdministrationScriptsandybpl.6509:45|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |AccountAdministrationScriptsandybpl.6522:37|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |AccountAdministrationScriptsandybpl.6535:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |AccountAdministrationScriptsandybpl.6549:55|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |AccountAdministrationScriptsandybpl.6569:38|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |AccountAdministrationScriptsandybpl.6590:44|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |AccountAdministrationScriptsandybpl.6641:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |AccountAdministrationScriptsandybpl.6703:53|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |AccountAdministrationScriptsandybpl.6765:45|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |AccountAdministrationScriptsandybpl.6791:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |AccountAdministrationScriptsandybpl.6805:55|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |AccountAdministrationScriptsandybpl.6822:38|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |AccountAdministrationScriptsandybpl.6836:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |AccountAdministrationScriptsandybpl.6850:48|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |AccountAdministrationScriptsandybpl.6864:40|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |AccountAdministrationScriptsandybpl.6884:41|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |AccountAdministrationScriptsandybpl.6899:53|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |AccountAdministrationScriptsandybpl.6913:53|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |AccountAdministrationScriptsandybpl.6927:45|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |AccountAdministrationScriptsandybpl.6944:60|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |AccountAdministrationScriptsandybpl.6961:60|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |AccountAdministrationScriptsandybpl.6978:52|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |AccountAdministrationScriptsandybpl.6995:57|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |AccountAdministrationScriptsandybpl.9266:68|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |AccountAdministrationScriptsandybpl.9288:66|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |AccountAdministrationScriptsandybpl.9314:66|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))))
 :qid |AccountAdministrationScriptsandybpl.9343:56|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))))
 :qid |AccountAdministrationScriptsandybpl.9373:56|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@57) true)
 :qid |AccountAdministrationScriptsandybpl.9707:31|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@58) true)
 :qid |AccountAdministrationScriptsandybpl.10051:31|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@59)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@59)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@59))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@59))))
 :qid |AccountAdministrationScriptsandybpl.10070:35|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@60)))
 :qid |AccountAdministrationScriptsandybpl.10496:45|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@61))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@61))))
 :qid |AccountAdministrationScriptsandybpl.10515:50|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@62)))
 :qid |AccountAdministrationScriptsandybpl.10530:52|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@63) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@63)))
 :qid |AccountAdministrationScriptsandybpl.10544:46|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@64) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@64)))
 :qid |AccountAdministrationScriptsandybpl.10766:38|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@65) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@65)))
 :qid |AccountAdministrationScriptsandybpl.10780:39|
 :skolemid |193|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66))))
 :qid |AccountAdministrationScriptsandybpl.10807:65|
 :skolemid |194|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |AccountAdministrationScriptsandybpl.11192:60|
 :skolemid |195|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |AccountAdministrationScriptsandybpl.11209:66|
 :skolemid |196|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |AccountAdministrationScriptsandybpl.11238:50|
 :skolemid |197|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |AccountAdministrationScriptsandybpl.11257:45|
 :skolemid |198|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |AccountAdministrationScriptsandybpl.12119:87|
 :skolemid |199|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |AccountAdministrationScriptsandybpl.12331:47|
 :skolemid |200|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |AccountAdministrationScriptsandybpl.12351:58|
 :skolemid |201|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@74) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@74)))
 :qid |AccountAdministrationScriptsandybpl.12366:39|
 :skolemid |202|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@75)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@75))))
 :qid |AccountAdministrationScriptsandybpl.12393:58|
 :skolemid |203|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@76)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@76))))
 :qid |AccountAdministrationScriptsandybpl.12410:58|
 :skolemid |204|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@77) true)
 :qid |AccountAdministrationScriptsandybpl.12425:51|
 :skolemid |205|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@78))))
 :qid |AccountAdministrationScriptsandybpl.12442:60|
 :skolemid |206|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@79)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@79)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@79))))
 :qid |AccountAdministrationScriptsandybpl.12755:47|
 :skolemid |207|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@80)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@80))))
 :qid |AccountAdministrationScriptsandybpl.12777:63|
 :skolemid |208|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@81) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@81)))
 :qid |AccountAdministrationScriptsandybpl.12792:57|
 :skolemid |209|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@82)))
 :qid |AccountAdministrationScriptsandybpl.12805:55|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@83) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@83)))
 :qid |AccountAdministrationScriptsandybpl.12819:55|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@84) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@84)))
 :qid |AccountAdministrationScriptsandybpl.12833:47|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@85)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@85))))
 :qid |AccountAdministrationScriptsandybpl.12850:54|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@86)))
 :qid |AccountAdministrationScriptsandybpl.12864:55|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@87)))
 :qid |AccountAdministrationScriptsandybpl.12878:57|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@88)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@88))))
 :qid |AccountAdministrationScriptsandybpl.12900:56|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@89)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@89))))
 :qid |AccountAdministrationScriptsandybpl.12925:52|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@90)))
 :qid |AccountAdministrationScriptsandybpl.12941:54|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90))
)))
(assert (forall ((public_key (Seq Int)) ) (! (let (($$res@@0 ($1_Authenticator_spec_ed25519_authentication_key public_key)))
(|$IsValid'vec'u8''| $$res@@0))
 :qid |AccountAdministrationScriptsandybpl.14700:15|
 :skolemid |219|
)))
(assert (forall ((s@@91 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) ) (! (= (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@91)  (and (|$IsValid'vec'u8''| (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@91)) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| s@@91))))
 :qid |AccountAdministrationScriptsandybpl.14718:69|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| s@@91))
)))
(assert (forall ((s@@92 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@92) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@92)))
 :qid |AccountAdministrationScriptsandybpl.15281:55|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@93)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@93))))
 :qid |AccountAdministrationScriptsandybpl.19206:47|
 :skolemid |459|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@94)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@94))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@94))))
 :qid |AccountAdministrationScriptsandybpl.19230:47|
 :skolemid |460|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@95)))
 :qid |AccountAdministrationScriptsandybpl.19471:49|
 :skolemid |461|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@96)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@96))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@96))))
 :qid |AccountAdministrationScriptsandybpl.19514:49|
 :skolemid |462|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@97)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@97))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@97))))
 :qid |AccountAdministrationScriptsandybpl.19543:48|
 :skolemid |463|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@97))
)))
(assert (forall ((s@@98 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@98)))
 :qid |AccountAdministrationScriptsandybpl.19838:47|
 :skolemid |464|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@98))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_16602 v@@33)))
 (and (= (seq.len r@@0) (seq.len v@@33)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@0))) (= (seq.nth r@@0 i@@42) (seq.nth v@@33 (- (- (seq.len v@@33) i@@42) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@42))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16602 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_80694 v@@34)))
 (and (= (seq.len r@@1) (seq.len v@@34)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@1))) (= (seq.nth r@@1 i@@43) (seq.nth v@@34 (- (- (seq.len v@@34) i@@43) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@43))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80694 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_79315 v@@35)))
 (and (= (seq.len r@@2) (seq.len v@@35)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@2))) (= (seq.nth r@@2 i@@44) (seq.nth v@@35 (- (- (seq.len v@@35) i@@44) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@44))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79315 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_79512 v@@36)))
 (and (= (seq.len r@@3) (seq.len v@@36)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@3))) (= (seq.nth r@@3 i@@45) (seq.nth v@@36 (- (- (seq.len v@@36) i@@45) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@45))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79512 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_79709 v@@37)))
 (and (= (seq.len r@@4) (seq.len v@@37)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@4))) (= (seq.nth r@@4 i@@46) (seq.nth v@@37 (- (- (seq.len v@@37) i@@46) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@46))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79709 v@@37))
)))
(assert (forall ((v@@38 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_81285 v@@38)))
 (and (= (seq.len r@@5) (seq.len v@@38)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@5))) (= (seq.nth r@@5 i@@47) (seq.nth v@@38 (- (- (seq.len v@@38) i@@47) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@47))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_81285 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_80300 v@@39)))
 (and (= (seq.len r@@6) (seq.len v@@39)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@6))) (= (seq.nth r@@6 i@@48) (seq.nth v@@39 (- (- (seq.len v@@39) i@@48) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@48))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80300 v@@39))
)))
(assert (forall ((v@@40 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_80103 v@@40)))
 (and (= (seq.len r@@7) (seq.len v@@40)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@7))) (= (seq.nth r@@7 i@@49) (seq.nth v@@40 (- (- (seq.len v@@40) i@@49) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@49))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80103 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_79906 v@@41)))
 (and (= (seq.len r@@8) (seq.len v@@41)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@8))) (= (seq.nth r@@8 i@@50) (seq.nth v@@41 (- (- (seq.len v@@41) i@@50) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@50))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79906 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_80497 v@@42)))
 (and (= (seq.len r@@9) (seq.len v@@42)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@9))) (= (seq.nth r@@9 i@@51) (seq.nth v@@42 (- (- (seq.len v@@42) i@@51) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@51))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80497 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_79118 v@@43)))
 (and (= (seq.len r@@10) (seq.len v@@43)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@10))) (= (seq.nth r@@10 i@@52) (seq.nth v@@43 (- (- (seq.len v@@43) i@@52) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@52))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_79118 v@@43))
)))
(assert (forall ((v@@44 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@11 (ReverseVec_80891 v@@44)))
 (and (= (seq.len r@@11) (seq.len v@@44)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@11))) (= (seq.nth r@@11 i@@53) (seq.nth v@@44 (- (- (seq.len v@@44) i@@53) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@53))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_80891 v@@44))
)))
(assert (forall ((v@@45 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@12 (ReverseVec_81088 v@@45)))
 (and (= (seq.len r@@12) (seq.len v@@45)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@12))) (= (seq.nth r@@12 i@@54) (seq.nth v@@45 (- (- (seq.len v@@45) i@@54) 1))))
 :qid |AccountAdministrationScriptsandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@54))
))))
 :qid |AccountAdministrationScriptsandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_81088 v@@45))
)))
(assert (forall ((|l#0| Bool) (i@@55 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55) |l#0|)
 :qid |AccountAdministrationScriptsandybpl.245:54|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_89085|) (|l#1| |T@[$1_Event_EventHandle]Multiset_89085|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_89085| (|Select__T@[$1_Event_EventHandle]Multiset_89085_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_89085| (|Select__T@[$1_Event_EventHandle]Multiset_89085_| |l#1| handle@@0))))
(Multiset_89085 (|lambda#3| (|v#Multiset_89085| (|Select__T@[$1_Event_EventHandle]Multiset_89085_| |l#0@@0| handle@@0)) (|v#Multiset_89085| (|Select__T@[$1_Event_EventHandle]Multiset_89085_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |AccountAdministrationScriptsandybpl.3273:13|
 :skolemid |544|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@46) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@46)))
 :qid |AccountAdministrationScriptsandybpl.124:29|
 :skolemid |545|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_161256)
(declare-fun $t5 () Int)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun _$t0 () T@$signer)
(declare-fun $t4 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun _$t1 () (Seq Int))
(declare-fun $t8@0 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@5 () T@$Memory_161256)
(declare-fun $t3 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1 () T@$Mutation_165279)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@4 () T@$Memory_161256)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $1_DiemAccount_DiemAccount_$memory@3 () T@$Memory_161256)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0 () Int)
(declare-fun |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_exists_at$3$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 () Int)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 () T@$Mutation_116002)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 () T@$Mutation_116002)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_161256)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_161256)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0 () T@$Mutation_116002)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 () T@$Mutation_165279)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_161256)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 () T@$Mutation_165235)
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
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 () Int)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_127423)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_162209)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_160273)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_162344)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_162435)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_162526)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_126905)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t6 () Int)
(declare-fun $es () T@$EventStore)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_rotate_authentication_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 319753) (let ((L2_correct  (and (=> (= (ControlFlow 0 212249) (- 0 322412)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t5)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (not (= (seq.len _$t1) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t5)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (not (= (seq.len _$t1) 32))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (=> (= (ControlFlow 0 212249) (- 0 322457)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t5)) (= 5 $t8@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0) (= 1 $t8@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4))) (= 5 $t8@0))) (and (not (= (seq.len _$t1) 32)) (= 7 $t8@0))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0) (= 1 $t8@0))) (= 1 $t8@0)) (= 7 $t8@0)))))))
(let ((anon10_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= $t8@0 $abort_code@8) (= (ControlFlow 0 212081) 212249))) L2_correct)))
(let ((anon9_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= $t8@0 $abort_code@6) (= (ControlFlow 0 212263) 212249))) L2_correct)))
(let ((anon8_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t8@0 $abort_code@4) (= (ControlFlow 0 212277) 212249))) L2_correct)))
(let ((anon10_Else_correct  (=> (not $abort_flag@7) (and (=> (= (ControlFlow 0 212067) (- 0 322325)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t5)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t5))) (and (=> (= (ControlFlow 0 212067) (- 0 322337)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (and (=> (= (ControlFlow 0 212067) (- 0 322348)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| $t4)))) (and (=> (= (ControlFlow 0 212067) (- 0 322362)) (not (not (= (seq.len _$t1) 32)))) (=> (not (not (= (seq.len _$t1) 32))) (and (=> (= (ControlFlow 0 212067) (- 0 322376)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0))))) 0)) (=> (= (ControlFlow 0 212067) (- 0 322387)) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@5) $t3)) _$t1)))))))))))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct  (=> (not inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0) (=> (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2 ($Mutation_165279 (|l#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1) (|p#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1) |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) (=> (and (and (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) 1)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2))) 0))) (and (= (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2)) 0) inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (|p#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@4 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@3) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@3) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)) (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@3)))) (= $abort_code@8 $abort_code@7)) (and (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@4) (= $abort_flag@7 $abort_flag@6)))) (and (=> (= (ControlFlow 0 211869) 212081) anon10_Then_correct) (=> (= (ControlFlow 0 211869) 212067) anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct  (=> (= $abort_code@8 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1) (=> (and (= $1_DiemAccount_DiemAccount_$memory@5 $1_DiemAccount_DiemAccount_$memory@3) (= $abort_flag@7 true)) (and (=> (= (ControlFlow 0 211715) 212081) anon10_Then_correct) (=> (= (ControlFlow 0 211715) 212067) anon10_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct  (=> inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0 (=> (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1))) 0)) (= 7 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0)) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 211895) 211715))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)) (= |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_restore_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1 ($Mutation_165279 (|l#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2)))) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t12@0  (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@1))) 0))))) (and (=> (= (ControlFlow 0 211787) 211895) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Then_correct) (=> (= (ControlFlow 0 211787) 211869) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon18_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct  (=> (and (and $abort_flag@6 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 $abort_code@7) (= (ControlFlow 0 211909) 211715))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct  (=> (= $abort_flag@6 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0)) (and (=> (= (ControlFlow 0 211961) 211909) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct) (=> (= (ControlFlow 0 211961) 211787) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1)) (= (ControlFlow 0 211959) 211961)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then$1_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1) (=> (and (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1 ($Mutation_165235 ($Global inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1))) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@7 $abort_code@6) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@2 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@1))) (and (=> (= (ControlFlow 0 211745) 211909) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Then_correct) (=> (= (ControlFlow 0 211745) 211787) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$3$$t1@1 (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t9@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1))) (and (=> (= (ControlFlow 0 211723) 211959) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Then_correct) (=> (= (ControlFlow 0 211723) 211745) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon16_Else_correct)))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$3$$t1@1) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 211709) 211715))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct  (=> (and (not $abort_flag@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 5)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_exists_at$3$$t1@1 inline$$1_DiemAccount_exists_at$3$$t1@1))) (and (=> (= (ControlFlow 0 211693) 211723) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Then_correct) (=> (= (ControlFlow 0 211693) 211709) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon15_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@6 $abort_code@6)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t6@1 $abort_code@6) (= (ControlFlow 0 211975) 211715))) inline$$1_DiemAccount_restore_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_exists_at$3$anon0_correct  (=> (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1) (=> (and (= inline$$1_DiemAccount_exists_at$3$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@3) inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1)) (= inline$$1_DiemAccount_exists_at$3$$t1@1 inline$$1_DiemAccount_exists_at$3$$t1@1)) (and (=> (= (ControlFlow 0 211651) 211975) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 211651) 211693) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t10@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_165279| inline$$1_DiemAccount_restore_key_rotation_capability$0$$t11@0)) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (and (= inline$$1_DiemAccount_restore_key_rotation_capability$0$$t4@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 211657) 211651))) inline$$1_DiemAccount_exists_at$3$anon0_correct))))
(let ((anon9_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 211979) 211657)) inline$$1_DiemAccount_restore_key_rotation_capability$0$anon0_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct  (=> (and (and (and inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1 ($Mutation_116002 (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2 ($Mutation_116002 (|l#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) (|p#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1) _$t1)) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2) ($1_DiemAccount_DiemAccount (|v#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))))))) (and (and (= $1_DiemAccount_DiemAccount_$memory@2 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)) (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3)))) (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@2)) (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)))) (and (=> (= (ControlFlow 0 210956) 212263) anon9_Then_correct) (=> (= (ControlFlow 0 210956) 211979) anon9_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct  (=> (= $1_DiemAccount_DiemAccount_$memory@3 $1_DiemAccount_DiemAccount_$memory@1) (=> (and (= $abort_code@6 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1) (= $abort_flag@5 true)) (and (=> (= (ControlFlow 0 210752) 212263) anon9_Then_correct) (=> (= (ControlFlow 0 210752) 211979) anon9_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= (ControlFlow 0 210906) 210752))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct  (=> (and (and (and (not $abort_flag@4) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 (= |inline$$1_Vector_length'u8'$0$l@1| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1)))) (and (=> (= (ControlFlow 0 210890) 210956) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct) (=> (= (ControlFlow 0 210890) 210906) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 210970) 210752))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u8'$0$l@1| (seq.len _$t1)) (and (=> (= (ControlFlow 0 210832) 210970) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct) (=> (= (ControlFlow 0 210832) 210890) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct  (=> (and (and (not $abort_flag@4) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= (ControlFlow 0 210838) 210832))) |inline$$1_Vector_length'u8'$0$anon0_correct|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@5) (= (ControlFlow 0 210984) 210752))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) (and (=> (= (ControlFlow 0 211036) 210984) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 211036) 210838) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1)) (= (ControlFlow 0 211034) 211036)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1 ($Mutation_165235 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1))) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1))) (and (=> (= (ControlFlow 0 210782) 210984) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct) (=> (= (ControlFlow 0 210782) 210838) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1))) (and (=> (= (ControlFlow 0 210760) 211034) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct) (=> (= (ControlFlow 0 210760) 210782) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= (ControlFlow 0 210746) 210752))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 210730) 210760) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct) (=> (= (ControlFlow 0 210730) 210746) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1 $abort_code@4) (= (ControlFlow 0 211050) 210752))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 210688) 211050) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct) (=> (= (ControlFlow 0 210688) 210730) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0)) 0) (=> (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0)) 0) (= (seq.len (|p#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0)) 0)) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= _$t1 _$t1)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 210694) 210688))) inline$$1_DiemAccount_exists_at$2$anon0_correct)))))
(let ((anon8_Else_correct  (=> (not $abort_flag@3) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1) (= (ControlFlow 0 211054) 210694)) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2 ($Mutation_165279 (|l#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)) (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0))) (and (and (= $abort_code@4 $abort_code@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0)) (and (= $abort_flag@3 $abort_flag@2) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory@0)))) (and (=> (= (ControlFlow 0 209892) 212277) anon8_Then_correct) (=> (= (ControlFlow 0 209892) 211054) anon8_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct  (=> (and (and (= $abort_code@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0)) (and (= $abort_flag@3 true) (= $1_DiemAccount_DiemAccount_$memory@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 209569) 212277) anon8_Then_correct) (=> (= (ControlFlow 0 209569) 211054) anon8_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0) (= (ControlFlow 0 209918) 209569))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct  (=> (and (not $abort_flag@2) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1 ($Mutation_165279 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1 (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1))) 0)))) (and (=> (= (ControlFlow 0 209800) 209918) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 209800) 209892) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@3) (= (ControlFlow 0 209932) 209569))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0) (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 209984) 209932) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 209984) 209800) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 209982) 209984)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1 ($Mutation_165235 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1)) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 209754) 209932) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 209754) 209800) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct  (=> inline$$1_DiemAccount_exists_at$1$$t1@1 (and (=> (= (ControlFlow 0 209732) 209982) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 209732) 209754) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= (ControlFlow 0 209728) 209569))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 209712) 209732) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 209712) 209728) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 209998) 209569))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 209670) 209998) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct) (=> (= (ControlFlow 0 209670) 209712) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 209676) 209670)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= (ControlFlow 0 209563) 209569))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 209547) 209676) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct) (=> (= (ControlFlow 0 209547) 209563) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1)) (= (ControlFlow 0 209507) 209547)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 209513) 209507)) inline$$Not$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1 $abort_code@2) (= (ControlFlow 0 210012) 209569))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0))) (and (=> (= (ControlFlow 0 209383) 210012) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 209383) 209513) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct  (=> (= $abort_code@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1) (=> (and (= $abort_flag@1 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0)) (and (=> (= (ControlFlow 0 209331) 210012) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct) (=> (= (ControlFlow 0 209331) 209513) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 $abort_code@1) (= (ControlFlow 0 209397) 209331))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0)) (and (=> (= (ControlFlow 0 209449) 209397) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 209449) 209383) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= (ControlFlow 0 209447) 209449)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1))) (and (=> (= (ControlFlow 0 209349) 209397) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct) (=> (= (ControlFlow 0 209349) 209383) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct  (=> inline$$1_DiemAccount_exists_at$0$$t1@1 (and (=> (= (ControlFlow 0 209335) 209447) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct) (=> (= (ControlFlow 0 209335) 209349) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= (ControlFlow 0 209325) 209331))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 209309) 209335) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct) (=> (= (ControlFlow 0 209309) 209325) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 209267) 209463) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct) (=> (= (ControlFlow 0 209267) 209309) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 209273) 209267)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0)) 0) (= (seq.len (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0 (|$addr#$signer| _$t0)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 (|$addr#$signer| _$t0))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0) (= (ControlFlow 0 209469) 209273)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct))))
(let ((anon0$1_correct  (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@0) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@0)))) 0)) (= addr@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@0))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16395:20|
 :skolemid |227|
)) (=> (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@1) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@1) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@1)))) 0)) (= addr@@1 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@1))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16399:20|
 :skolemid |228|
)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@2)))
 :qid |AccountAdministrationScriptsandybpl.16403:20|
 :skolemid |229|
))) (and (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (and (= addr@@3 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@3)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@3)))
 :qid |AccountAdministrationScriptsandybpl.16407:20|
 :skolemid |230|
)) (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@4)))
 :qid |AccountAdministrationScriptsandybpl.16411:20|
 :skolemid |231|
)))) (=> (and (and (and (and (and (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@5)))
 :qid |AccountAdministrationScriptsandybpl.16415:22|
 :skolemid |232|
)) (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@6)))
 :qid |AccountAdministrationScriptsandybpl.16415:218|
 :skolemid |233|
))) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@7)))
 :qid |AccountAdministrationScriptsandybpl.16415:415|
 :skolemid |234|
))) (|$IsValid'address'| (|$addr#$signer| _$t0))) (and (|$IsValid'vec'u8''| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc))) 1))))
 :qid |AccountAdministrationScriptsandybpl.16424:20|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0))
)))) (and (and (and (= $t3 (|$addr#$signer| _$t0)) (= $t4 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3))) 0))) (and (= $t5 (|$addr#$signer| _$t0)) (let ((addr@@8 (|$addr#$signer| _$t0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@8)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@8) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@8)))))))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t6 (|$addr#$signer| _$t0)) (= (ControlFlow 0 210018) 209469))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_89085| stream@@0) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@0) v@@47) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 207834) 210018)) anon0$1_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 319753) 207834) inline$$InitEventStore$0$anon0_correct)))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17 () Bool)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_136305)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_162526)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@15 () Int)
(declare-fun $abort_flag@16 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_162526)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_162526)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_162526)
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
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
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
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
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
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
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
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_128656)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_129509)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_141305)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_141392)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_136585)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_136672)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_141974)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_141565)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_142073)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_141656)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_136105)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_136169)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_141747)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_142172)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_155527)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_153144)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_160025)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_154061)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_153997)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 322769) (let ((anon4_Else_correct  (=> (not $abort_flag@17) (and (=> (= (ControlFlow 0 217570) (- 0 326284)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0))) (and (=> (= (ControlFlow 0 217570) (- 0 326295)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 217570) (- 0 326305)) (not (not (or (or (let ((addr@@9 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@9)) 5))) (let ((addr@@10 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@10)) 6)))) (let ((addr@@11 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@11)) 2))))))) (=> (not (not (or (or (let ((addr@@12 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@12)) 5))) (let ((addr@@13 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@13)) 6)))) (let ((addr@@14 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@14)) 2)))))) (and (=> (= (ControlFlow 0 217570) (- 0 326316)) (not (not (or (or (let ((addr@@15 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@15)) 5))) (let ((addr@@16 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@16)) 6)))) (let ((addr@@17 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@17)) 2))))))) (=> (not (not (or (or (let ((addr@@18 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@18)) 5))) (let ((addr@@19 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@19)) 6)))) (let ((addr@@20 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@20)) 2)))))) (and (=> (= (ControlFlow 0 217570) (- 0 326327)) (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory@3|) (|$addr#$signer| _$t0@@0))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory@3|) (|$addr#$signer| _$t0@@0)) (=> (= (ControlFlow 0 217570) (- 0 326336)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory@3|) (|$addr#$signer| _$t0@@0)) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))))))))))))))))
(let ((anon4_Then_correct  (=> (and $abort_flag@17 (= $abort_code@15 $abort_code@15)) (and (=> (= (ControlFlow 0 217718) (- 0 326163)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (or (or (let ((addr@@21 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@21)) 5))) (let ((addr@@22 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@22) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@22)) 6)))) (let ((addr@@23 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@23) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@23)) 2)))))) (not (or (or (let ((addr@@24 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@24) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@24)) 5))) (let ((addr@@25 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@25) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@25)) 6)))) (let ((addr@@26 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@26)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (not (or (or (let ((addr@@27 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@27)) 5))) (let ((addr@@28 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@28)) 6)))) (let ((addr@@29 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@29)) 2)))))) (not (or (or (let ((addr@@30 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@30) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@30)) 5))) (let ((addr@@31 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@31) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@31)) 6)))) (let ((addr@@32 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@32) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@32)) 2)))))) (=> (= (ControlFlow 0 217718) (- 0 326192)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (= 6 $abort_code@15)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $abort_code@15))) (and (not (or (or (let ((addr@@33 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@33) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@33)) 5))) (let ((addr@@34 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@34) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@34)) 6)))) (let ((addr@@35 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@35) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@35)) 2))))) (= 7 $abort_code@15))) (and (not (or (or (let ((addr@@36 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@36) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@36)) 5))) (let ((addr@@37 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@37) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@37)) 6)))) (let ((addr@@38 (|$addr#$signer| _$t0@@0)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@38) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@38)) 2))))) (= 7 $abort_code@15))) (= 5 $abort_code@15)) (= 7 $abort_code@15)) (= 6 $abort_code@15))))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16) (= $abort_code@15 $abort_code@14)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@17 $abort_flag@16))) (and (=> (= (ControlFlow 0 217348) 217718) anon4_Then_correct) (=> (= (ControlFlow 0 217348) 217570) anon4_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@15 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@17 true)) (and (=> (= (ControlFlow 0 214433) 217718) anon4_Then_correct) (=> (= (ControlFlow 0 214433) 217570) anon4_Else_correct))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@16 (=> (and (and (= $abort_code@14 $abort_code@14) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@14)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 217362) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@14 $EXEC_FAILURE_CODE) (= $abort_flag@16 true)) (and (=> (= (ControlFlow 0 217414) 217362) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 217414) 217348) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 217412) 217414)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0))) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_162526 (|Store__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| _$t0@@0) |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@14 $abort_code@13) (= $abort_flag@16 $abort_flag@15))) (and (=> (= (ControlFlow 0 217338) 217362) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 217338) 217348) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 217316) 217412) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 217316) 217338) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@15 (=> (and (and (= $abort_code@13 $abort_code@13) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@13)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 217428) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@15 $abort_flag@14)) (and (= $abort_code@13 $abort_code@12) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 217268) 217428) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 217268) 217316) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@15 true)) (and (= $abort_code@13 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 217298) 217428) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 217298) 217316) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 217240) 217298) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 217240) 217268) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@0 (= (ControlFlow 0 217304) 217240)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 217087) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 217071) 217304) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 217071) 217087) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1|)) (= (ControlFlow 0 217035) 217071)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= (ControlFlow 0 217041) 217035)) inline$$Not$0$anon0_correct@@0))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 216995) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 216979) 217041) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 216979) 216995) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@14 (=> (and (and (= $abort_code@12 $abort_code@12) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@12)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 217442) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@14 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@12 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 216869) 217442) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 216869) 216979) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@10) (= (ControlFlow 0 216863) 216869))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@7@@0 (= $abort_code@6@@0 $abort_code@6@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@6@@0) (= (ControlFlow 0 216901) 216869))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@3@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@3@@0) (= (ControlFlow 0 216933) 216869))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@14 $abort_flag@13)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@12 $abort_code@11))) (and (=> (= (ControlFlow 0 216849) 217442) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 216849) 216979) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@12) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@11 $abort_code@10)) (and (= $abort_flag@13 $abort_flag@12) (= (ControlFlow 0 216837) 216849))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 216795) 216863) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 216795) 216837) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@10 $abort_code@10)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 216813) 216863) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 216813) 216837) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@8@@0 $abort_code@8@@0) (= $abort_flag@11 true)) (and (= $abort_code@10 $abort_code@8@@0) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 216719) 216813) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 216719) 216795) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@11 $abort_flag@10)) (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 216655) 216813) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 216655) 216795) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@10 $abort_flag@9) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@9 $abort_code@8@@0) (= (ControlFlow 0 216701) 216655)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@8@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 216771) 216719) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 216771) 216701) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 216769) 216771)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@8@@0 $abort_code@7@@0)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 216673) 216719) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 216673) 216701) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 216659) 216769) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 216659) 216673) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@10 $abort_flag@8) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@9 $abort_code@7@@0) (= (ControlFlow 0 216643) 216655))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| _$t0@@0))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 216623) 216659) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 216623) 216643) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 216777) 216623)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 216819) 216777)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@11 $abort_code@7@@0)) (and (= $abort_flag@13 $abort_flag@8) (= (ControlFlow 0 216887) 216849))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@7@@0) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@8 $abort_flag@7@@0) (= $abort_code@7@@0 $abort_code@6@@0))) (and (=> (= (ControlFlow 0 216137) 216887) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 216137) 216819) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@6@@0) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@7@@0 $abort_flag@6@@0))) (and (=> (= (ControlFlow 0 216095) 216901) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 216095) 216137) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@6@@0 (= $abort_code@6@@0 $abort_code@6@@0)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@7@@0 true))) (and (=> (= (ControlFlow 0 216113) 216901) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 216113) 216137) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@4@@0 (=> (and (and (= $abort_code@4@@0 $abort_code@4@@0) (= $abort_code@6@@0 $abort_code@4@@0)) (and (= $abort_flag@6@@0 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 216019) 216113) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 216019) 216095) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@6@@0 $abort_code@5@@0)) (and (= $abort_flag@6@@0 $abort_flag@5@@0) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 215955) 216113) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 215955) 216095) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@4@@0) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@5@@0 $abort_code@4@@0) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@5@@0 $abort_flag@4@@0) (= (ControlFlow 0 216001) 215955)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@4@@0 true) (=> (and (= $abort_code@4@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 216071) 216019) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 216071) 216001) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 216069) 216071)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@4@@0 $abort_flag@3@@0)) (and (= $abort_code@4@@0 $abort_code@3@@0) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 215973) 216019) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 215973) 216001) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 215959) 216069) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 215959) 215973) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@5@@0 $abort_code@3@@0) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@5@@0 $abort_flag@3@@0) (= (ControlFlow 0 215943) 215955))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| _$t0@@0))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 215923) 215959) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 215923) 215943) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 216077) 215923)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 216119) 216077)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@8 $abort_flag@3@@0) (= $abort_code@7@@0 $abort_code@3@@0))) (and (=> (= (ControlFlow 0 216919) 216887) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 216919) 216819) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@3@@0) (and (=> (= (ControlFlow 0 215439) 216919) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 215439) 216119) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2@@0) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@3@@0 $abort_flag@2@@0))) (and (=> (= (ControlFlow 0 215407) 216933) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 215407) 215439) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@3@@0 true))) (and (=> (= (ControlFlow 0 215425) 216933) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 215425) 215439) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@0@@0 (=> (and (and (= $abort_code@1@@0 $abort_code@1@@0) (= $abort_code@3@@0 $abort_code@1@@0)) (and (= $abort_flag@2@@0 true) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 215331) 215425) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 215331) 215407) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_code@3@@0 $abort_code@2@@0)) (and (= $abort_flag@2@@0 $abort_flag@1@@0) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 215267) 215425) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 215267) 215407) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@0@@0) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_code@2@@0 $abort_code@1@@0) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_flag@1@@0 $abort_flag@0@@0) (= (ControlFlow 0 215313) 215267)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 215383) 215331) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 215383) 215313) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 215381) 215383)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 215285) 215331) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 215285) 215313) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 215271) 215381) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 215271) 215285) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_code@2@@0 $abort_code@0@@0) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_flag@1@@0 false) (= (ControlFlow 0 215255) 215267))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| _$t0@@0))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 215235) 215271) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 215235) 215255) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= _$t0@@0 _$t0@@0) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 215389) 215235)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 215431) 215389)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (= (ControlFlow 0 216939) 215431)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 214427) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0))) (and (=> (= (ControlFlow 0 214411) 216939) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 214411) 214427) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 217482) 214433))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@0  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@0 inline$$1_DiemAccount_exists_at$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 214369) 217456) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 214369) 214411) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= (ControlFlow 0 214375) 214369)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (= _$t0@@0 _$t0@@0) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| (|$addr#$signer| _$t0@@0))) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 214264) 217482) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 214264) 214375) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@0  (=> (and (forall ((addr@@39 Int) ) (!  (=> (|$IsValid'address'| addr@@39) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@39) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@39) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@39)) 4))))
 :qid |AccountAdministrationScriptsandybpl.16566:20|
 :skolemid |236|
)) (forall ((addr@@40 Int) ) (!  (=> (|$IsValid'address'| addr@@40) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@40) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@40) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@40)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16570:20|
 :skolemid |237|
))) (=> (and (and (forall ((addr@@41 Int) ) (!  (=> (|$IsValid'address'| addr@@41) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@41) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@41) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@41)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16574:20|
 :skolemid |238|
)) (forall ((addr@@42 Int) ) (!  (=> (|$IsValid'address'| addr@@42) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@42)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@42) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@42)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16578:20|
 :skolemid |239|
))) (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141305| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16582:21|
 :skolemid |240|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141392| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16582:268|
 :skolemid |241|
)))) (=> (and (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136585| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16590:21|
 :skolemid |242|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136672| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16590:231|
 :skolemid |243|
))) (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |AccountAdministrationScriptsandybpl.16594:21|
 :skolemid |244|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |AccountAdministrationScriptsandybpl.16594:292|
 :skolemid |245|
)))) (and (and (forall ((addr@@43 Int) ) (!  (=> (|$IsValid'address'| addr@@43) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@43) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16598:22|
 :skolemid |246|
)) (forall ((addr@@44 Int) ) (!  (=> (|$IsValid'address'| addr@@44) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@44) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16598:222|
 :skolemid |247|
))) (forall ((addr@@45 Int) ) (!  (=> (|$IsValid'address'| addr@@45) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141747| |$1_Diem_Preburn'#0'_$memory|) addr@@45) (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16598:423|
 :skolemid |248|
)))) (=> (and (and (and (and (and (forall ((addr@@46 Int) ) (!  (=> (|$IsValid'address'| addr@@46) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@46) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16602:22|
 :skolemid |249|
)) (forall ((addr@@47 Int) ) (!  (=> (|$IsValid'address'| addr@@47) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@47) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16602:227|
 :skolemid |250|
))) (forall ((addr@@48 Int) ) (!  (=> (|$IsValid'address'| addr@@48) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142172| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@48) (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16602:433|
 :skolemid |251|
))) (and (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr1@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@3)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.16610:20|
 :skolemid |252|
)) (forall ((addr@@49 Int) ) (!  (=> (|$IsValid'address'| addr@@49) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@49) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@49)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@49)))) 0)) (= addr@@49 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@49))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16614:20|
 :skolemid |253|
)))) (and (and (and (forall ((addr@@50 Int) ) (!  (=> (|$IsValid'address'| addr@@50) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@50) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@50) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@50)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@50)))) 0)) (= addr@@50 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@50))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16618:20|
 :skolemid |254|
)) (forall ((addr@@51 Int) ) (!  (=> (|$IsValid'address'| addr@@51) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@51) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@51)))
 :qid |AccountAdministrationScriptsandybpl.16622:20|
 :skolemid |255|
))) (and (forall ((addr@@52 Int) ) (!  (=> (|$IsValid'address'| addr@@52) (=> (and (= addr@@52 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@52)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@52)))
 :qid |AccountAdministrationScriptsandybpl.16626:20|
 :skolemid |256|
)) (forall ((addr@@53 Int) ) (!  (=> (|$IsValid'address'| addr@@53) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153144| $1_VASPDomain_VASPDomainManager_$memory) addr@@53) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@53) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@53)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16630:20|
 :skolemid |257|
)))) (and (and (forall ((addr@@54 Int) ) (!  (=> (|$IsValid'address'| addr@@54) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@54) (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@54)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@54)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@54)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@54) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@54)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.16634:20|
 :skolemid |258|
)) (forall ((addr@@55 Int) ) (!  (=> (|$IsValid'address'| addr@@55) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160025| $1_DesignatedDealer_Dealer_$memory) addr@@55) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@55) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@55)) 2))))
 :qid |AccountAdministrationScriptsandybpl.16638:20|
 :skolemid |259|
))) (and (forall ((addr@@56 Int) ) (!  (=> (|$IsValid'address'| addr@@56) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr@@56) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@56)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@56) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@56)) 5)))))
 :qid |AccountAdministrationScriptsandybpl.16642:20|
 :skolemid |260|
)) (forall ((addr@@57 Int) ) (!  (=> (|$IsValid'address'| addr@@57) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@57) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@57)))
 :qid |AccountAdministrationScriptsandybpl.16646:20|
 :skolemid |261|
)))))) (and (and (and (and (forall ((addr@@58 Int) ) (!  (=> (|$IsValid'address'| addr@@58) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@58) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@58)))
 :qid |AccountAdministrationScriptsandybpl.16650:22|
 :skolemid |262|
)) (forall ((addr@@59 Int) ) (!  (=> (|$IsValid'address'| addr@@59) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@59) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@59)))
 :qid |AccountAdministrationScriptsandybpl.16650:218|
 :skolemid |263|
))) (forall ((addr@@60 Int) ) (!  (=> (|$IsValid'address'| addr@@60) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@60) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@60)))
 :qid |AccountAdministrationScriptsandybpl.16650:415|
 :skolemid |264|
))) (and (and (forall ((addr@@61 Int) ) (!  (=> (|$IsValid'address'| addr@@61) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@61) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@61) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@61)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16654:20|
 :skolemid |265|
)) (forall ((addr@@62 Int) ) (!  (=> (|$IsValid'address'| addr@@62) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@62) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@62) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@62)) 4))))
 :qid |AccountAdministrationScriptsandybpl.16658:20|
 :skolemid |266|
))) (and (forall ((addr@@63 Int) ) (!  (=> (|$IsValid'address'| addr@@63) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) addr@@63) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@63) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@63)) 5))))
 :qid |AccountAdministrationScriptsandybpl.16662:20|
 :skolemid |267|
)) (forall ((addr@@64 Int) ) (!  (=> (|$IsValid'address'| addr@@64) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) addr@@64) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@64) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@64)) 6))))
 :qid |AccountAdministrationScriptsandybpl.16666:20|
 :skolemid |268|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@0)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@0))
 :qid |AccountAdministrationScriptsandybpl.16672:20|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@0))
))) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@1)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@1) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@1)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@1) 10000000000))))
 :qid |AccountAdministrationScriptsandybpl.16676:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@2)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@2) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@2))) 1))))
 :qid |AccountAdministrationScriptsandybpl.16680:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@2))
)))) (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@3)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@3))
 :qid |AccountAdministrationScriptsandybpl.16684:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@3))
)) (let ((addr@@65 (|$addr#$signer| _$t0@@0)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@65)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@65) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@65))))))) (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 217486) 214264)))))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_89085| stream@@1) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@1) v@@48) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 212628) 217486)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 322769) 212628) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17@@0 () Bool)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_162344)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@15@@0 () Int)
(declare-fun $abort_flag@16@@0 () Bool)
(declare-fun $abort_code@14@@0 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_162344)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_162344)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_162344)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@13@@0 () Int)
(declare-fun $abort_flag@15@@0 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@14@@0 () Bool)
(declare-fun $abort_code@12@@0 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1@@0 () Int)
(declare-fun $abort_flag@12@@0 () Bool)
(declare-fun $abort_code@10@@0 () Int)
(declare-fun $abort_flag@7@@1 () Bool)
(declare-fun $abort_code@6@@1 () Int)
(declare-fun $abort_flag@3@@1 () Bool)
(declare-fun $abort_code@3@@1 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1@@0 () Bool)
(declare-fun $abort_flag@13@@0 () Bool)
(declare-fun $abort_code@11@@0 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@11@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@9@@0 () Bool)
(declare-fun $abort_code@8@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1@@0 () Bool)
(declare-fun $abort_flag@10@@0 () Bool)
(declare-fun $abort_code@9@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7@@1 () Int)
(declare-fun $abort_flag@8@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1@@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@6@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@4@@1 () Bool)
(declare-fun $abort_code@4@@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1@@0 () Bool)
(declare-fun $abort_code@5@@1 () Int)
(declare-fun $abort_flag@5@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@2@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@0 () Bool)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@0 () Bool)
(declare-fun $abort_code@2@@1 () Int)
(declare-fun $abort_flag@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@0 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify_instantiated_0)
(assert (not
 (=> (= (ControlFlow 0 0) 326359) (let ((anon4_Else_correct@@0  (=> (not $abort_flag@17@@0) (and (=> (= (ControlFlow 0 223006) (- 0 329884)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1))) (and (=> (= (ControlFlow 0 223006) (- 0 329895)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 223006) (- 0 329905)) (not (not (or (or (let ((addr@@66 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@66) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@66)) 5))) (let ((addr@@67 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@67) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@67)) 6)))) (let ((addr@@68 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@68) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@68)) 2))))))) (=> (not (not (or (or (let ((addr@@69 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@69) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@69)) 5))) (let ((addr@@70 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@70) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@70)) 6)))) (let ((addr@@71 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@71) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@71)) 2)))))) (and (=> (= (ControlFlow 0 223006) (- 0 329916)) (not (not (or (or (let ((addr@@72 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@72) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@72)) 5))) (let ((addr@@73 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@73) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@73)) 6)))) (let ((addr@@74 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@74) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@74)) 2))))))) (=> (not (not (or (or (let ((addr@@75 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@75) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@75)) 5))) (let ((addr@@76 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@76) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@76)) 6)))) (let ((addr@@77 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@77) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@77)) 2)))))) (and (=> (= (ControlFlow 0 223006) (- 0 329927)) (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| _$t0@@1))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| _$t0@@1)) (=> (= (ControlFlow 0 223006) (- 0 329936)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (|$addr#$signer| _$t0@@1)) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))))))))))))))))
(let ((anon4_Then_correct@@0  (=> (and $abort_flag@17@@0 (= $abort_code@15@@0 $abort_code@15@@0)) (and (=> (= (ControlFlow 0 223154) (- 0 329763)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (not (or (or (let ((addr@@78 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@78) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@78)) 5))) (let ((addr@@79 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@79) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@79)) 6)))) (let ((addr@@80 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@80) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@80)) 2)))))) (not (or (or (let ((addr@@81 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@81) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@81)) 5))) (let ((addr@@82 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@82) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@82)) 6)))) (let ((addr@@83 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@83) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@83)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (not (or (or (let ((addr@@84 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@84) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@84)) 5))) (let ((addr@@85 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@85) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@85)) 6)))) (let ((addr@@86 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@86) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@86)) 2)))))) (not (or (or (let ((addr@@87 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@87) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@87)) 5))) (let ((addr@@88 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@88) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@88)) 6)))) (let ((addr@@89 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@89) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@89)) 2)))))) (=> (= (ControlFlow 0 223154) (- 0 329792)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (= 6 $abort_code@15@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 $abort_code@15@@0))) (and (not (or (or (let ((addr@@90 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@90) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@90)) 5))) (let ((addr@@91 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@91) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@91)) 6)))) (let ((addr@@92 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@92) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@92)) 2))))) (= 7 $abort_code@15@@0))) (and (not (or (or (let ((addr@@93 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@93) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@93)) 5))) (let ((addr@@94 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@94) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@94)) 6)))) (let ((addr@@95 (|$addr#$signer| _$t0@@1)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@95) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@95)) 2))))) (= 7 $abort_code@15@@0))) (= 5 $abort_code@15@@0)) (= 7 $abort_code@15@@0)) (= 6 $abort_code@15@@0))))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16@@0) (= $abort_code@15@@0 $abort_code@14@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@17@@0 $abort_flag@16@@0))) (and (=> (= (ControlFlow 0 222784) 223154) anon4_Then_correct@@0) (=> (= (ControlFlow 0 222784) 223006) anon4_Else_correct@@0)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@15@@0 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@17@@0 true)) (and (=> (= (ControlFlow 0 219869) 223154) anon4_Then_correct@@0) (=> (= (ControlFlow 0 219869) 223006) anon4_Else_correct@@0))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@16@@0 (=> (and (and (= $abort_code@14@@0 $abort_code@14@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@14@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 222798) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@14@@0 $EXEC_FAILURE_CODE) (= $abort_flag@16@@0 true)) (and (=> (= (ControlFlow 0 222850) 222798) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 222850) 222784) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 222848) 222850)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_162344 (|Store__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| _$t0@@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@14@@0 $abort_code@13@@0) (= $abort_flag@16@@0 $abort_flag@15@@0))) (and (=> (= (ControlFlow 0 222774) 222798) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 222774) 222784) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 222752) 222848) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 222752) 222774) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@15@@0 (=> (and (and (= $abort_code@13@@0 $abort_code@13@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@13@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222864) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@15@@0 $abort_flag@14@@0)) (and (= $abort_code@13@@0 $abort_code@12@@0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 222704) 222864) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 222704) 222752) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@15@@0 true)) (and (= $abort_code@13@@0 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 222734) 222864) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 222734) 222752) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 222676) 222734) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 222676) 222704) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@1 (= (ControlFlow 0 222740) 222676)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222523) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 222507) 222740) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 222507) 222523) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1|)) (= (ControlFlow 0 222471) 222507)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= (ControlFlow 0 222477) 222471)) inline$$Not$0$anon0_correct@@1))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1@@0) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222431) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14@@0) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 inline$$1_Roles_can_hold_balance$0$$ret0@1@@0))) (and (=> (= (ControlFlow 0 222415) 222477) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 222415) 222431) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@14@@0 (=> (and (and (= $abort_code@12@@0 $abort_code@12@@0) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@12@@0)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222878) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct@@0  (=> (= $abort_flag@14@@0 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 inline$$1_Roles_can_hold_balance$0$$ret0@0@@0) (= $abort_code@12@@0 inline$$1_Roles_can_hold_balance$0$$t4@1@@0)) (and (=> (= (ControlFlow 0 222305) 222878) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 222305) 222415) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@0  (=> (and (and $abort_flag@12@@0 (= $abort_code@10@@0 $abort_code@10@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@0 $abort_code@10@@0) (= (ControlFlow 0 222299) 222305))) inline$$1_Roles_can_hold_balance$0$L9_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@0  (=> (and (and $abort_flag@7@@1 (= $abort_code@6@@1 $abort_code@6@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@0 $abort_code@6@@1) (= (ControlFlow 0 222337) 222305))) inline$$1_Roles_can_hold_balance$0$L9_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@0  (=> (and (and $abort_flag@3@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@0 $abort_code@3@@1) (= (ControlFlow 0 222369) 222305))) inline$$1_Roles_can_hold_balance$0$L9_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct@@0  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@0 inline$$1_Roles_can_hold_balance$0$$t2@1@@0) (= $abort_flag@14@@0 $abort_flag@13@@0)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@0 inline$$1_Roles_can_hold_balance$0$$t2@1@@0) (= $abort_code@12@@0 $abort_code@11@@0))) (and (=> (= (ControlFlow 0 222285) 222878) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 222285) 222415) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@0  (=> (and (not $abort_flag@12@@0) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0) (= $abort_code@11@@0 $abort_code@10@@0)) (and (= $abort_flag@13@@0 $abort_flag@12@@0) (= (ControlFlow 0 222273) 222285))) inline$$1_Roles_can_hold_balance$0$L7_correct@@0))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@11@@0) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@1@@0)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@1@@0) (= $abort_flag@12@@0 $abort_flag@11@@0))) (and (=> (= (ControlFlow 0 222231) 222299) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 222231) 222273) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@0)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@11@@0 (= $abort_code@10@@0 $abort_code@10@@0)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@0 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@0) (= $abort_flag@12@@0 true))) (and (=> (= (ControlFlow 0 222249) 222299) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 222249) 222273) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct@@0  (=> $abort_flag@9@@0 (=> (and (and (= $abort_code@8@@1 $abort_code@8@@1) (= $abort_flag@11@@0 true)) (and (= $abort_code@10@@0 $abort_code@8@@1) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$ret0@0@@0))) (and (=> (= (ControlFlow 0 222155) 222249) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 222155) 222231) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1@@0 inline$$1_Roles_has_role$2$$t2@1@@0) (= $abort_flag@11@@0 $abort_flag@10@@0)) (and (= $abort_code@10@@0 $abort_code@9@@0) (= inline$$1_Roles_has_role$2$$ret0@1@@0 inline$$1_Roles_has_role$2$$t2@1@@0))) (and (=> (= (ControlFlow 0 222091) 222249) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 222091) 222231) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@9@@0) (= inline$$1_Roles_has_role$2$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2@@0))) (and (= inline$$1_Roles_has_role$2$$t9@1@@0 (= inline$$1_Roles_has_role$2$$t8@1@@0 2)) (= inline$$1_Roles_has_role$2$$t9@1@@0 inline$$1_Roles_has_role$2$$t9@1@@0))) (and (and (= $abort_flag@10@@0 $abort_flag@9@@0) (= inline$$1_Roles_has_role$2$$t2@1@@0 inline$$1_Roles_has_role$2$$t9@1@@0)) (and (= $abort_code@9@@0 $abort_code@8@@1) (= (ControlFlow 0 222137) 222091)))) inline$$1_Roles_has_role$2$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct@@0  (=> (= $abort_code@8@@1 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9@@0 true) (= inline$$1_Roles_has_role$2$$t6@2@@0 inline$$1_Roles_has_role$2$$t6@0@@0)) (and (=> (= (ControlFlow 0 222207) 222155) inline$$1_Roles_has_role$2$anon11_Then_correct@@0) (=> (= (ControlFlow 0 222207) 222137) inline$$1_Roles_has_role$2$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0)) (= (ControlFlow 0 222205) 222207)) inline$$1_Roles_has_role$2$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0)) (= $abort_code@8@@1 $abort_code@7@@1)) (and (= $abort_flag@9@@0 $abort_flag@8@@0) (= inline$$1_Roles_has_role$2$$t6@2@@0 inline$$1_Roles_has_role$2$$t6@1@@0))) (and (=> (= (ControlFlow 0 222109) 222155) inline$$1_Roles_has_role$2$anon11_Then_correct@@0) (=> (= (ControlFlow 0 222109) 222137) inline$$1_Roles_has_role$2$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$2$$t5@1@@0 (and (=> (= (ControlFlow 0 222095) 222205) inline$$1_Roles_has_role$2$anon10_Then_correct@@0) (=> (= (ControlFlow 0 222095) 222109) inline$$1_Roles_has_role$2$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$2$$t5@1@@0) (= false false)) (=> (and (and (= $abort_flag@10@@0 $abort_flag@8@@0) (= inline$$1_Roles_has_role$2$$t2@1@@0 false)) (and (= $abort_code@9@@0 $abort_code@7@@1) (= (ControlFlow 0 222079) 222091))) inline$$1_Roles_has_role$2$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$2$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0@@0) (= inline$$1_Roles_has_role$2$$t4@0@@0 (|$addr#$signer| _$t0@@1))) (and (= inline$$1_Roles_has_role$2$$t4@0@@0 inline$$1_Roles_has_role$2$$t4@0@@0) (= inline$$1_Roles_has_role$2$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@0)))) (and (=> (= (ControlFlow 0 222059) 222095) inline$$1_Roles_has_role$2$anon9_Then_correct@@0) (=> (= (ControlFlow 0 222059) 222079) inline$$1_Roles_has_role$2$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 222213) 222059)) inline$$1_Roles_has_role$2$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@0  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1@@0) (= (ControlFlow 0 222255) 222213)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@0  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1@@0 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@0 true) (= $abort_code@11@@0 $abort_code@7@@1)) (and (= $abort_flag@13@@0 $abort_flag@8@@0) (= (ControlFlow 0 222323) 222285))) inline$$1_Roles_can_hold_balance$0$L7_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@0  (=> (not $abort_flag@7@@1) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0)) (and (= $abort_flag@8@@0 $abort_flag@7@@1) (= $abort_code@7@@1 $abort_code@6@@1))) (and (=> (= (ControlFlow 0 221573) 222323) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 221573) 222255) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@0))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@6@@1) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@1@@0)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@1@@0) (= $abort_flag@7@@1 $abort_flag@6@@1))) (and (=> (= (ControlFlow 0 221531) 222337) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@0) (=> (= (ControlFlow 0 221531) 221573) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@0)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@6@@1 (= $abort_code@6@@1 $abort_code@6@@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@0) (= $abort_flag@7@@1 true))) (and (=> (= (ControlFlow 0 221549) 222337) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@0) (=> (= (ControlFlow 0 221549) 221573) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct@@0  (=> $abort_flag@4@@1 (=> (and (and (= $abort_code@4@@1 $abort_code@4@@1) (= $abort_code@6@@1 $abort_code@4@@1)) (and (= $abort_flag@6@@1 true) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$ret0@0@@0))) (and (=> (= (ControlFlow 0 221455) 221549) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 221455) 221531) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1@@0 inline$$1_Roles_has_role$1$$t2@1@@0) (= $abort_code@6@@1 $abort_code@5@@1)) (and (= $abort_flag@6@@1 $abort_flag@5@@1) (= inline$$1_Roles_has_role$1$$ret0@1@@0 inline$$1_Roles_has_role$1$$t2@1@@0))) (and (=> (= (ControlFlow 0 221391) 221549) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 221391) 221531) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@4@@1) (= inline$$1_Roles_has_role$1$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2@@0))) (and (= inline$$1_Roles_has_role$1$$t9@1@@0 (= inline$$1_Roles_has_role$1$$t8@1@@0 6)) (= inline$$1_Roles_has_role$1$$t9@1@@0 inline$$1_Roles_has_role$1$$t9@1@@0))) (and (and (= $abort_code@5@@1 $abort_code@4@@1) (= inline$$1_Roles_has_role$1$$t2@1@@0 inline$$1_Roles_has_role$1$$t9@1@@0)) (and (= $abort_flag@5@@1 $abort_flag@4@@1) (= (ControlFlow 0 221437) 221391)))) inline$$1_Roles_has_role$1$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct@@0  (=> (= $abort_flag@4@@1 true) (=> (and (= $abort_code@4@@1 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2@@0 inline$$1_Roles_has_role$1$$t6@0@@0)) (and (=> (= (ControlFlow 0 221507) 221455) inline$$1_Roles_has_role$1$anon11_Then_correct@@0) (=> (= (ControlFlow 0 221507) 221437) inline$$1_Roles_has_role$1$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0)) (= (ControlFlow 0 221505) 221507)) inline$$1_Roles_has_role$1$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0)) (= $abort_flag@4@@1 $abort_flag@3@@1)) (and (= $abort_code@4@@1 $abort_code@3@@1) (= inline$$1_Roles_has_role$1$$t6@2@@0 inline$$1_Roles_has_role$1$$t6@1@@0))) (and (=> (= (ControlFlow 0 221409) 221455) inline$$1_Roles_has_role$1$anon11_Then_correct@@0) (=> (= (ControlFlow 0 221409) 221437) inline$$1_Roles_has_role$1$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$1$$t5@1@@0 (and (=> (= (ControlFlow 0 221395) 221505) inline$$1_Roles_has_role$1$anon10_Then_correct@@0) (=> (= (ControlFlow 0 221395) 221409) inline$$1_Roles_has_role$1$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$1$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@5@@1 $abort_code@3@@1) (= inline$$1_Roles_has_role$1$$t2@1@@0 false)) (and (= $abort_flag@5@@1 $abort_flag@3@@1) (= (ControlFlow 0 221379) 221391))) inline$$1_Roles_has_role$1$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$1$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0@@0) (= inline$$1_Roles_has_role$1$$t4@0@@0 (|$addr#$signer| _$t0@@1))) (and (= inline$$1_Roles_has_role$1$$t4@0@@0 inline$$1_Roles_has_role$1$$t4@0@@0) (= inline$$1_Roles_has_role$1$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@0)))) (and (=> (= (ControlFlow 0 221359) 221395) inline$$1_Roles_has_role$1$anon9_Then_correct@@0) (=> (= (ControlFlow 0 221359) 221379) inline$$1_Roles_has_role$1$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 221513) 221359)) inline$$1_Roles_has_role$1$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@0  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0) (= (ControlFlow 0 221555) 221513)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@0)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@0  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@0 true)) (and (= $abort_flag@8@@0 $abort_flag@3@@1) (= $abort_code@7@@1 $abort_code@3@@1))) (and (=> (= (ControlFlow 0 222355) 222323) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 222355) 222255) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@0))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@0  (=> (not $abort_flag@3@@1) (and (=> (= (ControlFlow 0 220875) 222355) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 220875) 221555) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@0)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0  (=> (and (and (not $abort_flag@2@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@1@@0) (= $abort_flag@3@@1 $abort_flag@2@@1))) (and (=> (= (ControlFlow 0 220843) 222369) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 220843) 220875) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@0)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0  (=> (and (and $abort_flag@2@@1 (= $abort_code@3@@1 $abort_code@3@@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@0 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@0) (= $abort_flag@3@@1 true))) (and (=> (= (ControlFlow 0 220861) 222369) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 220861) 220875) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@0  (=> $abort_flag@0@@1 (=> (and (and (= $abort_code@1@@1 $abort_code@1@@1) (= $abort_code@3@@1 $abort_code@1@@1)) (and (= $abort_flag@2@@1 true) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$ret0@0@@0))) (and (=> (= (ControlFlow 0 220767) 220861) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 220767) 220843) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@0  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@0 inline$$1_Roles_has_role$0$$t2@1@@0) (= $abort_code@3@@1 $abort_code@2@@1)) (and (= $abort_flag@2@@1 $abort_flag@1@@1) (= inline$$1_Roles_has_role$0$$ret0@1@@0 inline$$1_Roles_has_role$0$$t2@1@@0))) (and (=> (= (ControlFlow 0 220703) 220861) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 220703) 220843) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@0  (=> (and (and (and (not $abort_flag@0@@1) (= inline$$1_Roles_has_role$0$$t8@1@@0 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@0))) (and (= inline$$1_Roles_has_role$0$$t9@1@@0 (= inline$$1_Roles_has_role$0$$t8@1@@0 5)) (= inline$$1_Roles_has_role$0$$t9@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0))) (and (and (= $abort_code@2@@1 $abort_code@1@@1) (= inline$$1_Roles_has_role$0$$t2@1@@0 inline$$1_Roles_has_role$0$$t9@1@@0)) (and (= $abort_flag@1@@1 $abort_flag@0@@1) (= (ControlFlow 0 220749) 220703)))) inline$$1_Roles_has_role$0$L3_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@0@@0)) (and (=> (= (ControlFlow 0 220819) 220767) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 220819) 220749) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= (ControlFlow 0 220817) 220819)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@0)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@0 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$1_Roles_has_role$0$$t6@2@@0 inline$$1_Roles_has_role$0$$t6@1@@0))) (and (=> (= (ControlFlow 0 220721) 220767) inline$$1_Roles_has_role$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 220721) 220749) inline$$1_Roles_has_role$0$anon11_Else_correct@@0))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@0  (=> inline$$1_Roles_has_role$0$$t5@1@@0 (and (=> (= (ControlFlow 0 220707) 220817) inline$$1_Roles_has_role$0$anon10_Then_correct@@0) (=> (= (ControlFlow 0 220707) 220721) inline$$1_Roles_has_role$0$anon10_Else_correct@@0)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@0  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@0) (= false false)) (=> (and (and (= $abort_code@2@@1 $abort_code@0@@1) (= inline$$1_Roles_has_role$0$$t2@1@@0 false)) (and (= $abort_flag@1@@1 false) (= (ControlFlow 0 220691) 220703))) inline$$1_Roles_has_role$0$L3_correct@@0))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t4@0@@0 (|$addr#$signer| _$t0@@1))) (and (= inline$$1_Roles_has_role$0$$t4@0@@0 inline$$1_Roles_has_role$0$$t4@0@@0) (= inline$$1_Roles_has_role$0$$t5@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@0)))) (and (=> (= (ControlFlow 0 220671) 220707) inline$$1_Roles_has_role$0$anon9_Then_correct@@0) (=> (= (ControlFlow 0 220671) 220691) inline$$1_Roles_has_role$0$anon9_Else_correct@@0))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@0  (=> (= _$t0@@1 _$t0@@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 220825) 220671)) inline$$1_Roles_has_role$0$anon0_correct@@0))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct@@0  (=> (and (= _$t0@@1 _$t0@@1) (= (ControlFlow 0 220867) 220825)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (= (ControlFlow 0 222375) 220867)) inline$$1_Roles_can_hold_balance$0$anon0_correct@@0)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 219863) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1))) (and (=> (= (ControlFlow 0 219847) 222375) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 219847) 219863) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 222918) 219869))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@1  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@1 inline$$1_DiemAccount_exists_at$0$$t1@1@@1)) (and (=> (= (ControlFlow 0 219805) 222892) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 219805) 219847) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 219811) 219805)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@1)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= _$t0@@1 _$t0@@1) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| _$t0@@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 219700) 222918) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 219700) 219811) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@1  (=> (and (forall ((addr@@96 Int) ) (!  (=> (|$IsValid'address'| addr@@96) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@96) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@96) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@96)) 4))))
 :qid |AccountAdministrationScriptsandybpl.16793:20|
 :skolemid |273|
)) (forall ((addr@@97 Int) ) (!  (=> (|$IsValid'address'| addr@@97) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@97) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@97) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@97)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16797:20|
 :skolemid |274|
))) (=> (and (and (forall ((addr@@98 Int) ) (!  (=> (|$IsValid'address'| addr@@98) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@98) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@98) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@98)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16801:20|
 :skolemid |275|
)) (forall ((addr@@99 Int) ) (!  (=> (|$IsValid'address'| addr@@99) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@99)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@99) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@99)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16805:20|
 :skolemid |276|
))) (and (forall ((mint_cap_owner@@1 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141305| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@1)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16809:21|
 :skolemid |277|
)) (forall ((mint_cap_owner@@2 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141392| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@2) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@2)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16809:268|
 :skolemid |278|
)))) (=> (and (and (and (forall ((addr1@@4 Int) ) (!  (=> (|$IsValid'address'| addr1@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136585| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@4)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16817:21|
 :skolemid |279|
)) (forall ((addr1@@5 Int) ) (!  (=> (|$IsValid'address'| addr1@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136672| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@5)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16817:231|
 :skolemid |280|
))) (and (forall ((addr1@@6 Int) ) (!  (=> (|$IsValid'address'| addr1@@6) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@6)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@6)) 2))))
 :qid |AccountAdministrationScriptsandybpl.16821:21|
 :skolemid |281|
)) (forall ((addr1@@7 Int) ) (!  (=> (|$IsValid'address'| addr1@@7) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@7)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@7)) 2))))
 :qid |AccountAdministrationScriptsandybpl.16821:292|
 :skolemid |282|
)))) (and (and (forall ((addr@@100 Int) ) (!  (=> (|$IsValid'address'| addr@@100) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@100) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16825:22|
 :skolemid |283|
)) (forall ((addr@@101 Int) ) (!  (=> (|$IsValid'address'| addr@@101) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@101) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16825:222|
 :skolemid |284|
))) (forall ((addr@@102 Int) ) (!  (=> (|$IsValid'address'| addr@@102) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141747| |$1_Diem_Preburn'#0'_$memory|) addr@@102) (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16825:423|
 :skolemid |285|
)))) (=> (and (and (and (and (and (and (forall ((addr@@103 Int) ) (!  (=> (|$IsValid'address'| addr@@103) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@103) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16829:22|
 :skolemid |286|
)) (forall ((addr@@104 Int) ) (!  (=> (|$IsValid'address'| addr@@104) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@104) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16829:227|
 :skolemid |287|
))) (forall ((addr@@105 Int) ) (!  (=> (|$IsValid'address'| addr@@105) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142172| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@105) (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.16829:433|
 :skolemid |288|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (forall ((addr1@@8 Int) ) (!  (=> (|$IsValid'address'| addr1@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr1@@8) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@8)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@8) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@8)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.16841:20|
 :skolemid |289|
)) (forall ((addr@@106 Int) ) (!  (=> (|$IsValid'address'| addr@@106) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@106) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@106)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@106)))) 0)) (= addr@@106 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@106))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16845:20|
 :skolemid |290|
)))) (and (and (and (forall ((addr@@107 Int) ) (!  (=> (|$IsValid'address'| addr@@107) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@107) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@107) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@107)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@107)))) 0)) (= addr@@107 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@107))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.16849:20|
 :skolemid |291|
)) (forall ((addr@@108 Int) ) (!  (=> (|$IsValid'address'| addr@@108) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@108) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@108)))
 :qid |AccountAdministrationScriptsandybpl.16853:20|
 :skolemid |292|
))) (and (forall ((addr@@109 Int) ) (!  (=> (|$IsValid'address'| addr@@109) (=> (and (= addr@@109 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@109)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@109)))
 :qid |AccountAdministrationScriptsandybpl.16857:20|
 :skolemid |293|
)) (forall ((addr@@110 Int) ) (!  (=> (|$IsValid'address'| addr@@110) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153144| $1_VASPDomain_VASPDomainManager_$memory) addr@@110) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@110) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@110)) 1))))
 :qid |AccountAdministrationScriptsandybpl.16861:20|
 :skolemid |294|
)))) (and (and (forall ((addr@@111 Int) ) (!  (=> (|$IsValid'address'| addr@@111) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@111) (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@111)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@111)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@111)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@111) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@111)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.16865:20|
 :skolemid |295|
)) (forall ((addr@@112 Int) ) (!  (=> (|$IsValid'address'| addr@@112) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160025| $1_DesignatedDealer_Dealer_$memory) addr@@112) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@112) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@112)) 2))))
 :qid |AccountAdministrationScriptsandybpl.16869:20|
 :skolemid |296|
))) (and (forall ((addr@@113 Int) ) (!  (=> (|$IsValid'address'| addr@@113) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr@@113) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@113)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@113) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@113)) 5)))))
 :qid |AccountAdministrationScriptsandybpl.16873:20|
 :skolemid |297|
)) (forall ((addr@@114 Int) ) (!  (=> (|$IsValid'address'| addr@@114) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@114) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@114)))
 :qid |AccountAdministrationScriptsandybpl.16877:20|
 :skolemid |298|
)))))) (and (and (and (and (forall ((addr@@115 Int) ) (!  (=> (|$IsValid'address'| addr@@115) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@115) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@115)))
 :qid |AccountAdministrationScriptsandybpl.16881:22|
 :skolemid |299|
)) (forall ((addr@@116 Int) ) (!  (=> (|$IsValid'address'| addr@@116) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@116) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@116)))
 :qid |AccountAdministrationScriptsandybpl.16881:218|
 :skolemid |300|
))) (forall ((addr@@117 Int) ) (!  (=> (|$IsValid'address'| addr@@117) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@117) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@117)))
 :qid |AccountAdministrationScriptsandybpl.16881:415|
 :skolemid |301|
))) (and (and (forall ((addr@@118 Int) ) (!  (=> (|$IsValid'address'| addr@@118) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@118) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@118) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@118)) 3))))
 :qid |AccountAdministrationScriptsandybpl.16885:20|
 :skolemid |302|
)) (forall ((addr@@119 Int) ) (!  (=> (|$IsValid'address'| addr@@119) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@119) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@119) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@119)) 4))))
 :qid |AccountAdministrationScriptsandybpl.16889:20|
 :skolemid |303|
))) (and (forall ((addr@@120 Int) ) (!  (=> (|$IsValid'address'| addr@@120) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) addr@@120) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@120) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@120)) 5))))
 :qid |AccountAdministrationScriptsandybpl.16893:20|
 :skolemid |304|
)) (forall ((addr@@121 Int) ) (!  (=> (|$IsValid'address'| addr@@121) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) addr@@121) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@121) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@121)) 6))))
 :qid |AccountAdministrationScriptsandybpl.16897:20|
 :skolemid |305|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@4)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@4))
 :qid |AccountAdministrationScriptsandybpl.16903:20|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@4))
))) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@5) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@5) 10000000000))))
 :qid |AccountAdministrationScriptsandybpl.16907:20|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@5))
)) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@6)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@6) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@6))) 1))))
 :qid |AccountAdministrationScriptsandybpl.16911:20|
 :skolemid |308|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@7)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@7))
 :qid |AccountAdministrationScriptsandybpl.16915:20|
 :skolemid |309|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (let ((addr@@122 (|$addr#$signer| _$t0@@1)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@122)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@122) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@122))))))) (and (= _$t0@@1 _$t0@@1) (= (ControlFlow 0 222922) 219700)))))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@3 T@$1_Event_EventHandle) ) (! (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@3)))
 (and (= (|l#Multiset_89085| stream@@2) 0) (forall ((v@@49 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@2) v@@49) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 218054) 222922)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 326359) 218054) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@17@@1 () Bool)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_162435)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@15@@1 () Int)
(declare-fun $abort_flag@16@@1 () Bool)
(declare-fun $abort_code@14@@1 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_162435)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_162435)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_162435)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@13@@1 () Int)
(declare-fun $abort_flag@15@@1 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@14@@1 () Bool)
(declare-fun $abort_code@12@@1 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$0$dst@1@@2 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1@@1 () Int)
(declare-fun $abort_flag@12@@1 () Bool)
(declare-fun $abort_code@10@@1 () Int)
(declare-fun $abort_flag@7@@2 () Bool)
(declare-fun $abort_code@6@@2 () Int)
(declare-fun $abort_flag@3@@2 () Bool)
(declare-fun $abort_code@3@@2 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1@@1 () Bool)
(declare-fun $abort_flag@13@@1 () Bool)
(declare-fun $abort_code@11@@1 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@11@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@1 () Bool)
(declare-fun $abort_flag@9@@1 () Bool)
(declare-fun $abort_code@8@@2 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1@@1 () Bool)
(declare-fun $abort_flag@10@@1 () Bool)
(declare-fun $abort_code@9@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@7@@2 () Int)
(declare-fun $abort_flag@8@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1@@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@6@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@1 () Bool)
(declare-fun $abort_flag@4@@2 () Bool)
(declare-fun $abort_code@4@@2 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1@@1 () Bool)
(declare-fun $abort_code@5@@2 () Int)
(declare-fun $abort_flag@5@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@2@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@1 () Bool)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1@@1 () Bool)
(declare-fun $abort_code@2@@2 () Int)
(declare-fun $abort_flag@1@@2 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t8@1@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1@@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0@@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0@@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1@@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t5@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@2 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Int)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_currency_to_account$verify_instantiated_1)
(assert (not
 (=> (= (ControlFlow 0 0) 329959) (let ((anon4_Else_correct@@1  (=> (not $abort_flag@17@@1) (and (=> (= (ControlFlow 0 228444) (- 0 333484)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2))) (and (=> (= (ControlFlow 0 228444) (- 0 333495)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 228444) (- 0 333505)) (not (not (or (or (let ((addr@@123 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@123) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@123)) 5))) (let ((addr@@124 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@124) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@124)) 6)))) (let ((addr@@125 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@125) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@125)) 2))))))) (=> (not (not (or (or (let ((addr@@126 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@126) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@126)) 5))) (let ((addr@@127 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@127) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@127)) 6)))) (let ((addr@@128 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@128) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@128)) 2)))))) (and (=> (= (ControlFlow 0 228444) (- 0 333516)) (not (not (or (or (let ((addr@@129 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@129) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@129)) 5))) (let ((addr@@130 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@130) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@130)) 6)))) (let ((addr@@131 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@131) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@131)) 2))))))) (=> (not (not (or (or (let ((addr@@132 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@132) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@132)) 5))) (let ((addr@@133 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@133) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@133)) 6)))) (let ((addr@@134 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@134) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@134)) 2)))))) (and (=> (= (ControlFlow 0 228444) (- 0 333527)) (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@2)) (=> (= (ControlFlow 0 228444) (- 0 333536)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (|$addr#$signer| _$t0@@2)) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))))))))))))))))
(let ((anon4_Then_correct@@1  (=> (and $abort_flag@17@@1 (= $abort_code@15@@1 $abort_code@15@@1)) (and (=> (= (ControlFlow 0 228592) (- 0 333363)) (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (not (or (or (let ((addr@@135 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@135) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@135)) 5))) (let ((addr@@136 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@136) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@136)) 6)))) (let ((addr@@137 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@137) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@137)) 2)))))) (not (or (or (let ((addr@@138 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@138) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@138)) 5))) (let ((addr@@139 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@139) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@139)) 6)))) (let ((addr@@140 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@140) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@140)) 2))))))) (=> (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (not (or (or (let ((addr@@141 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@141) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@141)) 5))) (let ((addr@@142 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@142) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@142)) 6)))) (let ((addr@@143 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@143) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@143)) 2)))))) (not (or (or (let ((addr@@144 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@144) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@144)) 5))) (let ((addr@@145 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@145) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@145)) 6)))) (let ((addr@@146 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@146) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@146)) 2)))))) (=> (= (ControlFlow 0 228592) (- 0 333392)) (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (= 6 $abort_code@15@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 $abort_code@15@@1))) (and (not (or (or (let ((addr@@147 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@147) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@147)) 5))) (let ((addr@@148 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@148) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@148)) 6)))) (let ((addr@@149 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@149) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@149)) 2))))) (= 7 $abort_code@15@@1))) (and (not (or (or (let ((addr@@150 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@150) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@150)) 5))) (let ((addr@@151 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@151) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@151)) 6)))) (let ((addr@@152 (|$addr#$signer| _$t0@@2)))
 (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@152) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@152)) 2))))) (= 7 $abort_code@15@@1))) (= 5 $abort_code@15@@1)) (= 7 $abort_code@15@@1)) (= 6 $abort_code@15@@1))))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@16@@1) (= $abort_code@15@@1 $abort_code@14@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@17@@1 $abort_flag@16@@1))) (and (=> (= (ControlFlow 0 228222) 228592) anon4_Then_correct@@1) (=> (= (ControlFlow 0 228222) 228444) anon4_Else_correct@@1)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@15@@1 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@17@@1 true)) (and (=> (= (ControlFlow 0 225307) 228592) anon4_Then_correct@@1) (=> (= (ControlFlow 0 225307) 228444) anon4_Else_correct@@1))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@16@@1 (=> (and (and (= $abort_code@14@@1 $abort_code@14@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@14@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 228236) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@14@@1 $EXEC_FAILURE_CODE) (= $abort_flag@16@@1 true)) (and (=> (= (ControlFlow 0 228288) 228236) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 228288) 228222) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 228286) 228288)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_162435 (|Store__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| _$t0@@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@14@@1 $abort_code@13@@1) (= $abort_flag@16@@1 $abort_flag@15@@1))) (and (=> (= (ControlFlow 0 228212) 228236) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 228212) 228222) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@15@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 228190) 228286) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 228190) 228212) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@15@@1 (=> (and (and (= $abort_code@13@@1 $abort_code@13@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@13@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 228302) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@15@@1 $abort_flag@14@@1)) (and (= $abort_code@13@@1 $abort_code@12@@1) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 228142) 228302) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 228142) 228190) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@15@@1 true)) (and (= $abort_code@13@@1 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 228172) 228302) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 228172) 228190) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 228114) 228172) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 228114) 228142) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$0$dst@1@@2 (= (ControlFlow 0 228178) 228114)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$0$dst@1@@2) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227961) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= inline$$Not$0$dst@1@@2 inline$$Not$0$dst@1@@2))) (and (=> (= (ControlFlow 0 227945) 228178) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 227945) 227961) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$0$anon0_correct@@2  (=> (and (= inline$$Not$0$dst@1@@2  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1|)) (= (ControlFlow 0 227909) 227945)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 227915) 227909)) inline$$Not$0$anon0_correct@@2))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1@@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 227869) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@14@@1) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 inline$$1_Roles_can_hold_balance$0$$ret0@1@@1))) (and (=> (= (ControlFlow 0 227853) 227915) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 227853) 227869) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@14@@1 (=> (and (and (= $abort_code@12@@1 $abort_code@12@@1) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@12@@1)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 228316) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct@@1  (=> (= $abort_flag@14@@1 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 inline$$1_Roles_can_hold_balance$0$$ret0@0@@1) (= $abort_code@12@@1 inline$$1_Roles_can_hold_balance$0$$t4@1@@1)) (and (=> (= (ControlFlow 0 227743) 228316) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 227743) 227853) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@1  (=> (and (and $abort_flag@12@@1 (= $abort_code@10@@1 $abort_code@10@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@1 $abort_code@10@@1) (= (ControlFlow 0 227737) 227743))) inline$$1_Roles_can_hold_balance$0$L9_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@1  (=> (and (and $abort_flag@7@@2 (= $abort_code@6@@2 $abort_code@6@@2)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@1 $abort_code@6@@2) (= (ControlFlow 0 227775) 227743))) inline$$1_Roles_can_hold_balance$0$L9_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@1  (=> (and (and $abort_flag@3@@2 (= $abort_code@3@@2 $abort_code@3@@2)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1@@1 $abort_code@3@@2) (= (ControlFlow 0 227807) 227743))) inline$$1_Roles_can_hold_balance$0$L9_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct@@1  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@1 inline$$1_Roles_can_hold_balance$0$$t2@1@@1) (= $abort_flag@14@@1 $abort_flag@13@@1)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1@@1 inline$$1_Roles_can_hold_balance$0$$t2@1@@1) (= $abort_code@12@@1 $abort_code@11@@1))) (and (=> (= (ControlFlow 0 227723) 228316) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 227723) 227853) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@1  (=> (and (not $abort_flag@12@@1) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1) (= $abort_code@11@@1 $abort_code@10@@1)) (and (= $abort_flag@13@@1 $abort_flag@12@@1) (= (ControlFlow 0 227711) 227723))) inline$$1_Roles_can_hold_balance$0$L7_correct@@1))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@1  (=> (and (and (not $abort_flag@11@@1) (= inline$$1_Roles_has_role$2$$ret0@1@@1 inline$$1_Roles_has_role$2$$ret0@1@@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 inline$$1_Roles_has_role$2$$ret0@1@@1) (= $abort_flag@12@@1 $abort_flag@11@@1))) (and (=> (= (ControlFlow 0 227669) 227737) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 227669) 227711) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@1)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@1  (=> (and (and $abort_flag@11@@1 (= $abort_code@10@@1 $abort_code@10@@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1@@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0@@1) (= $abort_flag@12@@1 true))) (and (=> (= (ControlFlow 0 227687) 227737) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct@@1) (=> (= (ControlFlow 0 227687) 227711) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct@@1  (=> $abort_flag@9@@1 (=> (and (and (= $abort_code@8@@2 $abort_code@8@@2) (= $abort_flag@11@@1 true)) (and (= $abort_code@10@@1 $abort_code@8@@2) (= inline$$1_Roles_has_role$2$$ret0@1@@1 inline$$1_Roles_has_role$2$$ret0@0@@1))) (and (=> (= (ControlFlow 0 227593) 227687) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 227593) 227669) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$2$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1@@1 inline$$1_Roles_has_role$2$$t2@1@@1) (= $abort_flag@11@@1 $abort_flag@10@@1)) (and (= $abort_code@10@@1 $abort_code@9@@1) (= inline$$1_Roles_has_role$2$$ret0@1@@1 inline$$1_Roles_has_role$2$$t2@1@@1))) (and (=> (= (ControlFlow 0 227529) 227687) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 227529) 227669) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@9@@1) (= inline$$1_Roles_has_role$2$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2@@1))) (and (= inline$$1_Roles_has_role$2$$t9@1@@1 (= inline$$1_Roles_has_role$2$$t8@1@@1 2)) (= inline$$1_Roles_has_role$2$$t9@1@@1 inline$$1_Roles_has_role$2$$t9@1@@1))) (and (and (= $abort_flag@10@@1 $abort_flag@9@@1) (= inline$$1_Roles_has_role$2$$t2@1@@1 inline$$1_Roles_has_role$2$$t9@1@@1)) (and (= $abort_code@9@@1 $abort_code@8@@2) (= (ControlFlow 0 227575) 227529)))) inline$$1_Roles_has_role$2$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct@@1  (=> (= $abort_code@8@@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9@@1 true) (= inline$$1_Roles_has_role$2$$t6@2@@1 inline$$1_Roles_has_role$2$$t6@0@@1)) (and (=> (= (ControlFlow 0 227645) 227593) inline$$1_Roles_has_role$2$anon11_Then_correct@@1) (=> (= (ControlFlow 0 227645) 227575) inline$$1_Roles_has_role$2$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1)) (= (ControlFlow 0 227643) 227645)) inline$$1_Roles_has_role$2$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1)) (= $abort_code@8@@2 $abort_code@7@@2)) (and (= $abort_flag@9@@1 $abort_flag@8@@1) (= inline$$1_Roles_has_role$2$$t6@2@@1 inline$$1_Roles_has_role$2$$t6@1@@1))) (and (=> (= (ControlFlow 0 227547) 227593) inline$$1_Roles_has_role$2$anon11_Then_correct@@1) (=> (= (ControlFlow 0 227547) 227575) inline$$1_Roles_has_role$2$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$2$$t5@1@@1 (and (=> (= (ControlFlow 0 227533) 227643) inline$$1_Roles_has_role$2$anon10_Then_correct@@1) (=> (= (ControlFlow 0 227533) 227547) inline$$1_Roles_has_role$2$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$2$$t5@1@@1) (= false false)) (=> (and (and (= $abort_flag@10@@1 $abort_flag@8@@1) (= inline$$1_Roles_has_role$2$$t2@1@@1 false)) (and (= $abort_code@9@@1 $abort_code@7@@2) (= (ControlFlow 0 227517) 227529))) inline$$1_Roles_has_role$2$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$2$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0@@1) (= inline$$1_Roles_has_role$2$$t4@0@@1 (|$addr#$signer| _$t0@@2))) (and (= inline$$1_Roles_has_role$2$$t4@0@@1 inline$$1_Roles_has_role$2$$t4@0@@1) (= inline$$1_Roles_has_role$2$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$2$$t4@0@@1)))) (and (=> (= (ControlFlow 0 227497) 227533) inline$$1_Roles_has_role$2$anon9_Then_correct@@1) (=> (= (ControlFlow 0 227497) 227517) inline$$1_Roles_has_role$2$anon9_Else_correct@@1))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@1  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 227651) 227497)) inline$$1_Roles_has_role$2$anon0_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@1  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1@@1) (= (ControlFlow 0 227693) 227651)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@1  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1@@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1@@1 true) (= $abort_code@11@@1 $abort_code@7@@2)) (and (= $abort_flag@13@@1 $abort_flag@8@@1) (= (ControlFlow 0 227761) 227723))) inline$$1_Roles_can_hold_balance$0$L7_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@1  (=> (not $abort_flag@7@@2) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1)) (and (= $abort_flag@8@@1 $abort_flag@7@@2) (= $abort_code@7@@2 $abort_code@6@@2))) (and (=> (= (ControlFlow 0 227011) 227761) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 227011) 227693) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@1))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@1  (=> (and (and (not $abort_flag@6@@2) (= inline$$1_Roles_has_role$1$$ret0@1@@1 inline$$1_Roles_has_role$1$$ret0@1@@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_role$1$$ret0@1@@1) (= $abort_flag@7@@2 $abort_flag@6@@2))) (and (=> (= (ControlFlow 0 226969) 227775) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@1) (=> (= (ControlFlow 0 226969) 227011) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@1)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@1  (=> (and (and $abort_flag@6@@2 (= $abort_code@6@@2 $abort_code@6@@2)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0@@1) (= $abort_flag@7@@2 true))) (and (=> (= (ControlFlow 0 226987) 227775) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct@@1) (=> (= (ControlFlow 0 226987) 227011) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct@@1  (=> $abort_flag@4@@2 (=> (and (and (= $abort_code@4@@2 $abort_code@4@@2) (= $abort_code@6@@2 $abort_code@4@@2)) (and (= $abort_flag@6@@2 true) (= inline$$1_Roles_has_role$1$$ret0@1@@1 inline$$1_Roles_has_role$1$$ret0@0@@1))) (and (=> (= (ControlFlow 0 226893) 226987) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 226893) 226969) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$1$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1@@1 inline$$1_Roles_has_role$1$$t2@1@@1) (= $abort_code@6@@2 $abort_code@5@@2)) (and (= $abort_flag@6@@2 $abort_flag@5@@2) (= inline$$1_Roles_has_role$1$$ret0@1@@1 inline$$1_Roles_has_role$1$$t2@1@@1))) (and (=> (= (ControlFlow 0 226829) 226987) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 226829) 226969) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@4@@2) (= inline$$1_Roles_has_role$1$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2@@1))) (and (= inline$$1_Roles_has_role$1$$t9@1@@1 (= inline$$1_Roles_has_role$1$$t8@1@@1 6)) (= inline$$1_Roles_has_role$1$$t9@1@@1 inline$$1_Roles_has_role$1$$t9@1@@1))) (and (and (= $abort_code@5@@2 $abort_code@4@@2) (= inline$$1_Roles_has_role$1$$t2@1@@1 inline$$1_Roles_has_role$1$$t9@1@@1)) (and (= $abort_flag@5@@2 $abort_flag@4@@2) (= (ControlFlow 0 226875) 226829)))) inline$$1_Roles_has_role$1$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct@@1  (=> (= $abort_flag@4@@2 true) (=> (and (= $abort_code@4@@2 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2@@1 inline$$1_Roles_has_role$1$$t6@0@@1)) (and (=> (= (ControlFlow 0 226945) 226893) inline$$1_Roles_has_role$1$anon11_Then_correct@@1) (=> (= (ControlFlow 0 226945) 226875) inline$$1_Roles_has_role$1$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1)) (= (ControlFlow 0 226943) 226945)) inline$$1_Roles_has_role$1$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1)) (= $abort_flag@4@@2 $abort_flag@3@@2)) (and (= $abort_code@4@@2 $abort_code@3@@2) (= inline$$1_Roles_has_role$1$$t6@2@@1 inline$$1_Roles_has_role$1$$t6@1@@1))) (and (=> (= (ControlFlow 0 226847) 226893) inline$$1_Roles_has_role$1$anon11_Then_correct@@1) (=> (= (ControlFlow 0 226847) 226875) inline$$1_Roles_has_role$1$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$1$$t5@1@@1 (and (=> (= (ControlFlow 0 226833) 226943) inline$$1_Roles_has_role$1$anon10_Then_correct@@1) (=> (= (ControlFlow 0 226833) 226847) inline$$1_Roles_has_role$1$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$1$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@5@@2 $abort_code@3@@2) (= inline$$1_Roles_has_role$1$$t2@1@@1 false)) (and (= $abort_flag@5@@2 $abort_flag@3@@2) (= (ControlFlow 0 226817) 226829))) inline$$1_Roles_has_role$1$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$1$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0@@1) (= inline$$1_Roles_has_role$1$$t4@0@@1 (|$addr#$signer| _$t0@@2))) (and (= inline$$1_Roles_has_role$1$$t4@0@@1 inline$$1_Roles_has_role$1$$t4@0@@1) (= inline$$1_Roles_has_role$1$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$1$$t4@0@@1)))) (and (=> (= (ControlFlow 0 226797) 226833) inline$$1_Roles_has_role$1$anon9_Then_correct@@1) (=> (= (ControlFlow 0 226797) 226817) inline$$1_Roles_has_role$1$anon9_Else_correct@@1))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@1  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 226951) 226797)) inline$$1_Roles_has_role$1$anon0_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@1  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1) (= (ControlFlow 0 226993) 226951)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct@@1)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@1  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1@@1 true)) (and (= $abort_flag@8@@1 $abort_flag@3@@2) (= $abort_code@7@@2 $abort_code@3@@2))) (and (=> (= (ControlFlow 0 227793) 227761) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct@@1) (=> (= (ControlFlow 0 227793) 227693) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct@@1))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@1  (=> (not $abort_flag@3@@2) (and (=> (= (ControlFlow 0 226313) 227793) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 226313) 226993) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct@@1)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@1  (=> (and (and (not $abort_flag@2@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@1@@1) (= $abort_flag@3@@2 $abort_flag@2@@2))) (and (=> (= (ControlFlow 0 226281) 227807) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 226281) 226313) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@1)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@1  (=> (and (and $abort_flag@2@@2 (= $abort_code@3@@2 $abort_code@3@@2)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1@@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0@@1) (= $abort_flag@3@@2 true))) (and (=> (= (ControlFlow 0 226299) 227807) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 226299) 226313) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct@@1  (=> $abort_flag@0@@2 (=> (and (and (= $abort_code@1@@2 $abort_code@1@@2) (= $abort_code@3@@2 $abort_code@1@@2)) (and (= $abort_flag@2@@2 true) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$ret0@0@@1))) (and (=> (= (ControlFlow 0 226205) 226299) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 226205) 226281) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$L3_correct@@1  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1@@1 inline$$1_Roles_has_role$0$$t2@1@@1) (= $abort_code@3@@2 $abort_code@2@@2)) (and (= $abort_flag@2@@2 $abort_flag@1@@2) (= inline$$1_Roles_has_role$0$$ret0@1@@1 inline$$1_Roles_has_role$0$$t2@1@@1))) (and (=> (= (ControlFlow 0 226141) 226299) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 226141) 226281) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct@@1  (=> (and (and (and (not $abort_flag@0@@2) (= inline$$1_Roles_has_role$0$$t8@1@@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2@@1))) (and (= inline$$1_Roles_has_role$0$$t9@1@@1 (= inline$$1_Roles_has_role$0$$t8@1@@1 5)) (= inline$$1_Roles_has_role$0$$t9@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1))) (and (and (= $abort_code@2@@2 $abort_code@1@@2) (= inline$$1_Roles_has_role$0$$t2@1@@1 inline$$1_Roles_has_role$0$$t9@1@@1)) (and (= $abort_flag@1@@2 $abort_flag@0@@2) (= (ControlFlow 0 226187) 226141)))) inline$$1_Roles_has_role$0$L3_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@0@@1)) (and (=> (= (ControlFlow 0 226257) 226205) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 226257) 226187) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= (ControlFlow 0 226255) 226257)) inline$$1_Roles_has_role$0$anon10_Then$1_correct@@1)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1@@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$1_Roles_has_role$0$$t6@2@@1 inline$$1_Roles_has_role$0$$t6@1@@1))) (and (=> (= (ControlFlow 0 226159) 226205) inline$$1_Roles_has_role$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 226159) 226187) inline$$1_Roles_has_role$0$anon11_Else_correct@@1))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct@@1  (=> inline$$1_Roles_has_role$0$$t5@1@@1 (and (=> (= (ControlFlow 0 226145) 226255) inline$$1_Roles_has_role$0$anon10_Then_correct@@1) (=> (= (ControlFlow 0 226145) 226159) inline$$1_Roles_has_role$0$anon10_Else_correct@@1)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct@@1  (=> (and (not inline$$1_Roles_has_role$0$$t5@1@@1) (= false false)) (=> (and (and (= $abort_code@2@@2 $abort_code@0@@2) (= inline$$1_Roles_has_role$0$$t2@1@@1 false)) (and (= $abort_flag@1@@2 false) (= (ControlFlow 0 226129) 226141))) inline$$1_Roles_has_role$0$L3_correct@@1))))
(let ((inline$$1_Roles_has_role$0$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t4@0@@1 (|$addr#$signer| _$t0@@2))) (and (= inline$$1_Roles_has_role$0$$t4@0@@1 inline$$1_Roles_has_role$0$$t4@0@@1) (= inline$$1_Roles_has_role$0$$t5@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_Roles_has_role$0$$t4@0@@1)))) (and (=> (= (ControlFlow 0 226109) 226145) inline$$1_Roles_has_role$0$anon9_Then_correct@@1) (=> (= (ControlFlow 0 226109) 226129) inline$$1_Roles_has_role$0$anon9_Else_correct@@1))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@1  (=> (= _$t0@@2 _$t0@@2) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 226263) 226109)) inline$$1_Roles_has_role$0$anon0_correct@@1))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct@@1  (=> (and (= _$t0@@2 _$t0@@2) (= (ControlFlow 0 226305) 226263)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct@@1)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1@@2 (= (ControlFlow 0 227813) 226305)) inline$$1_Roles_can_hold_balance$0$anon0_correct@@1)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1@@2) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 225301) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 inline$$1_DiemAccount_exists_at$0$$t1@1@@2))) (and (=> (= (ControlFlow 0 225285) 227813) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 225285) 225301) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 228356) 225307))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct| true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@2  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@2 inline$$1_DiemAccount_exists_at$0$$t1@1@@2)) (and (=> (= (ControlFlow 0 225243) 228330) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 225243) 225285) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= (ControlFlow 0 225249) 225243)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@2)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= _$t0@@2 _$t0@@2) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| _$t0@@2))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 225138) 228356) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 225138) 225249) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((anon0$1_correct@@2  (=> (and (forall ((addr@@153 Int) ) (!  (=> (|$IsValid'address'| addr@@153) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@153) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@153) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@153)) 4))))
 :qid |AccountAdministrationScriptsandybpl.17024:20|
 :skolemid |310|
)) (forall ((addr@@154 Int) ) (!  (=> (|$IsValid'address'| addr@@154) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@154) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@154) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@154)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17028:20|
 :skolemid |311|
))) (=> (and (and (forall ((addr@@155 Int) ) (!  (=> (|$IsValid'address'| addr@@155) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@155) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@155) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@155)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17032:20|
 :skolemid |312|
)) (forall ((addr@@156 Int) ) (!  (=> (|$IsValid'address'| addr@@156) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@156) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@156)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@156) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@156)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17036:20|
 :skolemid |313|
))) (and (forall ((mint_cap_owner@@3 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141305| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@3) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@3)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17040:21|
 :skolemid |314|
)) (forall ((mint_cap_owner@@4 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141392| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@4)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17040:268|
 :skolemid |315|
)))) (=> (and (and (and (forall ((addr1@@9 Int) ) (!  (=> (|$IsValid'address'| addr1@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136585| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@9) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@9) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@9)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17048:21|
 :skolemid |316|
)) (forall ((addr1@@10 Int) ) (!  (=> (|$IsValid'address'| addr1@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136672| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@10) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@10) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@10)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17048:231|
 :skolemid |317|
))) (and (forall ((addr1@@11 Int) ) (!  (=> (|$IsValid'address'| addr1@@11) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@11)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@11) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@11)) 2))))
 :qid |AccountAdministrationScriptsandybpl.17052:21|
 :skolemid |318|
)) (forall ((addr1@@12 Int) ) (!  (=> (|$IsValid'address'| addr1@@12) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@12)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@12) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@12)) 2))))
 :qid |AccountAdministrationScriptsandybpl.17052:292|
 :skolemid |319|
)))) (and (and (forall ((addr@@157 Int) ) (!  (=> (|$IsValid'address'| addr@@157) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@157) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.17056:22|
 :skolemid |320|
)) (forall ((addr@@158 Int) ) (!  (=> (|$IsValid'address'| addr@@158) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@158) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.17056:222|
 :skolemid |321|
))) (forall ((addr@@159 Int) ) (!  (=> (|$IsValid'address'| addr@@159) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141747| |$1_Diem_Preburn'#0'_$memory|) addr@@159) (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.17056:423|
 :skolemid |322|
)))) (=> (and (and (and (and (and (and (forall ((addr@@160 Int) ) (!  (=> (|$IsValid'address'| addr@@160) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@160) (|Select__T@[Int]Bool_| (|domain#$Memory_136105| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.17060:22|
 :skolemid |323|
)) (forall ((addr@@161 Int) ) (!  (=> (|$IsValid'address'| addr@@161) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@161) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.17060:227|
 :skolemid |324|
))) (forall ((addr@@162 Int) ) (!  (=> (|$IsValid'address'| addr@@162) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_142172| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@162) (|Select__T@[Int]Bool_| (|domain#$Memory_136305| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |AccountAdministrationScriptsandybpl.17060:433|
 :skolemid |325|
))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (forall ((addr1@@13 Int) ) (!  (=> (|$IsValid'address'| addr1@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr1@@13) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@13)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@13) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@13)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.17072:20|
 :skolemid |326|
)) (forall ((addr@@163 Int) ) (!  (=> (|$IsValid'address'| addr@@163) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@163) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@163)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@163)))) 0)) (= addr@@163 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@163))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17076:20|
 :skolemid |327|
)))) (and (and (and (forall ((addr@@164 Int) ) (!  (=> (|$IsValid'address'| addr@@164) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@164) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@164) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@164)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@164)))) 0)) (= addr@@164 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@164))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17080:20|
 :skolemid |328|
)) (forall ((addr@@165 Int) ) (!  (=> (|$IsValid'address'| addr@@165) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@165) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@165)))
 :qid |AccountAdministrationScriptsandybpl.17084:20|
 :skolemid |329|
))) (and (forall ((addr@@166 Int) ) (!  (=> (|$IsValid'address'| addr@@166) (=> (and (= addr@@166 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@166)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@166)))
 :qid |AccountAdministrationScriptsandybpl.17088:20|
 :skolemid |330|
)) (forall ((addr@@167 Int) ) (!  (=> (|$IsValid'address'| addr@@167) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153144| $1_VASPDomain_VASPDomainManager_$memory) addr@@167) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@167) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@167)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17092:20|
 :skolemid |331|
)))) (and (and (forall ((addr@@168 Int) ) (!  (=> (|$IsValid'address'| addr@@168) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@168) (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@168)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@168)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@168)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@168) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@168)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.17096:20|
 :skolemid |332|
)) (forall ((addr@@169 Int) ) (!  (=> (|$IsValid'address'| addr@@169) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160025| $1_DesignatedDealer_Dealer_$memory) addr@@169) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@169) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@169)) 2))))
 :qid |AccountAdministrationScriptsandybpl.17100:20|
 :skolemid |333|
))) (and (forall ((addr@@170 Int) ) (!  (=> (|$IsValid'address'| addr@@170) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr@@170) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@170)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@170) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@170)) 5)))))
 :qid |AccountAdministrationScriptsandybpl.17104:20|
 :skolemid |334|
)) (forall ((addr@@171 Int) ) (!  (=> (|$IsValid'address'| addr@@171) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@171) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@171)))
 :qid |AccountAdministrationScriptsandybpl.17108:20|
 :skolemid |335|
)))))) (and (and (and (and (forall ((addr@@172 Int) ) (!  (=> (|$IsValid'address'| addr@@172) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@172) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@172)))
 :qid |AccountAdministrationScriptsandybpl.17112:22|
 :skolemid |336|
)) (forall ((addr@@173 Int) ) (!  (=> (|$IsValid'address'| addr@@173) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@173) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@173)))
 :qid |AccountAdministrationScriptsandybpl.17112:218|
 :skolemid |337|
))) (forall ((addr@@174 Int) ) (!  (=> (|$IsValid'address'| addr@@174) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@174) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@174)))
 :qid |AccountAdministrationScriptsandybpl.17112:415|
 :skolemid |338|
))) (and (and (forall ((addr@@175 Int) ) (!  (=> (|$IsValid'address'| addr@@175) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@175) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@175) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@175)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17116:20|
 :skolemid |339|
)) (forall ((addr@@176 Int) ) (!  (=> (|$IsValid'address'| addr@@176) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@176) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@176) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@176)) 4))))
 :qid |AccountAdministrationScriptsandybpl.17120:20|
 :skolemid |340|
))) (and (forall ((addr@@177 Int) ) (!  (=> (|$IsValid'address'| addr@@177) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) addr@@177) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@177) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@177)) 5))))
 :qid |AccountAdministrationScriptsandybpl.17124:20|
 :skolemid |341|
)) (forall ((addr@@178 Int) ) (!  (=> (|$IsValid'address'| addr@@178) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) addr@@178) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@178) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@178)) 6))))
 :qid |AccountAdministrationScriptsandybpl.17128:20|
 :skolemid |342|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@8)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@8))
 :qid |AccountAdministrationScriptsandybpl.17134:20|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@9) 10000000000))))
 :qid |AccountAdministrationScriptsandybpl.17138:20|
 :skolemid |344|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_136169| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@10)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@10) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@10))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@10))) 1))))
 :qid |AccountAdministrationScriptsandybpl.17142:20|
 :skolemid |345|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@10))
)))) (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@11))
 :qid |AccountAdministrationScriptsandybpl.17146:20|
 :skolemid |346|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@11))
)) (let ((addr@@179 (|$addr#$signer| _$t0@@2)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@179)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@179) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@179))))))) (and (= _$t0@@2 _$t0@@2) (= (ControlFlow 0 228360) 225138)))))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|))))))
(let ((inline$$InitEventStore$0$anon0_correct@@2  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@4 T@$1_Event_EventHandle) ) (! (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@4)))
 (and (= (|l#Multiset_89085| stream@@3) 0) (forall ((v@@50 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@3) v@@50) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 223492) 228360)) anon0$1_correct@@2)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 329959) 223492) inline$$InitEventStore$0$anon0_correct@@2)))
anon0_correct@@2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@3 () T@$signer)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_169392)
(declare-fun _$t1@@0 () Int)
(declare-fun |Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int) T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $t5@@0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $t8@0@@0 () Int)
(declare-fun $abort_flag@5@@3 () Bool)
(declare-fun $abort_code@6@@3 () Int)
(declare-fun $abort_flag@3@@3 () Bool)
(declare-fun $abort_code@4@@3 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@0 () T@$Memory_161256)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1 () T@$Memory_169392)
(declare-fun $t3@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $abort_flag@4@@3 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3 () T@$Mutation_171320)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 () T@$Mutation_171320)
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| () T@$Mutation_93396)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0 () T@$Memory_169392)
(declare-fun |Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|T@[Int]$1_RecoveryAddress_RecoveryAddress| Int T@$1_RecoveryAddress_RecoveryAddress) |T@[Int]$1_RecoveryAddress_RecoveryAddress|)
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_RecoveryAddress_RecoveryAddress)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@5@@3 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1 () T@$Mutation_93396)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 () Int)
(declare-fun |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1 () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0 () T@$Mutation_171320)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1 () T@$Mutation_171320)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 () Int)
(declare-fun inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 () Bool)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 () Int)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t8@0 () T@$Mutation_93396)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@0 () T@$Mutation_93396)
(declare-fun inline$$1_RecoveryAddress_add_rotation_capability$0$$t10@0 () Int)
(declare-fun $t9 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0 () T@$Mutation_165279)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@0 () T@$Memory_161256)
(declare-fun $abort_code@3@@3 () Int)
(declare-fun $abort_flag@2@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0 () T@$Mutation_165235)
(declare-fun $abort_flag@1@@3 () Bool)
(declare-fun $abort_code@2@@3 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 () Bool)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 () Bool)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@0 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@3 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@0 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@0 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $t2 () Int)
(declare-fun $t6@@0 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_add_recovery_rotation_capability$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 333560) (let ((L2_correct@@0  (and (=> (= (ControlFlow 0 232991) (- 0 336025)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0)))))))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))))))) (=> (= (ControlFlow 0 232991) (- 0 336073)) (or (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t4@@0)) (= 5 $t8@0@@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0) (= 1 $t8@0@@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (= 5 $t8@0@@0))) (and (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256) (= 8 $t8@0@@0))) (and (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0)))))) (= 7 $t8@0@@0))) (= 1 $t8@0@@0)) (= 5 $t8@0@@0)) (= 8 $t8@0@@0)) (= 7 $t8@0@@0)))))))
(let ((anon7_Then_correct  (=> (and (and $abort_flag@5@@3 (= $abort_code@6@@3 $abort_code@6@@3)) (and (= $t8@0@@0 $abort_code@6@@3) (= (ControlFlow 0 232795) 232991))) L2_correct@@0)))
(let ((anon6_Then_correct  (=> (and (and $abort_flag@3@@3 (= $abort_code@4@@3 $abort_code@4@@3)) (and (= $t8@0@@0 $abort_code@4@@3) (= (ControlFlow 0 233005) 232991))) L2_correct@@0)))
(let ((anon7_Else_correct  (=> (not $abort_flag@5@@3) (and (=> (= (ControlFlow 0 232781) (- 0 335919)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t4@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t4@@0))) (and (=> (= (ControlFlow 0 232781) (- 0 335931)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@3))))) 0)) (and (=> (= (ControlFlow 0 232781) (- 0 335942)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (and (=> (= (ControlFlow 0 232781) (- 0 335953)) (not (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256))) (=> (not (>= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) 256)) (and (=> (= (ControlFlow 0 232781) (- 0 335970)) (not (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0)))))))) (=> (not (not (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t5@@0) $t5@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $t5@@0))))))) (and (=> (= (ControlFlow 0 232781) (- 0 335984)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@0) (|$addr#$signer| _$t0@@3))))) 0)) (=> (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@0) (|$addr#$signer| _$t0@@3))))) 0) (=> (= (ControlFlow 0 232781) (- 0 335993)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@1) _$t1@@0)) (- (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@1) _$t1@@0))) 1)) $t3@@0)))))))))))))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Else_correct  (=> (and (not $abort_flag@4@@3) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3 ($Mutation_171320 (|l#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (|p#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) ($1_RecoveryAddress_RecoveryAddress (|v#$Mutation_93396| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1|))))) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0 ($Memory_169392 (|Store__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) (|a#$Global| (|l#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)) true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) (|a#$Global| (|l#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)) (|v#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@3)))) (= $abort_code@6@@3 $abort_code@5@@3)) (and (= $abort_flag@5@@3 $abort_flag@4@@3) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory@0))) (and (=> (= (ControlFlow 0 232553) 232795) anon7_Then_correct) (=> (= (ControlFlow 0 232553) 232781) anon7_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct  (=> (= $abort_code@6@@3 inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1) (=> (and (= $abort_flag@5@@3 true) (= $1_RecoveryAddress_RecoveryAddress_$memory@1 $1_RecoveryAddress_RecoveryAddress_$memory)) (and (=> (= (ControlFlow 0 232063) 232795) anon7_Then_correct) (=> (= (ControlFlow 0 232063) 232781) anon7_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Then_correct  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@3) (= (ControlFlow 0 232567) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1| ($Mutation_93396 (|l#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (|p#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (seq.++ (|v#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1) (seq.unit inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)))) (and (=> (= (ControlFlow 0 232511) 232567) inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Then_correct) (=> (= (ControlFlow 0 232511) 232553) inline$$1_RecoveryAddress_add_rotation_capability$0$anon29_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 232517) 232511)) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= (ControlFlow 0 232456) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else$1_correct  (=> (|$IsValid'u64'| 6) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 8)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t26@0) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 232440) 232517) inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Then_correct) (=> (= (ControlFlow 0 232440) 232456) inline$$1_RecoveryAddress_add_rotation_capability$0$anon28_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| 256)) (= (ControlFlow 0 232400) 232440)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else$1_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else_correct  (=> (not $abort_flag@4@@3) (=> (and (|$IsValid'u64'| 256) (= (ControlFlow 0 232406) 232400)) inline$$Lt$0$anon0_correct))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Then_correct  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@3) (= (ControlFlow 0 232581) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((|inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$l@1| (seq.len inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1)) (and (=> (= (ControlFlow 0 232340) 232581) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Then_correct) (=> (= (ControlFlow 0 232340) 232406) inline$$1_RecoveryAddress_add_rotation_capability$0$anon27_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct  (=> (and (not $abort_flag@4@@3) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1 ($Mutation_93396 (|l#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (seq.++ (|p#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2) (seq.unit 0)) (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|v#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2))))) (=> (and (and (= |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| (|v#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1)) (= |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1| |inline$$1_RecoveryAddress_add_rotation_capability$0$$temp_0'vec'$1_DiemAccount_KeyRotationCapability''@1|)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t21@1 (|v#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@1)) (= (ControlFlow 0 232346) 232340))) |inline$$1_Vector_length'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct  (=> (and (and $abort_flag@4@@3 (= $abort_code@5@@3 $abort_code@5@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@5@@3) (= (ControlFlow 0 232595) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then$1_correct  (=> (= $abort_flag@4@@3 true) (=> (and (= $abort_code@5@@3 $EXEC_FAILURE_CODE) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0)) (and (=> (= (ControlFlow 0 232647) 232595) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct) (=> (= (ControlFlow 0 232647) 232346) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (= (ControlFlow 0 232645) 232647)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0) (=> (and (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1 ($Mutation_171320 ($Global _$t1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0))) (= $abort_flag@4@@3 $abort_flag@3@@3)) (and (= $abort_code@5@@3 $abort_code@4@@3) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@2 inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@1))) (and (=> (= (ControlFlow 0 232274) 232595) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Then_correct) (=> (= (ControlFlow 0 232274) 232346) inline$$1_RecoveryAddress_add_rotation_capability$0$anon26_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Then_correct  (=> inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 (and (=> (= (ControlFlow 0 232252) 232645) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Then_correct) (=> (= (ControlFlow 0 232252) 232274) inline$$1_RecoveryAddress_add_rotation_capability$0$anon25_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Else_correct  (=> (and (and (not inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= (ControlFlow 0 232248) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Else_correct  (=> (and (and (and (not $abort_flag@3@@3) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0  (and (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0)) (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1))) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) _$t1@@0) _$t1@@0 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) _$t1@@0))) (ite (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)))))) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 7)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t18@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t16@0)))) (and (=> (= (ControlFlow 0 232232) 232252) inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Then_correct) (=> (= (ControlFlow 0 232232) 232248) inline$$1_RecoveryAddress_add_rotation_capability$0$anon24_Else_correct)))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Then_correct  (=> (and (and $abort_flag@3@@3 (= $abort_code@4@@3 $abort_code@4@@3)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 $abort_code@4@@3) (= (ControlFlow 0 232661) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1)) (and (=> (= (ControlFlow 0 232160) 232661) inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Then_correct) (=> (= (ControlFlow 0 232160) 232232) inline$$1_RecoveryAddress_add_rotation_capability$0$anon23_Else_correct))))))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Then_correct  (=> (and inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 (= (ControlFlow 0 232166) 232160)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Else_correct  (=> (and (and (not inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t14@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= (ControlFlow 0 232057) 232063))) inline$$1_RecoveryAddress_add_rotation_capability$0$L7_correct)))
(let ((inline$$1_RecoveryAddress_add_rotation_capability$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t8@0)) 0) (= (seq.len (|p#$Mutation_171320| inline$$1_RecoveryAddress_add_rotation_capability$0$$t19@0)) 0)) (and (= (seq.len (|p#$Mutation_93396| inline$$1_RecoveryAddress_add_rotation_capability$0$$t20@0)) 0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t10@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)))) (=> (and (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0) (= _$t1@@0 _$t1@@0)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) _$t1@@0)) (|$IsValid'u64'| 5))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 5)) (and (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0 inline$$1_RecoveryAddress_add_rotation_capability$0$$t13@0) (= inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1 inline$$1_RecoveryAddress_add_rotation_capability$0$$t11@1)))) (and (=> (= (ControlFlow 0 232041) 232166) inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Then_correct) (=> (= (ControlFlow 0 232041) 232057) inline$$1_RecoveryAddress_add_rotation_capability$0$anon22_Else_correct))))))
(let ((anon6_Else_correct  (=> (not $abort_flag@3@@3) (=> (and (= $t9 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0)) (= (ControlFlow 0 232665) 232041)) inline$$1_RecoveryAddress_add_rotation_capability$0$anon0_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@0  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0 ($Mutation_165279 (|l#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0) (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@0|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@0) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@0 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)) (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@0)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0))) (and (and (= $abort_code@4@@3 $abort_code@3@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@0)) (and (= $abort_flag@3@@3 $abort_flag@2@@3) (= $1_DiemAccount_DiemAccount_$memory@1@@0 $1_DiemAccount_DiemAccount_$memory@0@@0)))) (and (=> (= (ControlFlow 0 231147) 233005) anon6_Then_correct) (=> (= (ControlFlow 0 231147) 232665) anon6_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0  (=> (and (and (= $abort_code@4@@3 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@0)) (and (= $abort_flag@3@@3 true) (= $1_DiemAccount_DiemAccount_$memory@1@@0 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 230824) 233005) anon6_Then_correct) (=> (= (ControlFlow 0 230824) 232665) anon6_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@0  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@0) (= (ControlFlow 0 231173) 230824))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0  (=> (and (not $abort_flag@2@@3) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0 ($Mutation_165279 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@0 (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@0))) 0)))) (and (=> (= (ControlFlow 0 231055) 231173) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@0) (=> (= (ControlFlow 0 231055) 231147) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0  (=> (and (and $abort_flag@2@@3 (= $abort_code@3@@3 $abort_code@3@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@3@@3) (= (ControlFlow 0 231187) 230824))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0) (=> (and (= $abort_flag@2@@3 true) (= $abort_code@3@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 231239) 231187) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 231239) 231055) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= (ControlFlow 0 231237) 231239)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0 ($Mutation_165235 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@0)) (and (= $abort_flag@2@@3 $abort_flag@1@@3) (= $abort_code@3@@3 $abort_code@2@@3))) (and (=> (= (ControlFlow 0 231009) 231187) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@0) (=> (= (ControlFlow 0 231009) 231055) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@0  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@0 (and (=> (= (ControlFlow 0 230987) 231237) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@0) (=> (= (ControlFlow 0 230987) 231009) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= (ControlFlow 0 230983) 230824))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@0  (=> (and (not $abort_flag@1@@3) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@0) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 inline$$1_DiemAccount_exists_at$1$$t1@1@@0))) (and (=> (= (ControlFlow 0 230967) 230987) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@0) (=> (= (ControlFlow 0 230967) 230983) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@0  (=> (and (and $abort_flag@1@@3 (= $abort_code@2@@3 $abort_code@2@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@2@@3) (= (ControlFlow 0 231253) 230824))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@0 inline$$1_DiemAccount_exists_at$1$$t1@1@@0)) (and (=> (= (ControlFlow 0 230925) 231253) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 230925) 230967) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@0  (=> (and inline$$Not$0$dst@1@@3 (= (ControlFlow 0 230931) 230925)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@0  (=> (and (and (not inline$$Not$0$dst@1@@3) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= (ControlFlow 0 230818) 230824))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@0  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@0) (= inline$$Not$0$dst@1@@3 inline$$Not$0$dst@1@@3))) (and (=> (= (ControlFlow 0 230802) 230931) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 230802) 230818) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@0))))))
(let ((inline$$Not$0$anon0_correct@@3  (=> (and (= inline$$Not$0$dst@1@@3  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0)) (= (ControlFlow 0 230762) 230802)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@0)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0  (=> (and (not $abort_flag@1@@3) (= (ControlFlow 0 230768) 230762)) inline$$Not$0$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@1@@3 (= $abort_code@2@@3 $abort_code@2@@3)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@0 $abort_code@2@@3) (= (ControlFlow 0 231267) 230824))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0  (=> (not $abort_flag@0@@3) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@0)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0) (= $abort_code@2@@3 $abort_code@1@@3)) (and (= $abort_flag@1@@3 $abort_flag@0@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@0))) (and (=> (= (ControlFlow 0 230638) 231267) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 230638) 230768) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0  (=> (= $abort_code@2@@3 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0) (=> (and (= $abort_flag@1@@3 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@0)) (and (=> (= (ControlFlow 0 230586) 231267) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 230586) 230768) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0  (=> (and (and $abort_flag@0@@3 (= $abort_code@1@@3 $abort_code@1@@3)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 $abort_code@1@@3) (= (ControlFlow 0 230652) 230586))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@0  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@0)) (and (=> (= (ControlFlow 0 230704) 230652) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 230704) 230638) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= (ControlFlow 0 230702) 230704)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@0))) (and (=> (= (ControlFlow 0 230604) 230652) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@0) (=> (= (ControlFlow 0 230604) 230638) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@0  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@3 (and (=> (= (ControlFlow 0 230590) 230702) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@0) (=> (= (ControlFlow 0 230590) 230604) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@3) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= (ControlFlow 0 230580) 230586))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@0)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@0  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@0) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 inline$$1_DiemAccount_exists_at$0$$t1@1@@3))) (and (=> (= (ControlFlow 0 230564) 230590) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@0) (=> (= (ControlFlow 0 230564) 230580) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@0 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@3  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@3 inline$$1_DiemAccount_exists_at$0$$t1@1@@3)) (and (=> (= (ControlFlow 0 230522) 230718) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@0) (=> (= (ControlFlow 0 230522) 230564) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@0  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 230528) 230522)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@3)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@0)) 0) (= (seq.len (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@0)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@0 (|$addr#$signer| _$t0@@3)) (= _$t0@@3 _$t0@@3))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 (|$addr#$signer| _$t0@@3))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@0) (= (ControlFlow 0 230724) 230528)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@0))))
(let ((anon0$1_correct@@3  (=> (and (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |AccountAdministrationScriptsandybpl.17263:20|
 :skolemid |347|
)) (forall ((addr@@180 Int) ) (!  (=> (|$IsValid'address'| addr@@180) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@180) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@180)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@180)))) 0)) (= addr@@180 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@180))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17267:20|
 :skolemid |348|
))) (=> (and (and (forall ((addr@@181 Int) ) (!  (=> (|$IsValid'address'| addr@@181) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@181) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@181) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@181)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@181)))) 0)) (= addr@@181 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@181))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17271:20|
 :skolemid |349|
)) (forall ((addr@@182 Int) ) (!  (=> (|$IsValid'address'| addr@@182) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@182) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@182)))
 :qid |AccountAdministrationScriptsandybpl.17275:20|
 :skolemid |350|
))) (and (forall ((addr@@183 Int) ) (!  (=> (|$IsValid'address'| addr@@183) (=> (and (= addr@@183 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@183)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@183)))
 :qid |AccountAdministrationScriptsandybpl.17279:20|
 :skolemid |351|
)) (forall ((addr@@184 Int) ) (!  (=> (|$IsValid'address'| addr@@184) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@184) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@184)))
 :qid |AccountAdministrationScriptsandybpl.17283:20|
 :skolemid |352|
)))) (=> (and (and (and (forall ((addr@@185 Int) ) (!  (=> (|$IsValid'address'| addr@@185) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@185) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@185)))
 :qid |AccountAdministrationScriptsandybpl.17287:22|
 :skolemid |353|
)) (forall ((addr@@186 Int) ) (!  (=> (|$IsValid'address'| addr@@186) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@186) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@186)))
 :qid |AccountAdministrationScriptsandybpl.17287:218|
 :skolemid |354|
))) (forall ((addr@@187 Int) ) (!  (=> (|$IsValid'address'| addr@@187) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@187) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@187)))
 :qid |AccountAdministrationScriptsandybpl.17287:415|
 :skolemid |355|
))) (forall ((addr@@188 Int) ) (!  (=> (|$IsValid'address'| addr@@188) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) addr@@188) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@188) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@188)) 5))))
 :qid |AccountAdministrationScriptsandybpl.17291:20|
 :skolemid |356|
))) (=> (and (and (and (and (forall ((addr@@189 Int) ) (!  (=> (|$IsValid'address'| addr@@189) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) addr@@189) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@189) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@189)) 6))))
 :qid |AccountAdministrationScriptsandybpl.17295:20|
 :skolemid |357|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@3))) (and (|$IsValid'address'| _$t1@@0) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $a_0@@12)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@12))
 :qid |AccountAdministrationScriptsandybpl.17304:20|
 :skolemid |358|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $a_0@@12))
)))) (and (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_154061| $1_VASP_ParentVASP_$memory) $a_0@@13)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@13))
 :qid |AccountAdministrationScriptsandybpl.17308:20|
 :skolemid |359|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_154061| $1_VASP_ParentVASP_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@14)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@14) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@14))) 1))))
 :qid |AccountAdministrationScriptsandybpl.17312:20|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@14))
))) (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@15)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@15))
 :qid |AccountAdministrationScriptsandybpl.17316:20|
 :skolemid |361|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@15))
)) (= $t2 (|$addr#$signer| _$t0@@3))))) (and (and (and (= $t3@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t2))) 0)) (= $t4@@0 (|$addr#$signer| _$t0@@3))) (and (= $t5@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| $t3@@0)) (let ((addr@@190 (|$addr#$signer| _$t0@@3)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@190)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@190) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@190)))))))) (and (and (= _$t0@@3 _$t0@@3) (= _$t1@@0 _$t1@@0)) (and (= $t6@@0 (|$addr#$signer| _$t0@@3)) (= (ControlFlow 0 231273) 230724))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@3  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@5 T@$1_Event_EventHandle) ) (! (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@5)))
 (and (= (|l#Multiset_89085| stream@@4) 0) (forall ((v@@51 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@4) v@@51) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 228932) 231273)) anon0$1_correct@@3)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 333560) 228932) inline$$InitEventStore$0$anon0_correct@@3)))
anon0_correct@@3)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t3@@1 () Int)
(declare-fun _$t0@@4 () T@$signer)
(declare-fun $t4@@1 () Int)
(declare-fun $t2@@0 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun $t7@0 () Int)
(declare-fun $abort_flag@6@@3 () Bool)
(declare-fun $abort_code@6@@4 () Int)
(declare-fun $abort_flag@3@@4 () Bool)
(declare-fun $abort_code@4@@4 () Int)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@1 () T@$Memory_161256)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@3 () T@$Memory_169392)
(declare-fun $t1 () Int)
(declare-fun $abort_flag@5@@4 () Bool)
(declare-fun $abort_code@5@@4 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 () T@$Memory_169392)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t15@1 () Int)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@2 () T@$Memory_169392)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory@0@@0 () T@$Memory_169392)
(declare-fun inline$$1_RecoveryAddress_publish$0$$t25@1 () T@$1_RecoveryAddress_RecoveryAddress)
(declare-fun $abort_flag@4@@4 () Bool)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@0| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0| () T@$Mutation_93396)
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| () T@$Mutation_93396)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| () (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0| () T@$Mutation_93396)
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
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1 () T@$Mutation_165279)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@1 () T@$Memory_161256)
(declare-fun $abort_code@3@@4 () Int)
(declare-fun $abort_flag@2@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1 () T@$Mutation_165235)
(declare-fun $abort_flag@1@@4 () Bool)
(declare-fun $abort_code@2@@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@1 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 () Int)
(declare-fun inline$$Not$0$dst@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 () Bool)
(declare-fun $abort_flag@0@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 () Bool)
(declare-fun $abort_code@1@@4 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@1 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@4 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@4 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@1 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@1 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@1 () Int)
(declare-fun $t5@@1 () Int)
(push 1)
(set-info :boogie-vc-id $1_AccountAdministrationScripts_create_recovery_address$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 336198) (let ((L2_correct@@1  (and (=> (= (ControlFlow 0 237515) (- 0 338761)) (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t4@@1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)))) (=> (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t4@@1)))) (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1))) (=> (= (ControlFlow 0 237515) (- 0 338805)) (or (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@1)) (= 5 $t7@0)) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0) (= 1 $t7@0))) (and (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t4@@1))) (= 7 $t7@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1) (= 6 $t7@0))) (and (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)) (= 7 $t7@0))) (= 1 $t7@0)) (= 7 $t7@0)) (= 6 $t7@0)))))))
(let ((anon7_Then_correct@@0  (=> (and (and $abort_flag@6@@3 (= $abort_code@6@@4 $abort_code@6@@4)) (and (= $t7@0 $abort_code@6@@4) (= (ControlFlow 0 237343) 237515))) L2_correct@@1)))
(let ((anon6_Then_correct@@0  (=> (and (and $abort_flag@3@@4 (= $abort_code@4@@4 $abort_code@4@@4)) (and (= $t7@0 $abort_code@4@@4) (= (ControlFlow 0 237529) 237515))) L2_correct@@1)))
(let ((anon7_Else_correct@@0  (=> (not $abort_flag@6@@3) (and (=> (= (ControlFlow 0 237329) (- 0 338644)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@1))) (and (=> (= (ControlFlow 0 237329) (- 0 338656)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@4))))) 0)) (and (=> (= (ControlFlow 0 237329) (- 0 338667)) (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t4@@1))))) (=> (not (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) $t4@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) $t4@@1)))) (and (=> (= (ControlFlow 0 237329) (- 0 338680)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $t4@@1)) (and (=> (= (ControlFlow 0 237329) (- 0 338690)) (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1)))) (=> (not (not (= (|$account_address#$1_DiemAccount_KeyRotationCapability| $t2@@0) $t4@@1))) (and (=> (= (ControlFlow 0 237329) (- 0 338705)) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@1) (|$addr#$signer| _$t0@@4))))) 0)) (=> (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@1) (|$addr#$signer| _$t0@@4))))) 0) (and (=> (= (ControlFlow 0 237329) (- 0 338714)) (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1) (and (=> (= (ControlFlow 0 237329) (- 0 338722)) (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1))) 1)) (=> (= (seq.len (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1))) 1) (=> (= (ControlFlow 0 237329) (- 0 338736)) (= (seq.nth (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory@3) $t1)) 0) $t2@@0)))))))))))))))))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon25_Else_correct  (=> (and (and (not $abort_flag@5@@4) (= $abort_code@6@@4 $abort_code@5@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@3 $1_RecoveryAddress_RecoveryAddress_$memory@1@@0) (= $abort_flag@6@@3 $abort_flag@5@@4))) (and (=> (= (ControlFlow 0 237111) 237343) anon7_Then_correct@@0) (=> (= (ControlFlow 0 237111) 237329) anon7_Else_correct@@0)))))
(let ((inline$$1_RecoveryAddress_publish$0$L7_correct  (=> (= $abort_code@6@@4 inline$$1_RecoveryAddress_publish$0$$t15@1) (=> (and (= $1_RecoveryAddress_RecoveryAddress_$memory@3 $1_RecoveryAddress_RecoveryAddress_$memory@2) (= $abort_flag@6@@3 true)) (and (=> (= (ControlFlow 0 236403) 237343) anon7_Then_correct@@0) (=> (= (ControlFlow 0 236403) 237329) anon7_Else_correct@@0))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon25_Then_correct  (=> $abort_flag@5@@4 (=> (and (and (= $abort_code@5@@4 $abort_code@5@@4) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@5@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory@1@@0) (= (ControlFlow 0 237125) 236403))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Then$1_correct  (=> (= $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 $1_RecoveryAddress_RecoveryAddress_$memory) (=> (and (= $abort_code@5@@4 $EXEC_FAILURE_CODE) (= $abort_flag@5@@4 true)) (and (=> (= (ControlFlow 0 237177) 237125) inline$$1_RecoveryAddress_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 237177) 237111) inline$$1_RecoveryAddress_publish$0$anon25_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 237175) 237177)) inline$$1_RecoveryAddress_publish$0$anon24_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_publish$0$anon24_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4))) (=> (and (and (= $1_RecoveryAddress_RecoveryAddress_$memory@0@@0 ($Memory_169392 (|Store__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4) true) (|Store__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) (|$addr#$signer| _$t0@@4) inline$$1_RecoveryAddress_publish$0$$t25@1))) (= $1_RecoveryAddress_RecoveryAddress_$memory@1@@0 $1_RecoveryAddress_RecoveryAddress_$memory@0@@0)) (and (= $abort_code@5@@4 $abort_code@4@@4) (= $abort_flag@5@@4 $abort_flag@4@@4))) (and (=> (= (ControlFlow 0 237101) 237125) inline$$1_RecoveryAddress_publish$0$anon25_Then_correct) (=> (= (ControlFlow 0 237101) 237111) inline$$1_RecoveryAddress_publish$0$anon25_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon23_Else_correct  (=> (and (not $abort_flag@4@@4) (= inline$$1_RecoveryAddress_publish$0$$t25@1 ($1_RecoveryAddress_RecoveryAddress |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 237079) 237175) inline$$1_RecoveryAddress_publish$0$anon24_Then_correct) (=> (= (ControlFlow 0 237079) 237101) inline$$1_RecoveryAddress_publish$0$anon24_Else_correct)))))
(let ((inline$$1_RecoveryAddress_publish$0$anon23_Then_correct  (=> $abort_flag@4@@4 (=> (and (and (= $abort_code@4@@4 $abort_code@4@@4) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@4@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 237191) 236403))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|  (=> (and (= $abort_flag@4@@4 true) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 237045) 237191) inline$$1_RecoveryAddress_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 237045) 237079) inline$$1_RecoveryAddress_publish$0$anon23_Else_correct)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|  (=> $abort_flag@3@@4 (=> (and (= $abort_code@4@@4 $abort_code@4@@4) (= (ControlFlow 0 237039) 237045)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|  (=> $abort_flag@3@@4 (=> (and (= $abort_code@4@@4 $abort_code@4@@4) (= (ControlFlow 0 237059) 237045)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$L2_correct|))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|  (=> (not $abort_flag@3@@4) (=> (and (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| (|v#$Mutation_93396| |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0|)) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|)) (and (= $abort_flag@4@@4 $abort_flag@3@@4) (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$ret0@1| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t1@1|))) (and (=> (= (ControlFlow 0 237025) 237191) inline$$1_RecoveryAddress_publish$0$anon23_Then_correct) (=> (= (ControlFlow 0 237025) 237079) inline$$1_RecoveryAddress_publish$0$anon23_Else_correct))))))
(let ((|inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$m'@1@@0| ($Mutation_93396 (|l#$Mutation_93396| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (|p#$Mutation_93396| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.++ (|v#$Mutation_93396| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1|) (seq.unit inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1)))) (and (=> (= (ControlFlow 0 236993) 237039) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 236993) 237025) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon6_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|  (=> (and (and (not $abort_flag@3@@4) (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (and (= |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@1| ($Mutation_93396 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1|)) (= (ControlFlow 0 236999) 236993))) |inline$$1_Vector_push_back'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct@@0|)))
(let ((|inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$v@1| (as seq.empty (Seq T@$1_DiemAccount_KeyRotationCapability))) (and (=> (= (ControlFlow 0 236910) 237059) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 236910) 236999) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon5_Else_correct|)))))
(let ((|inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|  (=> (= (seq.len (|p#$Mutation_93396| |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$$t3@0|)) 0) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (= (ControlFlow 0 236916) 236910)) |inline$$1_Vector_empty'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|))))
(let ((inline$$1_RecoveryAddress_publish$0$anon22_Then_correct  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 237065) 236916)) |inline$$1_Vector_singleton'$1_DiemAccount_KeyRotationCapability'$0$anon0_correct|)))
(let ((inline$$1_RecoveryAddress_publish$0$anon22_Else_correct  (=> (not inline$$Not$1$dst@1) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t23@0 inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t23@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236660) 236403))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Then$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$1_RecoveryAddress_publish$0$$t23@0 6)) (and (= inline$$1_RecoveryAddress_publish$0$$t23@0 inline$$1_RecoveryAddress_publish$0$$t23@0) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 236644) 237065) inline$$1_RecoveryAddress_publish$0$anon22_Then_correct) (=> (= (ControlFlow 0 236644) 236660) inline$$1_RecoveryAddress_publish$0$anon22_Else_correct))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not inline$$1_RecoveryAddress_publish$0$$t20@1)) (= (ControlFlow 0 236608) 236644)) inline$$1_RecoveryAddress_publish$0$anon21_Then$1_correct)))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Then_correct  (=> inline$$1_RecoveryAddress_publish$0$$t17@1 (=> (and (= inline$$1_RecoveryAddress_publish$0$$t20@1 (|Select__T@[Int]Bool_| (|domain#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0)) (= (ControlFlow 0 236614) 236608)) inline$$Not$1$anon0_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon21_Else_correct  (=> (not inline$$1_RecoveryAddress_publish$0$$t17@1) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t19@0 inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t19@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236568) 236403))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon20_Else_correct  (=> (not $abort_flag@3@@4) (=> (and (= inline$$1_RecoveryAddress_publish$0$$t17@1 (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_RecoveryAddress_publish$0$$t11@0)) (|$IsValid'u64'| 1)) (=> (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t19@0 7)) (and (= inline$$1_RecoveryAddress_publish$0$$t19@0 inline$$1_RecoveryAddress_publish$0$$t19@0) (= inline$$1_RecoveryAddress_publish$0$$t17@1 inline$$1_RecoveryAddress_publish$0$$t17@1))) (and (=> (= (ControlFlow 0 236552) 236614) inline$$1_RecoveryAddress_publish$0$anon21_Then_correct) (=> (= (ControlFlow 0 236552) 236568) inline$$1_RecoveryAddress_publish$0$anon21_Else_correct)))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon20_Then_correct  (=> $abort_flag@3@@4 (=> (and (and (= $abort_code@4@@4 $abort_code@4@@4) (= inline$$1_RecoveryAddress_publish$0$$t15@1 $abort_code@4@@4)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 237205) 236403))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (=> (and (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1)) (= inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0 inline$$1_DiemAccount_key_rotation_capability_address$0$$t1@1@@0)) (and (=> (= (ControlFlow 0 236500) 237205) inline$$1_RecoveryAddress_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 236500) 236552) inline$$1_RecoveryAddress_publish$0$anon20_Else_correct))))))
(let ((inline$$1_RecoveryAddress_publish$0$anon19_Then_correct  (=> (and inline$$1_RecoveryAddress_publish$0$$t12@0 (= (ControlFlow 0 236506) 236500)) inline$$1_DiemAccount_key_rotation_capability_address$0$anon0_correct@@0)))
(let ((inline$$1_RecoveryAddress_publish$0$anon19_Else_correct  (=> (not inline$$1_RecoveryAddress_publish$0$$t12@0) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t14@0 inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t15@1 inline$$1_RecoveryAddress_publish$0$$t14@0)) (and (= $1_RecoveryAddress_RecoveryAddress_$memory@2 $1_RecoveryAddress_RecoveryAddress_$memory) (= (ControlFlow 0 236397) 236403))) inline$$1_RecoveryAddress_publish$0$L7_correct))))
(let ((inline$$1_RecoveryAddress_publish$0$anon0_correct  (=> (= inline$$1_RecoveryAddress_publish$0$$t9@0 (|$addr#$signer| _$t0@@4)) (=> (and (and (= inline$$1_RecoveryAddress_publish$0$$t10@0 (|$addr#$signer| _$t0@@4)) (= _$t0@@4 _$t0@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1) (|$IsValid'address'| inline$$1_RecoveryAddress_publish$0$$t11@0))) (=> (and (and (and (= inline$$1_RecoveryAddress_publish$0$$t11@0 (|$addr#$signer| _$t0@@4)) (= inline$$1_RecoveryAddress_publish$0$$t11@0 inline$$1_RecoveryAddress_publish$0$$t11@0)) (and (= inline$$1_RecoveryAddress_publish$0$$t12@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0) (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) inline$$1_RecoveryAddress_publish$0$$t11@0))) (|$IsValid'u64'| 0))) (and (and (|$IsValid'u64'| inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t14@0 7)) (and (= inline$$1_RecoveryAddress_publish$0$$t14@0 inline$$1_RecoveryAddress_publish$0$$t14@0) (= inline$$1_RecoveryAddress_publish$0$$t12@0 inline$$1_RecoveryAddress_publish$0$$t12@0)))) (and (=> (= (ControlFlow 0 236381) 236506) inline$$1_RecoveryAddress_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 236381) 236397) inline$$1_RecoveryAddress_publish$0$anon19_Else_correct)))))))
(let ((anon6_Else_correct@@0  (=> (and (and (not $abort_flag@3@@4) (= $t8 (|$addr#$signer| _$t0@@4))) (and (= $t9@@0 (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 237209) 236381))) inline$$1_RecoveryAddress_publish$0$anon0_correct)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@1  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1 ($Mutation_165279 (|l#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1) (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@1|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@1) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@1 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)) (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@1)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1))) (and (and (= $abort_code@4@@4 $abort_code@3@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@1)) (and (= $abort_flag@3@@4 $abort_flag@2@@4) (= $1_DiemAccount_DiemAccount_$memory@1@@1 $1_DiemAccount_DiemAccount_$memory@0@@1)))) (and (=> (= (ControlFlow 0 235549) 237529) anon6_Then_correct@@0) (=> (= (ControlFlow 0 235549) 237209) anon6_Else_correct@@0))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1  (=> (and (and (= $abort_code@4@@4 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@1)) (and (= $abort_flag@3@@4 true) (= $1_DiemAccount_DiemAccount_$memory@1@@1 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 235226) 237529) anon6_Then_correct@@0) (=> (= (ControlFlow 0 235226) 237209) anon6_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@1  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@1) (= (ControlFlow 0 235575) 235226))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1  (=> (and (not $abort_flag@2@@4) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@1|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1 ($Mutation_165279 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@1 (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@1 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@1))) 0)))) (and (=> (= (ControlFlow 0 235457) 235575) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@1) (=> (= (ControlFlow 0 235457) 235549) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1  (=> (and (and $abort_flag@2@@4 (= $abort_code@3@@4 $abort_code@3@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@3@@4) (= (ControlFlow 0 235589) 235226))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1) (=> (and (= $abort_flag@2@@4 true) (= $abort_code@3@@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 235641) 235589) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1) (=> (= (ControlFlow 0 235641) 235457) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= (ControlFlow 0 235639) 235641)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1 ($Mutation_165235 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@1)) (and (= $abort_flag@2@@4 $abort_flag@1@@4) (= $abort_code@3@@4 $abort_code@2@@4))) (and (=> (= (ControlFlow 0 235411) 235589) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@1) (=> (= (ControlFlow 0 235411) 235457) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@1  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@1 (and (=> (= (ControlFlow 0 235389) 235639) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@1) (=> (= (ControlFlow 0 235389) 235411) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= (ControlFlow 0 235385) 235226))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@1  (=> (and (not $abort_flag@1@@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@1) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 inline$$1_DiemAccount_exists_at$1$$t1@1@@1))) (and (=> (= (ControlFlow 0 235369) 235389) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@1) (=> (= (ControlFlow 0 235369) 235385) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@1  (=> (and (and $abort_flag@1@@4 (= $abort_code@2@@4 $abort_code@2@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@2@@4) (= (ControlFlow 0 235655) 235226))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@1  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@1 inline$$1_DiemAccount_exists_at$1$$t1@1@@1)) (and (=> (= (ControlFlow 0 235327) 235655) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@1) (=> (= (ControlFlow 0 235327) 235369) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@1  (=> (and inline$$Not$0$dst@1@@4 (= (ControlFlow 0 235333) 235327)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@1  (=> (and (and (not inline$$Not$0$dst@1@@4) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= (ControlFlow 0 235220) 235226))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@1  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@1) (= inline$$Not$0$dst@1@@4 inline$$Not$0$dst@1@@4))) (and (=> (= (ControlFlow 0 235204) 235333) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@1) (=> (= (ControlFlow 0 235204) 235220) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@1))))))
(let ((inline$$Not$0$anon0_correct@@4  (=> (and (= inline$$Not$0$dst@1@@4  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1)) (= (ControlFlow 0 235164) 235204)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@1)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1  (=> (and (not $abort_flag@1@@4) (= (ControlFlow 0 235170) 235164)) inline$$Not$0$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1  (=> (and (and $abort_flag@1@@4 (= $abort_code@2@@4 $abort_code@2@@4)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@1 $abort_code@2@@4) (= (ControlFlow 0 235669) 235226))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1  (=> (not $abort_flag@0@@4) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@1)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1) (= $abort_code@2@@4 $abort_code@1@@4)) (and (= $abort_flag@1@@4 $abort_flag@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@1))) (and (=> (= (ControlFlow 0 235040) 235669) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 235040) 235170) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1  (=> (= $abort_code@2@@4 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1) (=> (and (= $abort_flag@1@@4 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@1)) (and (=> (= (ControlFlow 0 234988) 235669) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@1) (=> (= (ControlFlow 0 234988) 235170) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1  (=> (and (and $abort_flag@0@@4 (= $abort_code@1@@4 $abort_code@1@@4)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 $abort_code@1@@4) (= (ControlFlow 0 235054) 234988))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@1  (=> (= $abort_flag@0@@4 true) (=> (and (= $abort_code@1@@4 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@1)) (and (=> (= (ControlFlow 0 235106) 235054) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 235106) 235040) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= (ControlFlow 0 235104) 235106)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@1  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= $abort_flag@0@@4 false)) (and (= $abort_code@1@@4 $abort_code@0@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@1))) (and (=> (= (ControlFlow 0 235006) 235054) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@1) (=> (= (ControlFlow 0 235006) 235040) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@1  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@4 (and (=> (= (ControlFlow 0 234992) 235104) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@1) (=> (= (ControlFlow 0 234992) 235006) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@1)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@1  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@4) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= (ControlFlow 0 234982) 234988))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@1)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@1  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@1) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 inline$$1_DiemAccount_exists_at$0$$t1@1@@4))) (and (=> (= (ControlFlow 0 234966) 234992) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@1) (=> (= (ControlFlow 0 234966) 234982) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@1 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@4  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@4 inline$$1_DiemAccount_exists_at$0$$t1@1@@4)) (and (=> (= (ControlFlow 0 234924) 235120) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@1) (=> (= (ControlFlow 0 234924) 234966) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@1))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@1  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 234930) 234924)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@4)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@1  (=> (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@1)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@1)) 0) (= (seq.len (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@1)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@1 (|$addr#$signer| _$t0@@4)) (= _$t0@@4 _$t0@@4))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 (|$addr#$signer| _$t0@@4))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@1) (= (ControlFlow 0 235126) 234930)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@1))))
(let ((anon0$1_correct@@4  (=> (and (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |AccountAdministrationScriptsandybpl.17476:20|
 :skolemid |362|
)) (forall ((addr@@191 Int) ) (!  (=> (|$IsValid'address'| addr@@191) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@191) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@191)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@191)))) 0)) (= addr@@191 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@191))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17480:20|
 :skolemid |363|
))) (=> (and (and (forall ((addr@@192 Int) ) (!  (=> (|$IsValid'address'| addr@@192) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@192) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@192) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@192)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@192)))) 0)) (= addr@@192 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@192))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17484:20|
 :skolemid |364|
)) (forall ((addr@@193 Int) ) (!  (=> (|$IsValid'address'| addr@@193) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@193) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@193)))
 :qid |AccountAdministrationScriptsandybpl.17488:20|
 :skolemid |365|
))) (and (forall ((addr@@194 Int) ) (!  (=> (|$IsValid'address'| addr@@194) (=> (and (= addr@@194 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@194)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@194)))
 :qid |AccountAdministrationScriptsandybpl.17492:20|
 :skolemid |366|
)) (forall ((addr@@195 Int) ) (!  (=> (|$IsValid'address'| addr@@195) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@195) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@195)))
 :qid |AccountAdministrationScriptsandybpl.17496:20|
 :skolemid |367|
)))) (=> (and (and (and (and (and (and (forall ((addr@@196 Int) ) (!  (=> (|$IsValid'address'| addr@@196) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@196) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@196)))
 :qid |AccountAdministrationScriptsandybpl.17500:22|
 :skolemid |368|
)) (forall ((addr@@197 Int) ) (!  (=> (|$IsValid'address'| addr@@197) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@197) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@197)))
 :qid |AccountAdministrationScriptsandybpl.17500:218|
 :skolemid |369|
))) (forall ((addr@@198 Int) ) (!  (=> (|$IsValid'address'| addr@@198) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@198) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@198)))
 :qid |AccountAdministrationScriptsandybpl.17500:415|
 :skolemid |370|
))) (forall ((addr@@199 Int) ) (!  (=> (|$IsValid'address'| addr@@199) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) addr@@199) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@199) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@199)) 5))))
 :qid |AccountAdministrationScriptsandybpl.17504:20|
 :skolemid |371|
))) (and (forall ((addr@@200 Int) ) (!  (=> (|$IsValid'address'| addr@@200) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) addr@@200) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@200) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@200)) 6))))
 :qid |AccountAdministrationScriptsandybpl.17508:20|
 :skolemid |372|
)) (|$IsValid'address'| (|$addr#$signer| _$t0@@4)))) (and (and (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $a_0@@16)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@16))
 :qid |AccountAdministrationScriptsandybpl.17514:20|
 :skolemid |373|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_153997| $1_VASP_ChildVASP_$memory) $a_0@@16))
)) (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_154061| $1_VASP_ParentVASP_$memory) $a_0@@17)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@17))
 :qid |AccountAdministrationScriptsandybpl.17518:20|
 :skolemid |374|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_154061| $1_VASP_ParentVASP_$memory) $a_0@@17))
))) (and (forall (($a_0@@18 Int) ) (! (let (($rsc@@18 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@18)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@18) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@18))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@18))) 1))))
 :qid |AccountAdministrationScriptsandybpl.17522:20|
 :skolemid |375|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@18))
)) (forall (($a_0@@19 Int) ) (! (let (($rsc@@19 (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@19)))
(|$IsValid'$1_RecoveryAddress_RecoveryAddress'| $rsc@@19))
 :qid |AccountAdministrationScriptsandybpl.17526:20|
 :skolemid |376|
 :pattern ( (|Select__T@[Int]$1_RecoveryAddress_RecoveryAddress_| (|contents#$Memory_169392| $1_RecoveryAddress_RecoveryAddress_$memory) $a_0@@19))
))))) (and (and (and (= $t1 (|$addr#$signer| _$t0@@4)) (= $t2@@0 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t1))) 0))) (and (= $t3@@1 (|$addr#$signer| _$t0@@4)) (= $t4@@1 (|$addr#$signer| _$t0@@4)))) (and (and (let ((addr@@201 (|$addr#$signer| _$t0@@4)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@201)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@201) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@201)))))) (= _$t0@@4 _$t0@@4)) (and (= $t5@@1 (|$addr#$signer| _$t0@@4)) (= (ControlFlow 0 235675) 235126))))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@1)))))
(let ((inline$$InitEventStore$0$anon0_correct@@4  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_89085| stream@@5) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@5) v@@52) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 233344) 235675)) anon0$1_correct@@4)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 336198) 233344) inline$$InitEventStore$0$anon0_correct@@4)))
anon0_correct@@4)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@1@@5 () Bool)
(declare-fun $t2@@1 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory () T@$Memory_153080)
(declare-fun $t1@@0 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@3 () T@$Memory_153080)
(declare-fun |Select__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int) T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@2@@5 () Int)
(declare-fun $abort_flag@0@@5 () Bool)
(declare-fun $1_VASPDomain_VASPDomains_$memory@1 () T@$Memory_153080)
(declare-fun $abort_code@1@@5 () Int)
(declare-fun $1_VASPDomain_VASPDomains_$memory@2 () T@$Memory_153080)
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 () Int)
(declare-fun _$t0@@5 () T@$signer)
(declare-fun $1_VASPDomain_VASPDomains_$memory@0 () T@$Memory_153080)
(declare-fun |Store__T@[Int]$1_VASPDomain_VASPDomains_| (|T@[Int]$1_VASPDomain_VASPDomains| Int T@$1_VASPDomain_VASPDomains) |T@[Int]$1_VASPDomain_VASPDomains|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASPDomain_VASPDomains|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASPDomain_VASPDomains)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|Store__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASPDomain_VASPDomains_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 () T@$1_VASPDomain_VASPDomains)
(declare-fun $abort_code@0@@5 () Int)
(declare-fun |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| () (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun inline$$Not$0$dst@1@@5 () Bool)
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
 (=> (= (ControlFlow 0 0) 338919) (let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct true))
(let ((anon4_Else_correct@@2  (=> (not $abort_flag@1@@5) (and (=> (= (ControlFlow 0 239642) (- 0 340352)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1))) (and (=> (= (ControlFlow 0 239642) (- 0 340364)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (and (=> (= (ControlFlow 0 239642) (- 0 340382)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $t1@@0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $t1@@0)) (and (=> (= (ControlFlow 0 239642) (- 0 340392)) (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0) (=> (= (ControlFlow 0 239642) (- 0 340400)) (= (seq.len (|$domains#$1_VASPDomain_VASPDomains| (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_153080| $1_VASPDomain_VASPDomains_$memory@3) $t1@@0))) 0)))))))))))))
(let ((anon4_Then_correct@@2  (=> (and $abort_flag@1@@5 (= $abort_code@2@@5 $abort_code@2@@5)) (and (=> (= (ControlFlow 0 239766) (- 0 340245)) (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $t1@@0))) (=> (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) 5))) (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $t1@@0)) (=> (= (ControlFlow 0 239766) (- 0 340274)) (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) (= 5 $abort_code@2@@5)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $t2@@1)) 5)) (= 3 $abort_code@2@@5))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $t1@@0) (= 6 $abort_code@2@@5))) (= 6 $abort_code@2@@5)) (= 3 $abort_code@2@@5))))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct  (=> (and (and (not $abort_flag@0@@5) (= $abort_flag@1@@5 $abort_flag@0@@5)) (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@1) (= $abort_code@2@@5 $abort_code@1@@5))) (and (=> (= (ControlFlow 0 239436) 239766) anon4_Then_correct@@2) (=> (= (ControlFlow 0 239436) 239642) anon4_Else_correct@@2)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct  (=> (= $abort_flag@1@@5 true) (=> (and (= $1_VASPDomain_VASPDomains_$memory@3 $1_VASPDomain_VASPDomains_$memory@2) (= $abort_code@2@@5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1)) (and (=> (= (ControlFlow 0 239358) 239766) anon4_Then_correct@@2) (=> (= (ControlFlow 0 239358) 239642) anon4_Else_correct@@2))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct  (=> $abort_flag@0@@5 (=> (and (and (= $abort_code@1@@5 $abort_code@1@@5) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory@1)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 $abort_code@1@@5) (= (ControlFlow 0 239450) 239358))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct  (=> (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory) (=> (and (= $abort_flag@0@@5 true) (= $abort_code@1@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 239502) 239450) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 239502) 239436) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 239500) 239502)) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5))) (=> (and (and (= $1_VASPDomain_VASPDomains_$memory@0 ($Memory_153080 (|Store__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5) true) (|Store__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) (|$addr#$signer| _$t0@@5) inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1))) (= $1_VASPDomain_VASPDomains_$memory@1 $1_VASPDomain_VASPDomains_$memory@0)) (and (= $abort_flag@0@@5 false) (= $abort_code@1@@5 $abort_code@0@@5))) (and (=> (= (ControlFlow 0 239426) 239450) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Then_correct) (=> (= (ControlFlow 0 239426) 239436) inline$$1_VASPDomain_publish_vasp_domains$0$anon17_Else_correct))))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct  (=> (and (not false) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t14@1 ($1_VASPDomain_VASPDomains |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1|))) (and (=> (= (ControlFlow 0 239404) 239500) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Then_correct) (=> (= (ControlFlow 0 239404) 239426) inline$$1_VASPDomain_publish_vasp_domains$0$anon16_Else_correct)))))
(let ((|inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$v@1| (as seq.empty (Seq T@$1_VASPDomain_VASPDomain))) (and (=> (= (ControlFlow 0 239384) 239516) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Then_correct) (=> (= (ControlFlow 0 239384) 239404) inline$$1_VASPDomain_publish_vasp_domains$0$anon15_Else_correct)))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct  (=> (and inline$$Not$0$dst@1@@5 (= (ControlFlow 0 239390) 239384)) |inline$$1_Vector_empty'$1_VASPDomain_VASPDomain'$0$anon0_correct|)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct  (=> (not inline$$Not$0$dst@1@@5) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= (ControlFlow 0 239352) 239358))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 6)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t12@0) (= inline$$Not$0$dst@1@@5 inline$$Not$0$dst@1@@5))) (and (=> (= (ControlFlow 0 239336) 239390) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Then_correct) (=> (= (ControlFlow 0 239336) 239352) inline$$1_VASPDomain_publish_vasp_domains$0$anon14_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@5  (=> (and (= inline$$Not$0$dst@1@@5  (not inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1)) (= (ControlFlow 0 239296) 239336)) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else$1_correct)))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct  (=> (not inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0) (=> (and (and (|$IsValid'address'| inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0 (|$addr#$signer| _$t0@@5))) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t9@1 (|Select__T@[Int]Bool_| (|domain#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t8@0)) (= (ControlFlow 0 239302) 239296))) inline$$Not$0$anon0_correct@@5))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct  (=> (and inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (= 5 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)) (= 3 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0)))) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= $1_VASPDomain_VASPDomains_$memory@2 $1_VASPDomain_VASPDomains_$memory)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t7@1 inline$$1_VASPDomain_publish_vasp_domains$0$$t7@0) (= (ControlFlow 0 239568) 239358))) inline$$1_VASPDomain_publish_vasp_domains$0$L3_correct))))
(let ((inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct  (=> (= inline$$1_VASPDomain_publish_vasp_domains$0$$t3@0 (|$addr#$signer| _$t0@@5)) (=> (and (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t4@0 (|$addr#$signer| _$t0@@5)) (= _$t0@@5 _$t0@@5)) (and (= inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0 (|$addr#$signer| _$t0@@5)) (= inline$$1_VASPDomain_publish_vasp_domains$0$$t6@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) inline$$1_VASPDomain_publish_vasp_domains$0$$t5@0)) 5)))))) (and (=> (= (ControlFlow 0 239240) 239568) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Then_correct) (=> (= (ControlFlow 0 239240) 239302) inline$$1_VASPDomain_publish_vasp_domains$0$anon13_Else_correct))))))
(let ((anon0$1_correct@@5  (=> (and (forall ((addr@@202 Int) ) (!  (=> (|$IsValid'address'| addr@@202) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@202) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@202) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@202)) 4))))
 :qid |AccountAdministrationScriptsandybpl.17691:20|
 :skolemid |377|
)) (forall ((addr@@203 Int) ) (!  (=> (|$IsValid'address'| addr@@203) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@203) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@203) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@203)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17695:20|
 :skolemid |378|
))) (=> (and (and (forall ((addr@@204 Int) ) (!  (=> (|$IsValid'address'| addr@@204) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@204) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@204) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@204)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17699:20|
 :skolemid |379|
)) (forall ((addr@@205 Int) ) (!  (=> (|$IsValid'address'| addr@@205) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@205) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@205)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@205) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@205)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17703:20|
 :skolemid |380|
))) (and (forall ((mint_cap_owner@@5 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141305| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@5)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17707:21|
 :skolemid |381|
)) (forall ((mint_cap_owner@@6 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141392| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) mint_cap_owner@@6)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17707:268|
 :skolemid |382|
)))) (=> (and (and (and (forall ((addr1@@14 Int) ) (!  (=> (|$IsValid'address'| addr1@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136585| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1@@14) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@14) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@14)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17711:21|
 :skolemid |383|
)) (forall ((addr1@@15 Int) ) (!  (=> (|$IsValid'address'| addr1@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_136672| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@15) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@15) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@15)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17711:231|
 :skolemid |384|
))) (and (forall ((addr1@@16 Int) ) (!  (=> (|$IsValid'address'| addr1@@16) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_141974| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_141565| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@16)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@16) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@16)) 2))))
 :qid |AccountAdministrationScriptsandybpl.17715:21|
 :skolemid |385|
)) (forall ((addr1@@17 Int) ) (!  (=> (|$IsValid'address'| addr1@@17) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_142073| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@17) (|Select__T@[Int]Bool_| (|domain#$Memory_141656| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@17)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@17) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@17)) 2))))
 :qid |AccountAdministrationScriptsandybpl.17715:292|
 :skolemid |386|
)))) (and (and (forall ((addr1@@18 Int) ) (!  (=> (|$IsValid'address'| addr1@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr1@@18) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@18)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr1@@18)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.17723:20|
 :skolemid |387|
)) (forall ((addr@@206 Int) ) (!  (=> (|$IsValid'address'| addr@@206) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@206) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@206)))
 :qid |AccountAdministrationScriptsandybpl.17727:20|
 :skolemid |388|
))) (and (forall ((addr@@207 Int) ) (!  (=> (|$IsValid'address'| addr@@207) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153144| $1_VASPDomain_VASPDomainManager_$memory) addr@@207) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@207) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@207)) 1))))
 :qid |AccountAdministrationScriptsandybpl.17731:20|
 :skolemid |389|
)) (forall ((addr@@208 Int) ) (!  (=> (|$IsValid'address'| addr@@208) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@208) (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@208)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@208)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@208)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@208) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@208)) 2)))))
 :qid |AccountAdministrationScriptsandybpl.17735:20|
 :skolemid |390|
))))) (=> (and (and (and (and (forall ((addr@@209 Int) ) (!  (=> (|$IsValid'address'| addr@@209) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_160025| $1_DesignatedDealer_Dealer_$memory) addr@@209) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@209) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@209)) 2))))
 :qid |AccountAdministrationScriptsandybpl.17739:20|
 :skolemid |391|
)) (forall ((addr@@210 Int) ) (!  (=> (|$IsValid'address'| addr@@210) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155527| $1_DualAttestation_Credential_$memory) addr@@210) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@210)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@210) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@210)) 5)))))
 :qid |AccountAdministrationScriptsandybpl.17743:20|
 :skolemid |392|
))) (and (forall ((addr@@211 Int) ) (!  (=> (|$IsValid'address'| addr@@211) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_129509| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@211) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@211) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@211)) 3))))
 :qid |AccountAdministrationScriptsandybpl.17747:20|
 :skolemid |393|
)) (forall ((addr@@212 Int) ) (!  (=> (|$IsValid'address'| addr@@212) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_128656| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@212) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@212) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@212)) 4))))
 :qid |AccountAdministrationScriptsandybpl.17751:20|
 :skolemid |394|
)))) (and (and (forall ((addr@@213 Int) ) (!  (=> (|$IsValid'address'| addr@@213) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_154061| $1_VASP_ParentVASP_$memory) addr@@213) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@213) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@213)) 5))))
 :qid |AccountAdministrationScriptsandybpl.17755:20|
 :skolemid |395|
)) (forall ((addr@@214 Int) ) (!  (=> (|$IsValid'address'| addr@@214) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_153997| $1_VASP_ChildVASP_$memory) addr@@214) (and (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@214) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) addr@@214)) 6))))
 :qid |AccountAdministrationScriptsandybpl.17759:20|
 :skolemid |396|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@5)) (forall (($a_0@@20 Int) ) (! (let (($rsc@@20 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@20)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@20))
 :qid |AccountAdministrationScriptsandybpl.17765:20|
 :skolemid |397|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_127423| $1_Roles_RoleId_$memory) $a_0@@20))
))))) (and (and (and (forall (($a_0@@21 Int) ) (! (let (($rsc@@21 (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $a_0@@21)))
 (and (|$IsValid'$1_VASPDomain_VASPDomains'| $rsc@@21) (and (and (let (($range_1 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))))
(forall (($i_2 Int) ) (!  (=> ($InRange $range_1 $i_2) (let ((i@@56 $i_2))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21) i@@56))) 63)))
 :qid |AccountAdministrationScriptsandybpl.17770:140|
 :skolemid |398|
))) (let (($range_3 ($Range 0 (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))))
(forall (($i_4 Int) ) (!  (=> ($InRange $range_3 $i_4) (let ((i@@57 $i_4))
(let (($range_5 ($Range (+ i@@57 1) (seq.len (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))))
(forall (($i_6 Int) ) (!  (=> ($InRange $range_5 $i_6) (let ((j@@13 $i_6))
 (not (= (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21) i@@57) (seq.nth (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21) j@@13)))))
 :qid |AccountAdministrationScriptsandybpl.17772:98|
 :skolemid |399|
)))))
 :qid |AccountAdministrationScriptsandybpl.17771:202|
 :skolemid |400|
)))) (let (($range_7 (|$domains#$1_VASPDomain_VASPDomains| $rsc@@21)))
(forall (($i_8 Int) ) (!  (=> (and (>= $i_8 0) (< $i_8 (seq.len $range_7))) (let (($elem (seq.nth $range_7 $i_8)))
(<= (seq.len (|$domain#$1_VASPDomain_VASPDomain| $elem)) 63)))
 :qid |AccountAdministrationScriptsandybpl.17773:229|
 :skolemid |401|
))))))
 :qid |AccountAdministrationScriptsandybpl.17769:20|
 :skolemid |402|
 :pattern ( (|Select__T@[Int]$1_VASPDomain_VASPDomains_| (|contents#$Memory_153080| $1_VASPDomain_VASPDomains_$memory) $a_0@@21))
)) (= $t1@@0 (|$addr#$signer| _$t0@@5))) (and (= $t2@@1 (|$addr#$signer| _$t0@@5)) (let ((addr@@215 (|$addr#$signer| _$t0@@5)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@215)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@215) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@215)))))))) (and (and (= _$t0@@5 _$t0@@5) (= $t3@@2 (|$addr#$signer| _$t0@@5))) (and (= $t4@@2 (|$addr#$signer| _$t0@@5)) (= (ControlFlow 0 239572) 239240))))) inline$$1_VASPDomain_publish_vasp_domains$0$anon0_correct))))))
(let ((inline$$InitEventStore$0$anon0_correct@@5  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@7 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@7)))
 (and (= (|l#Multiset_89085| stream@@6) 0) (forall ((v@@53 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@6) v@@53) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 237912) 239572)) anon0$1_correct@@5)))
(let ((anon0_correct@@5  (=> (= (ControlFlow 0 338919) 237912) inline$$InitEventStore$0$anon0_correct@@5)))
anon0_correct@@5))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@8@@2 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory () T@$Memory_167642)
(declare-fun $t2@@2 () Int)
(declare-fun $t3@@3 () Int)
(declare-fun _$t0@@6 () T@$signer)
(declare-fun _$t1@@1 () (Seq Int))
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 () T@$Memory_167642)
(declare-fun $t4@@3 () Int)
(declare-fun |Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int) T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@9@@2 () Int)
(declare-fun $abort_flag@7@@3 () Bool)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 () T@$Memory_167642)
(declare-fun $abort_code@8@@3 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 () T@$Memory_167642)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 () Int)
(declare-fun $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 () T@$Memory_167642)
(declare-fun |Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey| Int T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey) |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|)
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t4@2 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_flag@6@@4 () Bool)
(declare-fun $abort_code@7@@3 () Int)
(declare-fun inline$$Not$1$dst@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 () T@$Mutation_167813)
(declare-fun $abort_flag@5@@5 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 () T@$Mutation_116002)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t12@1 () T@$Mutation_167813)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 () T@$Mutation_116002)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 () T@$Mutation_167813)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun $abort_code@6@@5 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0 () T@$Mutation_167813)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 () T@$Mutation_116002)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 () T@$Mutation_116002)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 () (Seq Int))
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2@@0 () T@$Memory_161256)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1@@2 () T@$Memory_161256)
(declare-fun $abort_code@5@@5 () Int)
(declare-fun $abort_flag@4@@5 () Bool)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 () Int)
(declare-fun |inline$$1_Vector_length'u8'$0$l@1@@0| () Int)
(declare-fun |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 () T@$Mutation_165235)
(declare-fun $abort_flag@3@@5 () Bool)
(declare-fun $abort_code@4@@5 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1@@0 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 () Int)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0 () T@$Mutation_116002)
(declare-fun inline$$1_Signature_ed25519_validate_pubkey$0$res@1 () Bool)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0 () T@$Mutation_116002)
(declare-fun |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t4@1 () T@$1_SharedEd25519PublicKey_SharedEd25519PublicKey)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 () (Seq Int))
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2 () T@$Mutation_165279)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@2| () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 () T@$Mutation_165235)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0@@2 () T@$Memory_161256)
(declare-fun $abort_code@3@@5 () Int)
(declare-fun $abort_flag@2@@5 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@2 () T@$1_DiemAccount_KeyRotationCapability)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2 () Int)
(declare-fun |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2 () T@$Mutation_165235)
(declare-fun $abort_flag@1@@6 () Bool)
(declare-fun $abort_code@2@@6 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1@@2 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 () Int)
(declare-fun inline$$Not$0$dst@1@@6 () Bool)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 () Bool)
(declare-fun $abort_flag@0@@6 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2 () |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 () Bool)
(declare-fun $abort_code@1@@6 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 () Int)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@2 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2 () T@$1_DiemAccount_DiemAccount)
(declare-fun $abort_code@0@@6 () Int)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1@@5 () Bool)
(declare-fun inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 () Int)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@2 () T@$Mutation_165235)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@2 () T@$Mutation_165279)
(declare-fun inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@2 () Int)
(declare-fun inline$$1_SharedEd25519PublicKey_publish$0$$t12@0 () T@$Mutation_167813)
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
 (=> (= (ControlFlow 0 0) 340419) (let ((anon4_Else_correct@@3  (=> (not $abort_flag@8@@2) (and (=> (= (ControlFlow 0 244933) (- 0 343574)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2)) (and (=> (= (ControlFlow 0 244933) (- 0 343584)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@3)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (and (=> (= (ControlFlow 0 244933) (- 0 343596)) (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0))) (=> (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0)) (and (=> (= (ControlFlow 0 244933) (- 0 343607)) (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)))) (=> (not (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (and (=> (= (ControlFlow 0 244933) (- 0 343617)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0)))))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (and (=> (= (ControlFlow 0 244933) (- 0 343640)) (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (not (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (and (=> (= (ControlFlow 0 244933) (- 0 343656)) (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3) (=> (= (ControlFlow 0 244933) (- 0 343664)) (= (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3) $t4@@3)) _$t1@@1)))))))))))))))))))
(let ((anon4_Then_correct@@3  (=> (and $abort_flag@8@@2 (= $abort_code@9@@2 $abort_code@9@@2)) (and (=> (= (ControlFlow 0 245165) (- 0 343373)) (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)))) (=> (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@3))) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0)) (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0))))))) (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32))) (=> (= (ControlFlow 0 245165) (- 0 343435)) (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $t2@@2) (= 6 $abort_code@9@@2)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t3@@3)) (= 5 $abort_code@9@@2))) (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$addr#$signer| _$t0@@6))))) 0) (= 1 $abort_code@9@@2))) (and (not ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (= 7 $abort_code@9@@2))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|$account_address#$1_DiemAccount_KeyRotationCapability| (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (as seq.empty (Seq Int)) (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $t2@@2))) 0)))))) (= 5 $abort_code@9@@2))) (and (not (= (seq.len ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) 32)) (= 7 $abort_code@9@@2))) (= 1 $abort_code@9@@2)) (= 6 $abort_code@9@@2)) (= 7 $abort_code@9@@2))))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct  (=> (and (and (not $abort_flag@7@@3) (= $abort_flag@8@@2 $abort_flag@7@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) (= $abort_code@9@@2 $abort_code@8@@3))) (and (=> (= (ControlFlow 0 244705) 245165) anon4_Then_correct@@3) (=> (= (ControlFlow 0 244705) 244933) anon4_Else_correct@@3)))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$L3_correct  (=> (= $abort_flag@8@@2 true) (=> (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@3 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2) (= $abort_code@9@@2 inline$$1_SharedEd25519PublicKey_publish$0$$t11@1)) (and (=> (= (ControlFlow 0 244667) 245165) anon4_Then_correct@@3) (=> (= (ControlFlow 0 244667) 244933) anon4_Else_correct@@3))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct  (=> $abort_flag@7@@3 (=> (and (and (= $abort_code@8@@3 $abort_code@8@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@8@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1) (= (ControlFlow 0 244719) 244667))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then$1_correct  (=> (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (=> (and (= $abort_flag@7@@3 true) (= $abort_code@8@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 244771) 244719) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 244771) 244705) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 244769) 244771)) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then$1_correct)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon19_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6))) (=> (and (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0 ($Memory_167642 (|Store__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6) true) (|Store__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (|$addr#$signer| _$t0@@6) inline$$1_SharedEd25519PublicKey_publish$0$$t4@2))) (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@1 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@0)) (and (= $abort_flag@7@@3 $abort_flag@6@@4) (= $abort_code@8@@3 $abort_code@7@@3))) (and (=> (= (ControlFlow 0 244695) 244719) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Then_correct) (=> (= (ControlFlow 0 244695) 244705) inline$$1_SharedEd25519PublicKey_publish$0$anon20_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon18_Then_correct  (=> inline$$Not$1$dst@1@@0 (and (=> (= (ControlFlow 0 244673) 244769) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Then_correct) (=> (= (ControlFlow 0 244673) 244695) inline$$1_SharedEd25519PublicKey_publish$0$anon19_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon18_Else_correct  (=> (not inline$$Not$1$dst@1@@0) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244661) 244667))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 6)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t17@0 inline$$1_SharedEd25519PublicKey_publish$0$$t17@0) (= inline$$Not$1$dst@1@@0 inline$$Not$1$dst@1@@0))) (and (=> (= (ControlFlow 0 244645) 244673) inline$$1_SharedEd25519PublicKey_publish$0$anon18_Then_correct) (=> (= (ControlFlow 0 244645) 244661) inline$$1_SharedEd25519PublicKey_publish$0$anon18_Else_correct))))))
(let ((inline$$Not$1$anon0_correct@@0  (=> (and (= inline$$Not$1$dst@1@@0  (not inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (= (ControlFlow 0 244609) 244645)) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else$1_correct)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else_correct  (=> (and (not $abort_flag@6@@4) (= (ControlFlow 0 244615) 244609)) inline$$Not$1$anon0_correct@@0)))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon17_Then_correct  (=> $abort_flag@6@@4 (=> (and (and (= $abort_code@7@@3 $abort_code@7@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@7@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244785) 244667))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct  (=> (= inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 inline$$1_SharedEd25519PublicKey_publish$0$$t13@0) (=> (and (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) inline$$1_SharedEd25519PublicKey_publish$0$$t13@0)) (= inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1 inline$$1_SharedEd25519PublicKey_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 244565) 244785) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Then_correct) (=> (= (ControlFlow 0 244565) 244615) inline$$1_SharedEd25519PublicKey_publish$0$anon17_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct  (=> (not $abort_flag@6@@4) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t4@2 (|v#$Mutation_167813| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1)) (|$IsValid'address'| inline$$1_SharedEd25519PublicKey_publish$0$$t13@0)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t13@0 (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 244571) 244565))) inline$$1_SharedEd25519PublicKey_exists_at$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct  (=> $abort_flag@6@@4 (=> (and (and (= $abort_code@7@@3 $abort_code@7@@3) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@7@@3)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244799) 244667))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct  (=> (not $abort_flag@5@@5) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1 ($Mutation_116002 (|l#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (seq.++ (|p#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (seq.unit 0)) (|$key#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1)))) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2 ($Mutation_116002 (|l#$Mutation_116002| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) (|p#$Mutation_116002| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@1) _$t1@@1))) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1 ($Mutation_167813 (|l#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) (|p#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1) ($1_SharedEd25519PublicKey_SharedEd25519PublicKey (|v#$Mutation_116002| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@2) (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1))))) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| (|v#$Mutation_167813| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)))) (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@2|) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t0@1)) (and (= $abort_flag@6@@4 $abort_flag@5@@5) (= $abort_code@7@@3 $abort_code@6@@5)))) (and (=> (= (ControlFlow 0 244408) 244799) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct) (=> (= (ControlFlow 0 244408) 244571) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct  (=> (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$ret0@0) (=> (and (= $abort_flag@6@@4 true) (= $abort_code@7@@3 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1)) (and (=> (= (ControlFlow 0 243306) 244799) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Then_correct) (=> (= (ControlFlow 0 243306) 244571) inline$$1_SharedEd25519PublicKey_publish$0$anon16_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct  (=> (and (and $abort_flag@5@@5 (= $abort_code@6@@5 $abort_code@6@@5)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@6@@5) (= (ControlFlow 0 244422) 243306))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0  (=> inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (=> (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0 ($Mutation_116002 (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (seq.unit 0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)))) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0 ($Mutation_116002 (|l#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) (|p#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@1@@0) inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0))) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0) ($1_DiemAccount_DiemAccount (|v#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@2@@0) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))))) (= $1_DiemAccount_DiemAccount_$memory@2@@0 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@2) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@2) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0)) (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@3@@0))))) (and (= $abort_code@6@@5 $abort_code@5@@5) (= $abort_flag@5@@5 $abort_flag@4@@5))) (and (=> (= (ControlFlow 0 244254) 244422) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 244254) 244408) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0  (=> (and (= $abort_code@6@@5 inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0) (= $abort_flag@5@@5 true)) (and (=> (= (ControlFlow 0 244050) 244422) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Then_correct) (=> (= (ControlFlow 0 244050) 244408) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon10_Else_correct)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= (ControlFlow 0 244204) 244050))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0  (=> (and (and (and (not $abort_flag@4@@5) (|$IsValid'u64'| 32)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 (= |inline$$1_Vector_length'u8'$0$l@1@@0| 32)) (|$IsValid'u64'| 8))) (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 7)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t18@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t16@1@@0)))) (and (=> (= (ControlFlow 0 244188) 244254) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Then_correct@@0) (=> (= (ControlFlow 0 244188) 244204) inline$$1_DiemAccount_rotate_authentication_key$0$anon21_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0  (=> (and (and $abort_flag@4@@5 (= $abort_code@5@@5 $abort_code@5@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@5@@5) (= (ControlFlow 0 244268) 244050))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((|inline$$1_Vector_length'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_length'u8'$0$l@1@@0| (seq.len inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (=> (= (ControlFlow 0 244130) 244268) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Then_correct@@0) (=> (= (ControlFlow 0 244130) 244188) inline$$1_DiemAccount_rotate_authentication_key$0$anon20_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0  (=> (and (and (not $abort_flag@4@@5) (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| (|v#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0))) (and (= |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0| |inline$$1_DiemAccount_rotate_authentication_key$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@0|) (= (ControlFlow 0 244136) 244130))) |inline$$1_Vector_length'u8'$0$anon0_correct@@0|)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0  (=> (and (and $abort_flag@4@@5 (= $abort_code@5@@5 $abort_code@5@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@5@@5) (= (ControlFlow 0 244282) 244050))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0  (=> (= $abort_flag@4@@5 true) (=> (and (= $abort_code@5@@5 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) (and (=> (= (ControlFlow 0 244334) 244282) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 244334) 244136) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0)) (= (ControlFlow 0 244332) 244334)) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then$1_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (=> (and (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0 ($Mutation_165235 ($Global inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0))) (= $abort_flag@4@@5 $abort_flag@3@@5)) (and (= $abort_code@5@@5 $abort_code@4@@5) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t13@2@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t13@1@@0))) (and (=> (= (ControlFlow 0 244080) 244282) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Then_correct@@0) (=> (= (ControlFlow 0 244080) 244136) inline$$1_DiemAccount_rotate_authentication_key$0$anon19_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1@@0 (= inline$$1_DiemAccount_rotate_authentication_key$0$$t12@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1))) (and (=> (= (ControlFlow 0 244058) 244332) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Then_correct@@0) (=> (= (ControlFlow 0 244058) 244080) inline$$1_DiemAccount_rotate_authentication_key$0$anon18_Else_correct@@0)))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0  (=> (and (and (not inline$$1_DiemAccount_exists_at$2$$t1@1@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= (ControlFlow 0 244044) 244050))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0  (=> (and (not $abort_flag@3@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t11@0@@0) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 inline$$1_DiemAccount_exists_at$2$$t1@1@@0))) (and (=> (= (ControlFlow 0 244028) 244058) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Then_correct@@0) (=> (= (ControlFlow 0 244028) 244044) inline$$1_DiemAccount_rotate_authentication_key$0$anon17_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0  (=> (and (and $abort_flag@3@@5 (= $abort_code@4@@5 $abort_code@4@@5)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t9@1@@0 $abort_code@4@@5) (= (ControlFlow 0 244348) 244050))) inline$$1_DiemAccount_rotate_authentication_key$0$L5_correct@@0)))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct@@0  (=> (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory@1@@2) inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0)) (= inline$$1_DiemAccount_exists_at$2$$t1@1@@0 inline$$1_DiemAccount_exists_at$2$$t1@1@@0)) (and (=> (= (ControlFlow 0 243986) 244348) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Then_correct@@0) (=> (= (ControlFlow 0 243986) 244028) inline$$1_DiemAccount_rotate_authentication_key$0$anon16_Else_correct@@0))))))
(let ((inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0  (=> (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t6@0@@0)) 0) (=> (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_rotate_authentication_key$0$$t13@0@@0)) 0) (= (seq.len (|p#$Mutation_116002| inline$$1_DiemAccount_rotate_authentication_key$0$$t19@0@@0)) 0)) (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_DiemAccount_rotate_authentication_key$0$$t7@1@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1)) (= (ControlFlow 0 243992) 243986))) inline$$1_DiemAccount_exists_at$2$anon0_correct@@0)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct  (=> inline$$1_Signature_ed25519_validate_pubkey$0$res@1 (=> (and (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t8@1 (|$rotation_cap#$1_SharedEd25519PublicKey_SharedEd25519PublicKey| (|v#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t9@0 ($1_Authenticator_spec_ed25519_authentication_key _$t1@@1)) (= (ControlFlow 0 244352) 243992))) inline$$1_DiemAccount_rotate_authentication_key$0$anon0_correct@@0))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct  (=> (and (and (not inline$$1_Signature_ed25519_validate_pubkey$0$res@1) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= (ControlFlow 0 243300) 243306))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct  (=> (and (not $abort_flag@3@@5) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 7)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0 inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t7@0) (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 inline$$1_Signature_ed25519_validate_pubkey$0$res@1))) (and (=> (= (ControlFlow 0 243284) 244352) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Then_correct) (=> (= (ControlFlow 0 243284) 243300) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon9_Else_correct))))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct  (=> (and (and $abort_flag@3@@5 (= $abort_code@4@@5 $abort_code@4@@5)) (and (= inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t5@1 $abort_code@4@@5) (= (ControlFlow 0 244436) 243306))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$L3_correct)))
(let ((inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct  (=> (= inline$$1_Signature_ed25519_validate_pubkey$0$res@1 ($1_Signature_$ed25519_validate_pubkey _$t1@@1)) (and (=> (= (ControlFlow 0 243238) 244436) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Then_correct) (=> (= (ControlFlow 0 243238) 243284) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon8_Else_correct)))))
(let ((inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_116002| inline$$1_SharedEd25519PublicKey_rotate_key_$0$$t10@0)) 0) (=> (and (and (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| (|v#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@1)) (= |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1| |inline$$1_SharedEd25519PublicKey_rotate_key_$0$$temp_0'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'@1|)) (and (= _$t1@@1 _$t1@@1) (= (ControlFlow 0 243244) 243238))) inline$$1_Signature_ed25519_validate_pubkey$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct  (=> (not $abort_flag@3@@5) (=> (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t4@1 ($1_SharedEd25519PublicKey_SharedEd25519PublicKey inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2)) (= inline$$1_SharedEd25519PublicKey_publish$0$$t4@1 inline$$1_SharedEd25519PublicKey_publish$0$$t4@1)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t12@1 ($Mutation_167813 ($Local 4) (as seq.empty (Seq Int)) inline$$1_SharedEd25519PublicKey_publish$0$$t4@1)) (= (ControlFlow 0 244442) 243244))) inline$$1_SharedEd25519PublicKey_rotate_key_$0$anon0_correct))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct  (=> $abort_flag@3@@5 (=> (and (and (= $abort_code@4@@5 $abort_code@4@@5) (= inline$$1_SharedEd25519PublicKey_publish$0$$t11@1 $abort_code@4@@5)) (and (= $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory@2 $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) (= (ControlFlow 0 244813) 244667))) inline$$1_SharedEd25519PublicKey_publish$0$L3_correct))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@2  (=> (not inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2) (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2 ($Mutation_165279 (|l#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2) (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2) |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''@1@@2|)) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) (=> (and (and (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2)) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) 1)) (and (|$IsValid'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2) 0)))) (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2))) 0) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2 ($Mutation_165235 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) ($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@2@@2) (|$received_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$sent_events#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)) (|$sequence_number#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2)))))) (and (= $1_DiemAccount_DiemAccount_$memory@0@@2 ($Memory_161256 (|Store__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)) true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) (|a#$Global| (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)) (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@3@@2)))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2))) (and (and (= $abort_code@4@@5 $abort_code@3@@5) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t19@0@@2)) (and (= $abort_flag@3@@5 $abort_flag@2@@5) (= $1_DiemAccount_DiemAccount_$memory@1@@2 $1_DiemAccount_DiemAccount_$memory@0@@2)))) (and (=> (= (ControlFlow 0 242663) 244813) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct) (=> (= (ControlFlow 0 242663) 244442) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct))))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2  (=> (and (and (= $abort_code@4@@5 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$ret0@0@@2)) (and (= $abort_flag@3@@5 true) (= $1_DiemAccount_DiemAccount_$memory@1@@2 $1_DiemAccount_DiemAccount_$memory))) (and (=> (= (ControlFlow 0 242340) 244813) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Then_correct) (=> (= (ControlFlow 0 242340) 244442) inline$$1_SharedEd25519PublicKey_publish$0$anon15_Else_correct)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@2  (=> inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 (=> (and (and (and (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2))) 0) (= 7 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@0@@2) (= (ControlFlow 0 242689) 242340))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2  (=> (and (not $abort_flag@2@@5) (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2))) (=> (and (and (= |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2| |inline$$1_DiemAccount_extract_key_rotation_capability$0$$temp_0'$1_DiemAccount_DiemAccount'@1@@2|) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2 ($Mutation_165279 (|l#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (seq.++ (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2) (seq.unit 2)) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|v#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2))))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t20@1@@2 (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2)) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t21@0@@2 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|v#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@1@@2))) 0)))) (and (=> (= (ControlFlow 0 242571) 242689) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Then_correct@@2) (=> (= (ControlFlow 0 242571) 242663) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon25_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2  (=> (and (and $abort_flag@2@@5 (= $abort_code@3@@5 $abort_code@3@@5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@3@@5) (= (ControlFlow 0 242703) 242340))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2) (=> (and (= $abort_flag@2@@5 true) (= $abort_code@3@@5 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 242755) 242703) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2) (=> (= (ControlFlow 0 242755) 242571) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= (ControlFlow 0 242753) 242755)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2 ($Mutation_165235 ($Global inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2))) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@2@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@1@@2)) (and (= $abort_flag@2@@5 $abort_flag@1@@6) (= $abort_code@3@@5 $abort_code@2@@6))) (and (=> (= (ControlFlow 0 242525) 242703) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Then_correct@@2) (=> (= (ControlFlow 0 242525) 242571) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon24_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@2  (=> inline$$1_DiemAccount_exists_at$1$$t1@1@@2 (and (=> (= (ControlFlow 0 242503) 242753) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Then_correct@@2) (=> (= (ControlFlow 0 242503) 242525) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon23_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$1$$t1@1@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= (ControlFlow 0 242499) 242340))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@2  (=> (and (not $abort_flag@1@@6) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 5)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t16@0@@2) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 inline$$1_DiemAccount_exists_at$1$$t1@1@@2))) (and (=> (= (ControlFlow 0 242483) 242503) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Then_correct@@2) (=> (= (ControlFlow 0 242483) 242499) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon22_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@2  (=> (and (and $abort_flag@1@@6 (= $abort_code@2@@6 $abort_code@2@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@2@@6) (= (ControlFlow 0 242769) 242340))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct@@2  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= inline$$1_DiemAccount_exists_at$1$$t1@1@@2 inline$$1_DiemAccount_exists_at$1$$t1@1@@2)) (and (=> (= (ControlFlow 0 242441) 242769) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Then_correct@@2) (=> (= (ControlFlow 0 242441) 242483) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon21_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@2  (=> (and inline$$Not$0$dst@1@@6 (= (ControlFlow 0 242447) 242441)) inline$$1_DiemAccount_exists_at$1$anon0_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@2  (=> (and (and (not inline$$Not$0$dst@1@@6) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= (ControlFlow 0 242334) 242340))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@2  (=> (|$IsValid'u64'| 9) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 1)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t13@0@@2) (= inline$$Not$0$dst@1@@6 inline$$Not$0$dst@1@@6))) (and (=> (= (ControlFlow 0 242318) 242447) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Then_correct@@2) (=> (= (ControlFlow 0 242318) 242334) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon20_Else_correct@@2))))))
(let ((inline$$Not$0$anon0_correct@@6  (=> (and (= inline$$Not$0$dst@1@@6  (not inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2)) (= (ControlFlow 0 242278) 242318)) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else$1_correct@@2)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2  (=> (and (not $abort_flag@1@@6) (= (ControlFlow 0 242284) 242278)) inline$$Not$0$anon0_correct@@6)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2  (=> (and (and $abort_flag@1@@6 (= $abort_code@2@@6 $abort_code@2@@6)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t10@1@@2 $abort_code@2@@6) (= (ControlFlow 0 242783) 242340))) inline$$1_DiemAccount_extract_key_rotation_capability$0$L5_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2  (=> (not $abort_flag@0@@6) (=> (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2 (|$key_rotation_capability#$1_DiemAccount_DiemAccount| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2)) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t8@1@@2)) 0))) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2) (= $abort_code@2@@6 $abort_code@1@@6)) (and (= $abort_flag@1@@6 $abort_flag@0@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t9@0@@2))) (and (=> (= (ControlFlow 0 242154) 242783) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 242154) 242284) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2)))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2  (=> (= $abort_code@2@@6 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2) (=> (and (= $abort_flag@1@@6 true) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$ret0@0@@2)) (and (=> (= (ControlFlow 0 242102) 242783) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Then_correct@@2) (=> (= (ControlFlow 0 242102) 242284) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon19_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2  (=> (and (and $abort_flag@0@@6 (= $abort_code@1@@6 $abort_code@1@@6)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 $abort_code@1@@6) (= (ControlFlow 0 242168) 242102))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@2  (=> (= $abort_flag@0@@6 true) (=> (and (= $abort_code@1@@6 $EXEC_FAILURE_CODE) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@0@@2)) (and (=> (= (ControlFlow 0 242220) 242168) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2) (=> (= (ControlFlow 0 242220) 242154) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@2  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= (ControlFlow 0 242218) 242220)) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then$1_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@2  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= $abort_flag@0@@6 false)) (and (= $abort_code@1@@6 $abort_code@0@@6) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@2@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t7@1@@2))) (and (=> (= (ControlFlow 0 242120) 242168) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Then_correct@@2) (=> (= (ControlFlow 0 242120) 242154) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon14_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@2  (=> inline$$1_DiemAccount_exists_at$0$$t1@1@@5 (and (=> (= (ControlFlow 0 242106) 242218) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Then_correct@@2) (=> (= (ControlFlow 0 242106) 242120) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon13_Else_correct@@2)))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@2  (=> (and (and (not inline$$1_DiemAccount_exists_at$0$$t1@1@@5) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t4@1@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= (ControlFlow 0 242096) 242102))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$L3_correct@@2)))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@2  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 5)) (and (= inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2 inline$$1_DiemAccount_delegated_key_rotation_capability$0$$t6@0@@2) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 inline$$1_DiemAccount_exists_at$0$$t1@1@@5))) (and (=> (= (ControlFlow 0 242080) 242106) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Then_correct@@2) (=> (= (ControlFlow 0 242080) 242096) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon12_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@2 true))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct@@5  (=> (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2)) (= inline$$1_DiemAccount_exists_at$0$$t1@1@@5 inline$$1_DiemAccount_exists_at$0$$t1@1@@5)) (and (=> (= (ControlFlow 0 242038) 242234) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Then_correct@@2) (=> (= (ControlFlow 0 242038) 242080) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon11_Else_correct@@2))))))
(let ((inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@2  (=> (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= (ControlFlow 0 242044) 242038)) inline$$1_DiemAccount_exists_at$0$anon0_correct@@5)))
(let ((inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t5@0@@2)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_165235| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t17@0@@2)) 0) (= (seq.len (|p#$Mutation_165279| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t18@0@@2)) 0)) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t7@0@@2 (|$addr#$signer| _$t0@@6)) (= _$t0@@6 _$t0@@6))) (and (and (|$IsValid'address'| inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 (|$addr#$signer| _$t0@@6))) (and (= inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2 inline$$1_DiemAccount_extract_key_rotation_capability$0$$t8@0@@2) (= (ControlFlow 0 242240) 242044)))) inline$$1_DiemAccount_delegated_key_rotation_capability$0$anon0_correct@@2))))
(let ((inline$$1_SharedEd25519PublicKey_publish$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_167813| inline$$1_SharedEd25519PublicKey_publish$0$$t12@0)) 0) (= inline$$1_SharedEd25519PublicKey_publish$0$$t5@0 (|$addr#$signer| _$t0@@6))) (=> (and (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t6@0 (|$addr#$signer| _$t0@@6)) (= inline$$1_SharedEd25519PublicKey_publish$0$$t7@0 (|$addr#$signer| _$t0@@6))) (and (= _$t0@@6 _$t0@@6) (= _$t1@@1 _$t1@@1))) (and (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t8@1 (as seq.empty (Seq Int))) (|$IsValid'vec'u8''| inline$$1_SharedEd25519PublicKey_publish$0$$t8@1)) (and (= inline$$1_SharedEd25519PublicKey_publish$0$$t9@0 (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 242789) 242240)))) inline$$1_DiemAccount_extract_key_rotation_capability$0$anon0_correct@@2))))
(let ((anon0$1_correct@@6  (=> (forall ((addr@@216 Int) ) (!  (=> (|$IsValid'address'| addr@@216) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@216) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@216)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@216)))) 0)) (= addr@@216 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@216))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17895:20|
 :skolemid |403|
)) (=> (and (and (forall ((addr@@217 Int) ) (!  (=> (|$IsValid'address'| addr@@217) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@217) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@217) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@217)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@217)))) 0)) (= addr@@217 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@217))) 0)))))))
 :qid |AccountAdministrationScriptsandybpl.17899:20|
 :skolemid |404|
)) (forall ((addr@@218 Int) ) (!  (=> (|$IsValid'address'| addr@@218) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@218) (|Select__T@[Int]Bool_| (|domain#$Memory_127423| $1_Roles_RoleId_$memory) addr@@218)))
 :qid |AccountAdministrationScriptsandybpl.17903:20|
 :skolemid |405|
))) (and (forall ((addr@@219 Int) ) (!  (=> (|$IsValid'address'| addr@@219) (=> (and (= addr@@219 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@219)) (|Select__T@[Int]Bool_| (|domain#$Memory_162209| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@219)))
 :qid |AccountAdministrationScriptsandybpl.17907:20|
 :skolemid |406|
)) (forall ((addr@@220 Int) ) (!  (=> (|$IsValid'address'| addr@@220) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@220) (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@220)))
 :qid |AccountAdministrationScriptsandybpl.17911:20|
 :skolemid |407|
)))) (=> (and (and (and (and (and (forall ((addr@@221 Int) ) (!  (=> (|$IsValid'address'| addr@@221) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162344| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@221) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@221)))
 :qid |AccountAdministrationScriptsandybpl.17915:22|
 :skolemid |408|
)) (forall ((addr@@222 Int) ) (!  (=> (|$IsValid'address'| addr@@222) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162435| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@222) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@222)))
 :qid |AccountAdministrationScriptsandybpl.17915:218|
 :skolemid |409|
))) (forall ((addr@@223 Int) ) (!  (=> (|$IsValid'address'| addr@@223) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_162526| |$1_DiemAccount_Balance'#0'_$memory|) addr@@223) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@223)))
 :qid |AccountAdministrationScriptsandybpl.17915:415|
 :skolemid |410|
))) (and (|$IsValid'address'| (|$addr#$signer| _$t0@@6)) (|$IsValid'vec'u8''| _$t1@@1))) (and (and (forall (($a_0@@22 Int) ) (! (let (($rsc@@22 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@22)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@22) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@22))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@22))) 1))))
 :qid |AccountAdministrationScriptsandybpl.17924:20|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) $a_0@@22))
)) (forall (($a_0@@23 Int) ) (! (let (($rsc@@23 (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@23)))
(|$IsValid'$1_SharedEd25519PublicKey_SharedEd25519PublicKey'| $rsc@@23))
 :qid |AccountAdministrationScriptsandybpl.17928:20|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]$1_SharedEd25519PublicKey_SharedEd25519PublicKey_| (|contents#$Memory_167642| $1_SharedEd25519PublicKey_SharedEd25519PublicKey_$memory) $a_0@@23))
))) (and (= $t2@@2 (|$addr#$signer| _$t0@@6)) (= $t3@@3 (|$addr#$signer| _$t0@@6))))) (and (and (and (= $t4@@3 (|$addr#$signer| _$t0@@6)) (let ((addr@@224 (|$addr#$signer| _$t0@@6)))
 (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_126905| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_161256| $1_DiemAccount_DiemAccount_$memory) addr@@224)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@224) (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_160273| $1_AccountFreezing_FreezingBit_$memory) addr@@224))))))) (and (= _$t0@@6 _$t0@@6) (= _$t1@@1 _$t1@@1))) (and (and (= $t5@@2 (|$addr#$signer| _$t0@@6)) (= $t6@@1 (|$addr#$signer| _$t0@@6))) (and (= $t7 (|$addr#$signer| _$t0@@6)) (= (ControlFlow 0 244817) 242789))))) inline$$1_SharedEd25519PublicKey_publish$0$anon0_correct)))))
(let ((inline$$InitEventStore$0$anon0_correct@@6  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@8 T@$1_Event_EventHandle) ) (! (let ((stream@@7 (|Select__T@[$1_Event_EventHandle]Multiset_89085_| (|streams#$EventStore| $es) handle@@8)))
 (and (= (|l#Multiset_89085| stream@@7) 0) (forall ((v@@54 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_89085| stream@@7) v@@54) 0)
 :qid |AccountAdministrationScriptsandybpl.129:13|
 :skolemid |2|
))))
 :qid |AccountAdministrationScriptsandybpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 239978) 244817)) anon0$1_correct@@6)))
(let ((anon0_correct@@6  (=> (= (ControlFlow 0 340419) 239978) inline$$InitEventStore$0$anon0_correct@@6)))
anon0_correct@@6))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
