(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-sort |T@[Int]Bool| 0)
(declare-sort T@$1_Event_EventHandleGenerator 0)
(declare-sort |T@[Int]$1_Event_EventHandleGenerator| 0)
(declare-datatypes ((T@$Memory_133774 0)) ((($Memory_133774 (|domain#$Memory_133774| |T@[Int]Bool|) (|contents#$Memory_133774| |T@[Int]$1_Event_EventHandleGenerator|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasConstants 0)) ((($1_DiemVMConfig_GasConstants (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| Int) (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| Int) (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| Int) (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| Int) (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| Int) (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| Int) (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| Int) (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| Int) (|$default_account_size#$1_DiemVMConfig_GasConstants| Int) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_GasSchedule 0)) ((($1_DiemVMConfig_GasSchedule (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$native_schedule#$1_DiemVMConfig_GasSchedule| (Seq Int)) (|$gas_constants#$1_DiemVMConfig_GasSchedule| T@$1_DiemVMConfig_GasConstants) ) ) ))
(declare-sort T@$1_Event_EventHandle 0)
(declare-datatypes ((T@$1_DiemBlock_BlockMetadata 0)) ((($1_DiemBlock_BlockMetadata (|$height#$1_DiemBlock_BlockMetadata| Int) (|$new_block_events#$1_DiemBlock_BlockMetadata| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemBlock_BlockMetadata| 0)
(declare-datatypes ((T@$Memory_227487 0)) ((($Memory_227487 (|domain#$Memory_227487| |T@[Int]Bool|) (|contents#$Memory_227487| |T@[Int]$1_DiemBlock_BlockMetadata|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemWriteSetManager 0)) ((($1_DiemAccount_DiemWriteSetManager (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemWriteSetManager| 0)
(declare-datatypes ((T@$Memory_181701 0)) ((($Memory_181701 (|domain#$Memory_181701| |T@[Int]Bool|) (|contents#$Memory_181701| |T@[Int]$1_DiemAccount_DiemWriteSetManager|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezingBit 0)) ((($1_AccountFreezing_FreezingBit (|$is_frozen#$1_AccountFreezing_FreezingBit| Bool) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezingBit| 0)
(declare-datatypes ((T@$Memory_179374 0)) ((($Memory_179374 (|domain#$Memory_179374| |T@[Int]Bool|) (|contents#$Memory_179374| |T@[Int]$1_AccountFreezing_FreezingBit|) ) ) ))
(declare-datatypes ((T@$1_AccountFreezing_FreezeEventsHolder 0)) ((($1_AccountFreezing_FreezeEventsHolder (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_AccountFreezing_FreezeEventsHolder| 0)
(declare-datatypes ((T@$Memory_179654 0)) ((($Memory_179654 (|domain#$Memory_179654| |T@[Int]Bool|) (|contents#$Memory_179654| |T@[Int]$1_AccountFreezing_FreezeEventsHolder|) ) ) ))
(declare-datatypes ((T@$1_ChainId_ChainId 0)) ((($1_ChainId_ChainId (|$id#$1_ChainId_ChainId| Int) ) ) ))
(declare-sort |T@[Int]$1_ChainId_ChainId| 0)
(declare-datatypes ((T@$Memory_179341 0)) ((($Memory_179341 (|domain#$Memory_179341| |T@[Int]Bool|) (|contents#$Memory_179341| |T@[Int]$1_ChainId_ChainId|) ) ) ))
(declare-datatypes ((T@$1_DesignatedDealer_Dealer 0)) ((($1_DesignatedDealer_Dealer (|$mint_event_handle#$1_DesignatedDealer_Dealer| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DesignatedDealer_Dealer| 0)
(declare-datatypes ((T@$Memory_179126 0)) ((($Memory_179126 (|domain#$Memory_179126| |T@[Int]Bool|) (|contents#$Memory_179126| |T@[Int]$1_DesignatedDealer_Dealer|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Limit 0)) ((($1_DualAttestation_Limit (|$micro_xdx_limit#$1_DualAttestation_Limit| Int) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Limit| 0)
(declare-datatypes ((T@$Memory_175704 0)) ((($Memory_175704 (|domain#$Memory_175704| |T@[Int]Bool|) (|contents#$Memory_175704| |T@[Int]$1_DualAttestation_Limit|) ) ) ))
(declare-datatypes ((T@$1_DualAttestation_Credential 0)) ((($1_DualAttestation_Credential (|$human_name#$1_DualAttestation_Credential| (Seq Int)) (|$base_url#$1_DualAttestation_Credential| (Seq Int)) (|$compliance_public_key#$1_DualAttestation_Credential| (Seq Int)) (|$expiration_date#$1_DualAttestation_Credential| Int) (|$compliance_key_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) (|$base_url_rotation_events#$1_DualAttestation_Credential| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DualAttestation_Credential| 0)
(declare-datatypes ((T@$Memory_175640 0)) ((($Memory_175640 (|domain#$Memory_175640| |T@[Int]Bool|) (|contents#$Memory_175640| |T@[Int]$1_DualAttestation_Credential|) ) ) ))
(declare-datatypes ((T@$1_VASP_ParentVASP 0)) ((($1_VASP_ParentVASP (|$num_children#$1_VASP_ParentVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ParentVASP| 0)
(declare-datatypes ((T@$Memory_168189 0)) ((($Memory_168189 (|domain#$Memory_168189| |T@[Int]Bool|) (|contents#$Memory_168189| |T@[Int]$1_VASP_ParentVASP|) ) ) ))
(declare-datatypes ((T@$1_VASP_ChildVASP 0)) ((($1_VASP_ChildVASP (|$parent_vasp_addr#$1_VASP_ChildVASP| Int) ) ) ))
(declare-sort |T@[Int]$1_VASP_ChildVASP| 0)
(declare-datatypes ((T@$Memory_168125 0)) ((($Memory_168125 (|domain#$Memory_168125| |T@[Int]Bool|) (|contents#$Memory_168125| |T@[Int]$1_VASP_ChildVASP|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomainManager 0)) ((($1_VASPDomain_VASPDomainManager (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomainManager| 0)
(declare-datatypes ((T@$Memory_167272 0)) ((($Memory_167272 (|domain#$Memory_167272| |T@[Int]Bool|) (|contents#$Memory_167272| |T@[Int]$1_VASPDomain_VASPDomainManager|) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomain 0)) ((($1_VASPDomain_VASPDomain (|$domain#$1_VASPDomain_VASPDomain| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_VASPDomain_VASPDomains 0)) ((($1_VASPDomain_VASPDomains (|$domains#$1_VASPDomain_VASPDomains| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-sort |T@[Int]$1_VASPDomain_VASPDomains| 0)
(declare-datatypes ((T@$Memory_167208 0)) ((($Memory_167208 (|domain#$Memory_167208| |T@[Int]Bool|) (|contents#$Memory_167208| |T@[Int]$1_VASPDomain_VASPDomains|) ) ) ))
(declare-datatypes ((T@$1_XDX_XDX 0)) ((($1_XDX_XDX (|$dummy_field#$1_XDX_XDX| Bool) ) ) ))
(declare-datatypes ((T@$1_XUS_XUS 0)) ((($1_XUS_XUS (|$dummy_field#$1_XUS_XUS| Bool) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_Window'$1_XDX_XDX'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_163964 0)) ((($Memory_163964 (|domain#$Memory_163964| |T@[Int]Bool|) (|contents#$Memory_163964| |T@[Int]$1_AccountLimits_Window'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_Window'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_Window'$1_XUS_XUS'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| Int) (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_163677 0)) ((($Memory_163677 (|domain#$Memory_163677| |T@[Int]Bool|) (|contents#$Memory_163677| |T@[Int]$1_AccountLimits_Window'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_163390 0)) ((($Memory_163390 (|domain#$Memory_163390| |T@[Int]Bool|) (|contents#$Memory_163390| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)) (((|$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| Int) ) ) ))
(declare-sort |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_163171 0)) ((($Memory_163171 (|domain#$Memory_163171| |T@[Int]Bool|) (|contents#$Memory_163171| |T@[Int]$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_AccountLimits_AccountLimitMutationCapability 0)) ((($1_AccountLimits_AccountLimitMutationCapability (|$dummy_field#$1_AccountLimits_AccountLimitMutationCapability| Bool) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_AccountOperationsCapability 0)) ((($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| T@$1_AccountLimits_AccountLimitMutationCapability) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_AccountOperationsCapability| 0)
(declare-datatypes ((T@$Memory_181217 0)) ((($Memory_181217 (|domain#$Memory_181217| |T@[Int]Bool|) (|contents#$Memory_181217| |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_MintCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_MintCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155520 0)) ((($Memory_155520 (|domain#$Memory_155520| |T@[Int]Bool|) (|contents#$Memory_155520| |T@[Int]$1_Diem_MintCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_MintCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_MintCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_MintCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155433 0)) ((($Memory_155433 (|domain#$Memory_155433| |T@[Int]Bool|) (|contents#$Memory_155433| |T@[Int]$1_Diem_MintCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XDX_XDX'| 0)) (((|$1_Diem_BurnCapability'$1_XDX_XDX'| (|$dummy_field#$1_Diem_BurnCapability'$1_XDX_XDX'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_150800 0)) ((($Memory_150800 (|domain#$Memory_150800| |T@[Int]Bool|) (|contents#$Memory_150800| |T@[Int]$1_Diem_BurnCapability'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_BurnCapability'$1_XUS_XUS'| 0)) (((|$1_Diem_BurnCapability'$1_XUS_XUS'| (|$dummy_field#$1_Diem_BurnCapability'$1_XUS_XUS'| Bool) ) ) ))
(declare-sort |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_150713 0)) ((($Memory_150713 (|domain#$Memory_150713| |T@[Int]Bool|) (|contents#$Memory_150713| |T@[Int]$1_Diem_BurnCapability'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'#0'| 0)) (((|$1_Diem_Diem'#0'| (|$value#$1_Diem_Diem'#0'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'#0'| 0)) (((|$1_DiemAccount_Balance'#0'| (|$coin#$1_DiemAccount_Balance'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'#0'| 0)
(declare-datatypes ((T@$Memory_181534 0)) ((($Memory_181534 (|domain#$Memory_181534| |T@[Int]Bool|) (|contents#$Memory_181534| |T@[Int]$1_DiemAccount_Balance'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'#0'| 0)) (((|$1_Diem_Preburn'#0'| (|$to_burn#$1_Diem_Preburn'#0'| |T@$1_Diem_Diem'#0'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'#0'| 0)
(declare-datatypes ((T@$Memory_155875 0)) ((($Memory_155875 (|domain#$Memory_155875| |T@[Int]Bool|) (|contents#$Memory_155875| |T@[Int]$1_Diem_Preburn'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'#0'| 0)) (((|$1_Diem_PreburnWithMetadata'#0'| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| |T@$1_Diem_Preburn'#0'|) (|$metadata#$1_Diem_PreburnWithMetadata'#0'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'#0'| 0)) (((|$1_Diem_PreburnQueue'#0'| (|$preburns#$1_Diem_PreburnQueue'#0'| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'#0'| 0)
(declare-datatypes ((T@$Memory_156300 0)) ((($Memory_156300 (|domain#$Memory_156300| |T@[Int]Bool|) (|contents#$Memory_156300| |T@[Int]$1_Diem_PreburnQueue'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XDX_XDX'| 0)) (((|$1_Diem_Diem'$1_XDX_XDX'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XDX_XDX'| 0)) (((|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_181443 0)) ((($Memory_181443 (|domain#$Memory_181443| |T@[Int]Bool|) (|contents#$Memory_181443| |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XDX_XDX'| 0)) (((|$1_Diem_Preburn'$1_XDX_XDX'| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| |T@$1_Diem_Diem'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_155784 0)) ((($Memory_155784 (|domain#$Memory_155784| |T@[Int]Bool|) (|contents#$Memory_155784| |T@[Int]$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$1_XDX_Reserve 0)) ((($1_XDX_Reserve (|$mint_cap#$1_XDX_Reserve| |T@$1_Diem_MintCapability'$1_XDX_XDX'|) (|$burn_cap#$1_XDX_Reserve| |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) (|$preburn_cap#$1_XDX_Reserve| |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) ) ))
(declare-sort |T@[Int]$1_XDX_Reserve| 0)
(declare-datatypes ((T@$Memory_165886 0)) ((($Memory_165886 (|domain#$Memory_165886| |T@[Int]Bool|) (|contents#$Memory_165886| |T@[Int]$1_XDX_Reserve|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| |T@$1_Diem_Preburn'$1_XDX_XDX'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)) (((|$1_Diem_PreburnQueue'$1_XDX_XDX'| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_156201 0)) ((($Memory_156201 (|domain#$Memory_156201| |T@[Int]Bool|) (|contents#$Memory_156201| |T@[Int]$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Diem'$1_XUS_XUS'| 0)) (((|$1_Diem_Diem'$1_XUS_XUS'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemAccount_Balance'$1_XUS_XUS'| 0)) (((|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_181352 0)) ((($Memory_181352 (|domain#$Memory_181352| |T@[Int]Bool|) (|contents#$Memory_181352| |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_Preburn'$1_XUS_XUS'| 0)) (((|$1_Diem_Preburn'$1_XUS_XUS'| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_155693 0)) ((($Memory_155693 (|domain#$Memory_155693| |T@[Int]Bool|) (|contents#$Memory_155693| |T@[Int]$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)) (((|$1_TransactionFee_TransactionFee'$1_XUS_XUS'| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Diem'$1_XUS_XUS'|) (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) ) ))
(declare-sort |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_174530 0)) ((($Memory_174530 (|domain#$Memory_174530| |T@[Int]Bool|) (|contents#$Memory_174530| |T@[Int]$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| |T@$1_Diem_Preburn'$1_XUS_XUS'|) (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| (Seq Int)) ) ) ))
(declare-datatypes ((|T@$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)) (((|$1_Diem_PreburnQueue'$1_XUS_XUS'| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-sort |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_156102 0)) ((($Memory_156102 (|domain#$Memory_156102| |T@[Int]Bool|) (|contents#$Memory_156102| |T@[Int]$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$1_FixedPoint32_FixedPoint32 0)) ((($1_FixedPoint32_FixedPoint32 (|$value#$1_FixedPoint32_FixedPoint32| Int) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'#0'| 0)) (((|$1_Diem_CurrencyInfo'#0'| (|$total_value#$1_Diem_CurrencyInfo'#0'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'#0'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'#0'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'#0'| Int) (|$currency_code#$1_Diem_CurrencyInfo'#0'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'#0'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'#0'| 0)
(declare-datatypes ((T@$Memory_150433 0)) ((($Memory_150433 (|domain#$Memory_150433| |T@[Int]Bool|) (|contents#$Memory_150433| |T@[Int]$1_Diem_CurrencyInfo'#0'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)) (((|$1_Diem_CurrencyInfo'$1_XDX_XDX'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XDX_XDX'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| 0)
(declare-datatypes ((T@$Memory_150297 0)) ((($Memory_150297 (|domain#$Memory_150297| |T@[Int]Bool|) (|contents#$Memory_150297| |T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((|T@$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)) (((|$1_Diem_CurrencyInfo'$1_XUS_XUS'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_FixedPoint32_FixedPoint32) (|$is_synthetic#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| (Seq Int)) (|$can_mint#$1_Diem_CurrencyInfo'$1_XUS_XUS'| Bool) (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| 0)
(declare-datatypes ((T@$Memory_150233 0)) ((($Memory_150233 (|domain#$Memory_150233| |T@[Int]Bool|) (|contents#$Memory_150233| |T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_146236 0)) ((($Memory_146236 (|domain#$Memory_146236| |T@[Int]Bool|) (|contents#$Memory_146236| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_146149 0)) ((($Memory_146149 (|domain#$Memory_146149| |T@[Int]Bool|) (|contents#$Memory_146149| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_146062 0)) ((($Memory_146062 (|domain#$Memory_146062| |T@[Int]Bool|) (|contents#$Memory_146062| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_145975 0)) ((($Memory_145975 (|domain#$Memory_145975| |T@[Int]Bool|) (|contents#$Memory_145975| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| (|$dummy_field#$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_145888 0)) ((($Memory_145888 (|domain#$Memory_145888| |T@[Int]Bool|) (|contents#$Memory_145888| |T@[Int]$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_CapabilityHolder 0)) ((($1_DiemSystem_CapabilityHolder (|$cap#$1_DiemSystem_CapabilityHolder| |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-sort |T@[Int]$1_DiemSystem_CapabilityHolder| 0)
(declare-datatypes ((T@$Memory_146501 0)) ((($Memory_146501 (|domain#$Memory_146501| |T@[Int]Bool|) (|contents#$Memory_146501| |T@[Int]$1_DiemSystem_CapabilityHolder|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_DisableReconfiguration 0)) ((($1_DiemConfig_DisableReconfiguration (|$dummy_field#$1_DiemConfig_DisableReconfiguration| Bool) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DisableReconfiguration| 0)
(declare-datatypes ((T@$Memory_145014 0)) ((($Memory_145014 (|domain#$Memory_145014| |T@[Int]Bool|) (|contents#$Memory_145014| |T@[Int]$1_DiemConfig_DisableReconfiguration|) ) ) ))
(declare-datatypes ((T@$1_DiemConfig_Configuration 0)) ((($1_DiemConfig_Configuration (|$epoch#$1_DiemConfig_Configuration| Int) (|$last_reconfiguration_time#$1_DiemConfig_Configuration| Int) (|$events#$1_DiemConfig_Configuration| T@$1_Event_EventHandle) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_Configuration| 0)
(declare-datatypes ((T@$Memory_145080 0)) ((($Memory_145080 (|domain#$Memory_145080| |T@[Int]Bool|) (|contents#$Memory_145080| |T@[Int]$1_DiemConfig_Configuration|) ) ) ))
(declare-datatypes ((T@$1_DiemVersion_DiemVersion 0)) ((($1_DiemVersion_DiemVersion (|$major#$1_DiemVersion_DiemVersion| Int) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| T@$1_DiemVersion_DiemVersion) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| 0)
(declare-datatypes ((T@$Memory_144933 0)) ((($Memory_144933 (|domain#$Memory_144933| |T@[Int]Bool|) (|contents#$Memory_144933| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) ) ))
(declare-datatypes ((T@$1_DiemVMConfig_DiemVMConfig 0)) ((($1_DiemVMConfig_DiemVMConfig (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| T@$1_DiemVMConfig_GasSchedule) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| T@$1_DiemVMConfig_DiemVMConfig) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| 0)
(declare-datatypes ((T@$Memory_144852 0)) ((($Memory_144852 (|domain#$Memory_144852| |T@[Int]Bool|) (|contents#$Memory_144852| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) ) ))
(declare-datatypes ((T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption 0)) ((($1_DiemTransactionPublishingOption_DiemTransactionPublishingOption (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| (Seq (Seq Int))) (|$module_publishing_allowed#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| Bool) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| 0)
(declare-datatypes ((T@$Memory_144771 0)) ((($Memory_144771 (|domain#$Memory_144771| |T@[Int]Bool|) (|contents#$Memory_144771| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) ) ))
(declare-datatypes ((T@$1_RegisteredCurrencies_RegisteredCurrencies 0)) ((($1_RegisteredCurrencies_RegisteredCurrencies (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)) (((|$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| 0)
(declare-datatypes ((T@$Memory_144690 0)) ((($Memory_144690 (|domain#$Memory_144690| |T@[Int]Bool|) (|contents#$Memory_144690| |T@[Int]$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) ) ))
(declare-datatypes ((T@$1_SlidingNonce_SlidingNonce 0)) ((($1_SlidingNonce_SlidingNonce (|$min_nonce#$1_SlidingNonce_SlidingNonce| Int) (|$nonce_mask#$1_SlidingNonce_SlidingNonce| Int) ) ) ))
(declare-sort |T@[Int]$1_SlidingNonce_SlidingNonce| 0)
(declare-datatypes ((T@$Memory_144576 0)) ((($Memory_144576 (|domain#$Memory_144576| |T@[Int]Bool|) (|contents#$Memory_144576| |T@[Int]$1_SlidingNonce_SlidingNonce|) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_WithdrawCapability 0)) ((($1_DiemAccount_WithdrawCapability (|$account_address#$1_DiemAccount_WithdrawCapability| Int) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_KeyRotationCapability 0)) ((($1_DiemAccount_KeyRotationCapability (|$account_address#$1_DiemAccount_KeyRotationCapability| Int) ) ) ))
(declare-datatypes ((T@$1_RecoveryAddress_RecoveryAddress 0)) ((($1_RecoveryAddress_RecoveryAddress (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@[Int]$1_RecoveryAddress_RecoveryAddress| 0)
(declare-datatypes ((T@$Memory_171231 0)) ((($Memory_171231 (|domain#$Memory_171231| |T@[Int]Bool|) (|contents#$Memory_171231| |T@[Int]$1_RecoveryAddress_RecoveryAddress|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| 0)) (((|$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-datatypes ((T@$1_DiemAccount_DiemAccount 0)) ((($1_DiemAccount_DiemAccount (|$authentication_key#$1_DiemAccount_DiemAccount| (Seq Int)) (|$withdraw_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) (|$key_rotation_capability#$1_DiemAccount_DiemAccount| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) (|$received_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sent_events#$1_DiemAccount_DiemAccount| T@$1_Event_EventHandle) (|$sequence_number#$1_DiemAccount_DiemAccount| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemAccount_DiemAccount| 0)
(declare-datatypes ((T@$Memory_180324 0)) ((($Memory_180324 (|domain#$Memory_180324| |T@[Int]Bool|) (|contents#$Memory_180324| |T@[Int]$1_DiemAccount_DiemAccount|) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_Config 0)) ((($1_ValidatorConfig_Config (|$consensus_pubkey#$1_ValidatorConfig_Config| (Seq Int)) (|$validator_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) (|$fullnode_network_addresses#$1_ValidatorConfig_Config| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_ValidatorInfo 0)) ((($1_DiemSystem_ValidatorInfo (|$addr#$1_DiemSystem_ValidatorInfo| Int) (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| Int) (|$config#$1_DiemSystem_ValidatorInfo| T@$1_ValidatorConfig_Config) (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| Int) ) ) ))
(declare-datatypes ((T@$1_DiemSystem_DiemSystem 0)) ((($1_DiemSystem_DiemSystem (|$scheme#$1_DiemSystem_DiemSystem| Int) (|$validators#$1_DiemSystem_DiemSystem| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((|T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)) (((|$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| T@$1_DiemSystem_DiemSystem) ) ) ))
(declare-sort |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| 0)
(declare-datatypes ((T@$Memory_144609 0)) ((($Memory_144609 (|domain#$Memory_144609| |T@[Int]Bool|) (|contents#$Memory_144609| |T@[Int]$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'$1_ValidatorConfig_Config'| 0)) (((|$1_Option_Option'$1_ValidatorConfig_Config'| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((|T@$1_Option_Option'address'| 0)) (((|$1_Option_Option'address'| (|$vec#$1_Option_Option'address'| (Seq Int)) ) ) ))
(declare-datatypes ((T@$1_ValidatorConfig_ValidatorConfig 0)) ((($1_ValidatorConfig_ValidatorConfig (|$config#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'$1_ValidatorConfig_Config'|) (|$operator_account#$1_ValidatorConfig_ValidatorConfig| |T@$1_Option_Option'address'|) (|$human_name#$1_ValidatorConfig_ValidatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorConfig_ValidatorConfig| 0)
(declare-datatypes ((T@$Memory_144065 0)) ((($Memory_144065 (|domain#$Memory_144065| |T@[Int]Bool|) (|contents#$Memory_144065| |T@[Int]$1_ValidatorConfig_ValidatorConfig|) ) ) ))
(declare-datatypes ((T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig 0)) ((($1_ValidatorOperatorConfig_ValidatorOperatorConfig (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| (Seq Int)) ) ) ))
(declare-sort |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig| 0)
(declare-datatypes ((T@$Memory_143212 0)) ((($Memory_143212 (|domain#$Memory_143212| |T@[Int]Bool|) (|contents#$Memory_143212| |T@[Int]$1_ValidatorOperatorConfig_ValidatorOperatorConfig|) ) ) ))
(declare-datatypes ((T@$1_Roles_RoleId 0)) ((($1_Roles_RoleId (|$role_id#$1_Roles_RoleId| Int) ) ) ))
(declare-sort |T@[Int]$1_Roles_RoleId| 0)
(declare-datatypes ((T@$Memory_141115 0)) ((($Memory_141115 (|domain#$Memory_141115| |T@[Int]Bool|) (|contents#$Memory_141115| |T@[Int]$1_Roles_RoleId|) ) ) ))
(declare-datatypes ((T@$1_DiemTimestamp_CurrentTimeMicroseconds 0)) ((($1_DiemTimestamp_CurrentTimeMicroseconds (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| Int) ) ) ))
(declare-sort |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| 0)
(declare-datatypes ((T@$Memory_140621 0)) ((($Memory_140621 (|domain#$Memory_140621| |T@[Int]Bool|) (|contents#$Memory_140621| |T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds|) ) ) ))
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
(declare-datatypes ((T@Multiset_102809 0)) (((Multiset_102809 (|v#Multiset_102809| |T@[$EventRep]Int|) (|l#Multiset_102809| Int) ) ) ))
(declare-sort |T@[$1_Event_EventHandle]Multiset_102809| 0)
(declare-datatypes ((T@$EventStore 0)) ((($EventStore (|counter#$EventStore| Int) (|streams#$EventStore| |T@[$1_Event_EventHandle]Multiset_102809|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_225516 0)) ((($Mutation_225516 (|l#$Mutation_225516| T@$Location) (|p#$Mutation_225516| (Seq Int)) (|v#$Mutation_225516| T@$1_RecoveryAddress_RecoveryAddress) ) ) ))
(declare-datatypes ((T@$Mutation_219528 0)) ((($Mutation_219528 (|l#$Mutation_219528| T@$Location) (|p#$Mutation_219528| (Seq Int)) (|v#$Mutation_219528| |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) ) ))
(declare-datatypes ((T@$Mutation_219484 0)) ((($Mutation_219484 (|l#$Mutation_219484| T@$Location) (|p#$Mutation_219484| (Seq Int)) (|v#$Mutation_219484| T@$1_DiemAccount_DiemAccount) ) ) ))
(declare-datatypes ((T@$Mutation_168591 0)) ((($Mutation_168591 (|l#$Mutation_168591| T@$Location) (|p#$Mutation_168591| (Seq Int)) (|v#$Mutation_168591| T@$1_VASP_ParentVASP) ) ) ))
(declare-datatypes ((T@$Mutation_38935 0)) ((($Mutation_38935 (|l#$Mutation_38935| T@$Location) (|p#$Mutation_38935| (Seq Int)) (|v#$Mutation_38935| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_161780 0)) ((($Mutation_161780 (|l#$Mutation_161780| T@$Location) (|p#$Mutation_161780| (Seq Int)) (|v#$Mutation_161780| |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_148974 0)) ((($Mutation_148974 (|l#$Mutation_148974| T@$Location) (|p#$Mutation_148974| (Seq Int)) (|v#$Mutation_148974| T@$1_RegisteredCurrencies_RegisteredCurrencies) ) ) ))
(declare-datatypes ((T@$Mutation_134405 0)) ((($Mutation_134405 (|l#$Mutation_134405| T@$Location) (|p#$Mutation_134405| (Seq Int)) (|v#$Mutation_134405| T@$1_Event_EventHandle) ) ) ))
(declare-datatypes ((T@$Mutation_16749 0)) ((($Mutation_16749 (|l#$Mutation_16749| T@$Location) (|p#$Mutation_16749| (Seq Int)) (|v#$Mutation_16749| Int) ) ) ))
(declare-datatypes ((T@$Mutation_129718 0)) ((($Mutation_129718 (|l#$Mutation_129718| T@$Location) (|p#$Mutation_129718| (Seq Int)) (|v#$Mutation_129718| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_128972 0)) ((($Mutation_128972 (|l#$Mutation_128972| T@$Location) (|p#$Mutation_128972| (Seq Int)) (|v#$Mutation_128972| (Seq (Seq Int))) ) ) ))
(declare-datatypes ((T@$Mutation_127532 0)) ((($Mutation_127532 (|l#$Mutation_127532| T@$Location) (|p#$Mutation_127532| (Seq Int)) (|v#$Mutation_127532| T@$1_XUS_XUS) ) ) ))
(declare-datatypes ((T@$Mutation_126786 0)) ((($Mutation_126786 (|l#$Mutation_126786| T@$Location) (|p#$Mutation_126786| (Seq Int)) (|v#$Mutation_126786| (Seq T@$1_XUS_XUS)) ) ) ))
(declare-datatypes ((T@$Mutation_125346 0)) ((($Mutation_125346 (|l#$Mutation_125346| T@$Location) (|p#$Mutation_125346| (Seq Int)) (|v#$Mutation_125346| T@$1_XDX_XDX) ) ) ))
(declare-datatypes ((T@$Mutation_124600 0)) ((($Mutation_124600 (|l#$Mutation_124600| T@$Location) (|p#$Mutation_124600| (Seq Int)) (|v#$Mutation_124600| (Seq T@$1_XDX_XDX)) ) ) ))
(declare-datatypes ((T@$Mutation_123160 0)) ((($Mutation_123160 (|l#$Mutation_123160| T@$Location) (|p#$Mutation_123160| (Seq Int)) (|v#$Mutation_123160| T@$1_ValidatorConfig_Config) ) ) ))
(declare-datatypes ((T@$Mutation_122414 0)) ((($Mutation_122414 (|l#$Mutation_122414| T@$Location) (|p#$Mutation_122414| (Seq Int)) (|v#$Mutation_122414| (Seq T@$1_ValidatorConfig_Config)) ) ) ))
(declare-datatypes ((T@$Mutation_120974 0)) ((($Mutation_120974 (|l#$Mutation_120974| T@$Location) (|p#$Mutation_120974| (Seq Int)) (|v#$Mutation_120974| T@$1_VASPDomain_VASPDomain) ) ) ))
(declare-datatypes ((T@$Mutation_120228 0)) ((($Mutation_120228 (|l#$Mutation_120228| T@$Location) (|p#$Mutation_120228| (Seq Int)) (|v#$Mutation_120228| (Seq T@$1_VASPDomain_VASPDomain)) ) ) ))
(declare-datatypes ((T@$Mutation_118788 0)) ((($Mutation_118788 (|l#$Mutation_118788| T@$Location) (|p#$Mutation_118788| (Seq Int)) (|v#$Mutation_118788| |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) ) ))
(declare-datatypes ((T@$Mutation_118042 0)) ((($Mutation_118042 (|l#$Mutation_118042| T@$Location) (|p#$Mutation_118042| (Seq Int)) (|v#$Mutation_118042| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) ) ))
(declare-datatypes ((T@$Mutation_116602 0)) ((($Mutation_116602 (|l#$Mutation_116602| T@$Location) (|p#$Mutation_116602| (Seq Int)) (|v#$Mutation_116602| |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) ) ))
(declare-datatypes ((T@$Mutation_115856 0)) ((($Mutation_115856 (|l#$Mutation_115856| T@$Location) (|p#$Mutation_115856| (Seq Int)) (|v#$Mutation_115856| (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) ) ))
(declare-datatypes ((T@$Mutation_114416 0)) ((($Mutation_114416 (|l#$Mutation_114416| T@$Location) (|p#$Mutation_114416| (Seq Int)) (|v#$Mutation_114416| |T@$1_Diem_PreburnWithMetadata'#0'|) ) ) ))
(declare-datatypes ((T@$Mutation_113670 0)) ((($Mutation_113670 (|l#$Mutation_113670| T@$Location) (|p#$Mutation_113670| (Seq Int)) (|v#$Mutation_113670| (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) ) ))
(declare-datatypes ((T@$Mutation_112230 0)) ((($Mutation_112230 (|l#$Mutation_112230| T@$Location) (|p#$Mutation_112230| (Seq Int)) (|v#$Mutation_112230| T@$1_DiemSystem_ValidatorInfo) ) ) ))
(declare-datatypes ((T@$Mutation_111484 0)) ((($Mutation_111484 (|l#$Mutation_111484| T@$Location) (|p#$Mutation_111484| (Seq Int)) (|v#$Mutation_111484| (Seq T@$1_DiemSystem_ValidatorInfo)) ) ) ))
(declare-datatypes ((T@$Mutation_110044 0)) ((($Mutation_110044 (|l#$Mutation_110044| T@$Location) (|p#$Mutation_110044| (Seq Int)) (|v#$Mutation_110044| T@$1_DiemAccount_WithdrawCapability) ) ) ))
(declare-datatypes ((T@$Mutation_109298 0)) ((($Mutation_109298 (|l#$Mutation_109298| T@$Location) (|p#$Mutation_109298| (Seq Int)) (|v#$Mutation_109298| (Seq T@$1_DiemAccount_WithdrawCapability)) ) ) ))
(declare-datatypes ((T@$Mutation_107858 0)) ((($Mutation_107858 (|l#$Mutation_107858| T@$Location) (|p#$Mutation_107858| (Seq Int)) (|v#$Mutation_107858| T@$1_DiemAccount_KeyRotationCapability) ) ) ))
(declare-datatypes ((T@$Mutation_107112 0)) ((($Mutation_107112 (|l#$Mutation_107112| T@$Location) (|p#$Mutation_107112| (Seq Int)) (|v#$Mutation_107112| (Seq T@$1_DiemAccount_KeyRotationCapability)) ) ) ))
(declare-sort |T@#0| 0)
(declare-datatypes ((T@$Mutation_105634 0)) ((($Mutation_105634 (|l#$Mutation_105634| T@$Location) (|p#$Mutation_105634| (Seq Int)) (|v#$Mutation_105634| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_104888 0)) ((($Mutation_104888 (|l#$Mutation_104888| T@$Location) (|p#$Mutation_104888| (Seq Int)) (|v#$Mutation_104888| (Seq |T@#0|)) ) ) ))
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
(declare-fun |Select__T@[$1_Event_EventHandle]Multiset_102809_| (|T@[$1_Event_EventHandle]Multiset_102809| T@$1_Event_EventHandle) T@Multiset_102809)
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
(declare-fun |$IsValid'$1_RecoveryAddress_RecoveryAddress'| (T@$1_RecoveryAddress_RecoveryAddress) Bool)
(declare-fun |$IsValid'$1_DiemBlock_BlockMetadata'| (T@$1_DiemBlock_BlockMetadata) Bool)
(declare-fun |$IsValid'$1_DiemBlock_NewBlockEvent'| (T@$1_DiemBlock_NewBlockEvent) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasSchedule'| (T@$1_DiemVMConfig_GasSchedule) Bool)
(declare-fun |$IsValid'$1_DiemVMConfig_GasConstants'| (T@$1_DiemVMConfig_GasConstants) Bool)
(declare-fun ReverseVec_16602 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_93074 ((Seq T@$1_ValidatorConfig_Config)) (Seq T@$1_ValidatorConfig_Config))
(declare-fun ReverseVec_91695 ((Seq T@$1_DiemAccount_KeyRotationCapability)) (Seq T@$1_DiemAccount_KeyRotationCapability))
(declare-fun ReverseVec_91892 ((Seq T@$1_DiemAccount_WithdrawCapability)) (Seq T@$1_DiemAccount_WithdrawCapability))
(declare-fun ReverseVec_92089 ((Seq T@$1_DiemSystem_ValidatorInfo)) (Seq T@$1_DiemSystem_ValidatorInfo))
(declare-fun ReverseVec_93665 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun ReverseVec_92680 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|))
(declare-fun ReverseVec_92483 ((Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|))
(declare-fun ReverseVec_92286 ((Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (Seq |T@$1_Diem_PreburnWithMetadata'#0'|))
(declare-fun ReverseVec_92877 ((Seq T@$1_VASPDomain_VASPDomain)) (Seq T@$1_VASPDomain_VASPDomain))
(declare-fun ReverseVec_91498 ((Seq |T@#0|)) (Seq |T@#0|))
(declare-fun ReverseVec_93271 ((Seq T@$1_XDX_XDX)) (Seq T@$1_XDX_XDX))
(declare-fun ReverseVec_93468 ((Seq T@$1_XUS_XUS)) (Seq T@$1_XUS_XUS))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (|T@[$1_Event_EventHandle]Multiset_102809| |T@[$1_Event_EventHandle]Multiset_102809|) |T@[$1_Event_EventHandle]Multiset_102809|)
(declare-fun |lambda#3| (|T@[$EventRep]Int| |T@[$EventRep]Int|) |T@[$EventRep]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |RecoveryAddresscvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |RecoveryAddresscvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |RecoveryAddresscvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |RecoveryAddresscvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |RecoveryAddresscvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |RecoveryAddresscvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddresscvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |RecoveryAddresscvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq |T@#0|)) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) true)
 :qid |RecoveryAddresscvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |RecoveryAddresscvc4bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 (Seq |T@#0|)) (e |T@#0|) ) (! (let ((i@@1 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |RecoveryAddresscvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |RecoveryAddresscvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |RecoveryAddresscvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'$1_DiemAccount_KeyRotationCapability'| (seq.nth v@@6 i@@3)))
 :qid |RecoveryAddresscvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |RecoveryAddresscvc4bpl.768:62|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| v@@6))
)))
(assert (forall ((v@@7 (Seq T@$1_DiemAccount_KeyRotationCapability)) (e@@0 T@$1_DiemAccount_KeyRotationCapability) ) (! (let ((i@@4 (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |RecoveryAddresscvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |RecoveryAddresscvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |RecoveryAddresscvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_KeyRotationCapability'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (= (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'$1_DiemAccount_WithdrawCapability'| (seq.nth v@@8 i@@6)))
 :qid |RecoveryAddresscvc4bpl.950:13|
 :skolemid |25|
))))
 :qid |RecoveryAddresscvc4bpl.948:59|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| v@@8))
)))
(assert (forall ((v@@9 (Seq T@$1_DiemAccount_WithdrawCapability)) (e@@1 T@$1_DiemAccount_WithdrawCapability) ) (! (let ((i@@7 (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |RecoveryAddresscvc4bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |RecoveryAddresscvc4bpl.963:17|
 :skolemid |28|
)))))
 :qid |RecoveryAddresscvc4bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'$1_DiemAccount_WithdrawCapability'| v@@9 e@@1))
)))
(assert (forall ((v@@10 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (= (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10)  (and (|$IsValid'u64'| (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len v@@10))) (|$IsValid'$1_DiemSystem_ValidatorInfo'| (seq.nth v@@10 i@@9)))
 :qid |RecoveryAddresscvc4bpl.1130:13|
 :skolemid |30|
))))
 :qid |RecoveryAddresscvc4bpl.1128:53|
 :skolemid |31|
 :pattern ( (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_DiemSystem_ValidatorInfo)) (e@@2 T@$1_DiemSystem_ValidatorInfo) ) (! (let ((i@@10 (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (and (>= i@@11 0) (< i@@11 (seq.len v@@11)))) (= (seq.nth v@@11 i@@11) e@@2))
 :qid |RecoveryAddresscvc4bpl.1135:13|
 :skolemid |32|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (and (>= i@@10 0) (< i@@10 (seq.len v@@11)))) (= (seq.nth v@@11 i@@10) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@2) (>= j@@2 0)) (< j@@2 i@@10)) (not (= (seq.nth v@@11 j@@2) e@@2)))
 :qid |RecoveryAddresscvc4bpl.1143:17|
 :skolemid |33|
)))))
 :qid |RecoveryAddresscvc4bpl.1139:15|
 :skolemid |34|
 :pattern ( (|$IndexOfVec'$1_DiemSystem_ValidatorInfo'| v@@11 e@@2))
)))
(assert (forall ((v@@12 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12)  (and (|$IsValid'u64'| (seq.len v@@12)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 (seq.len v@@12))) (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| (seq.nth v@@12 i@@12)))
 :qid |RecoveryAddresscvc4bpl.1310:13|
 :skolemid |35|
))))
 :qid |RecoveryAddresscvc4bpl.1308:57|
 :skolemid |36|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| v@@12))
)))
(assert (forall ((v@@13 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) (e@@3 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (let ((i@@13 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3)))
(ite  (not (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (>= i@@14 0) (< i@@14 (seq.len v@@13)))) (= (seq.nth v@@13 i@@14) e@@3))
 :qid |RecoveryAddresscvc4bpl.1315:13|
 :skolemid |37|
))) (= i@@13 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@13) (and (>= i@@13 0) (< i@@13 (seq.len v@@13)))) (= (seq.nth v@@13 i@@13) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@3) (>= j@@3 0)) (< j@@3 i@@13)) (not (= (seq.nth v@@13 j@@3) e@@3)))
 :qid |RecoveryAddresscvc4bpl.1323:17|
 :skolemid |38|
)))))
 :qid |RecoveryAddresscvc4bpl.1319:15|
 :skolemid |39|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'#0''| v@@13 e@@3))
)))
(assert (forall ((v@@14 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14)  (and (|$IsValid'u64'| (seq.len v@@14)) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 (seq.len v@@14))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| (seq.nth v@@14 i@@15)))
 :qid |RecoveryAddresscvc4bpl.1490:13|
 :skolemid |40|
))))
 :qid |RecoveryAddresscvc4bpl.1488:65|
 :skolemid |41|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| v@@14))
)))
(assert (forall ((v@@15 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) (e@@4 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (let ((i@@16 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (>= i@@17 0) (< i@@17 (seq.len v@@15)))) (= (seq.nth v@@15 i@@17) e@@4))
 :qid |RecoveryAddresscvc4bpl.1495:13|
 :skolemid |42|
))) (= i@@16 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@16) (and (>= i@@16 0) (< i@@16 (seq.len v@@15)))) (= (seq.nth v@@15 i@@16) e@@4)) (forall ((j@@4 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@4) (>= j@@4 0)) (< j@@4 i@@16)) (not (= (seq.nth v@@15 j@@4) e@@4)))
 :qid |RecoveryAddresscvc4bpl.1503:17|
 :skolemid |43|
)))))
 :qid |RecoveryAddresscvc4bpl.1499:15|
 :skolemid |44|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| v@@15 e@@4))
)))
(assert (forall ((v@@16 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (= (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16)  (and (|$IsValid'u64'| (seq.len v@@16)) (forall ((i@@18 Int) ) (!  (=> (and (>= i@@18 0) (< i@@18 (seq.len v@@16))) (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| (seq.nth v@@16 i@@18)))
 :qid |RecoveryAddresscvc4bpl.1670:13|
 :skolemid |45|
))))
 :qid |RecoveryAddresscvc4bpl.1668:65|
 :skolemid |46|
 :pattern ( (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| v@@16))
)))
(assert (forall ((v@@17 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) (e@@5 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (let ((i@@19 (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5)))
(ite  (not (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (>= i@@20 0) (< i@@20 (seq.len v@@17)))) (= (seq.nth v@@17 i@@20) e@@5))
 :qid |RecoveryAddresscvc4bpl.1675:13|
 :skolemid |47|
))) (= i@@19 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@19) (and (>= i@@19 0) (< i@@19 (seq.len v@@17)))) (= (seq.nth v@@17 i@@19) e@@5)) (forall ((j@@5 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@5) (>= j@@5 0)) (< j@@5 i@@19)) (not (= (seq.nth v@@17 j@@5) e@@5)))
 :qid |RecoveryAddresscvc4bpl.1683:17|
 :skolemid |48|
)))))
 :qid |RecoveryAddresscvc4bpl.1679:15|
 :skolemid |49|
 :pattern ( (|$IndexOfVec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| v@@17 e@@5))
)))
(assert (forall ((v@@18 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (= (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18)  (and (|$IsValid'u64'| (seq.len v@@18)) (forall ((i@@21 Int) ) (!  (=> (and (>= i@@21 0) (< i@@21 (seq.len v@@18))) (|$IsValid'$1_VASPDomain_VASPDomain'| (seq.nth v@@18 i@@21)))
 :qid |RecoveryAddresscvc4bpl.1850:13|
 :skolemid |50|
))))
 :qid |RecoveryAddresscvc4bpl.1848:50|
 :skolemid |51|
 :pattern ( (|$IsValid'vec'$1_VASPDomain_VASPDomain''| v@@18))
)))
(assert (forall ((v@@19 (Seq T@$1_VASPDomain_VASPDomain)) (e@@6 T@$1_VASPDomain_VASPDomain) ) (! (let ((i@@22 (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6)))
(ite  (not (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (>= i@@23 0) (< i@@23 (seq.len v@@19)))) (= (seq.nth v@@19 i@@23) e@@6))
 :qid |RecoveryAddresscvc4bpl.1855:13|
 :skolemid |52|
))) (= i@@22 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@22) (and (>= i@@22 0) (< i@@22 (seq.len v@@19)))) (= (seq.nth v@@19 i@@22) e@@6)) (forall ((j@@6 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@6) (>= j@@6 0)) (< j@@6 i@@22)) (not (= (seq.nth v@@19 j@@6) e@@6)))
 :qid |RecoveryAddresscvc4bpl.1863:17|
 :skolemid |53|
)))))
 :qid |RecoveryAddresscvc4bpl.1859:15|
 :skolemid |54|
 :pattern ( (|$IndexOfVec'$1_VASPDomain_VASPDomain'| v@@19 e@@6))
)))
(assert (forall ((v@@20 (Seq T@$1_ValidatorConfig_Config)) ) (! (= (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20)  (and (|$IsValid'u64'| (seq.len v@@20)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 (seq.len v@@20))) (|$IsValid'$1_ValidatorConfig_Config'| (seq.nth v@@20 i@@24)))
 :qid |RecoveryAddresscvc4bpl.2030:13|
 :skolemid |55|
))))
 :qid |RecoveryAddresscvc4bpl.2028:51|
 :skolemid |56|
 :pattern ( (|$IsValid'vec'$1_ValidatorConfig_Config''| v@@20))
)))
(assert (forall ((v@@21 (Seq T@$1_ValidatorConfig_Config)) (e@@7 T@$1_ValidatorConfig_Config) ) (! (let ((i@@25 (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7)))
(ite  (not (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (>= i@@26 0) (< i@@26 (seq.len v@@21)))) (= (seq.nth v@@21 i@@26) e@@7))
 :qid |RecoveryAddresscvc4bpl.2035:13|
 :skolemid |57|
))) (= i@@25 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@25) (and (>= i@@25 0) (< i@@25 (seq.len v@@21)))) (= (seq.nth v@@21 i@@25) e@@7)) (forall ((j@@7 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@7) (>= j@@7 0)) (< j@@7 i@@25)) (not (= (seq.nth v@@21 j@@7) e@@7)))
 :qid |RecoveryAddresscvc4bpl.2043:17|
 :skolemid |58|
)))))
 :qid |RecoveryAddresscvc4bpl.2039:15|
 :skolemid |59|
 :pattern ( (|$IndexOfVec'$1_ValidatorConfig_Config'| v@@21 e@@7))
)))
(assert (forall ((v@@22 (Seq T@$1_XDX_XDX)) ) (! (= (|$IsValid'vec'$1_XDX_XDX''| v@@22)  (and (|$IsValid'u64'| (seq.len v@@22)) (forall ((i@@27 Int) ) (!  (=> (and (>= i@@27 0) (< i@@27 (seq.len v@@22))) (|$IsValid'$1_XDX_XDX'| (seq.nth v@@22 i@@27)))
 :qid |RecoveryAddresscvc4bpl.2210:13|
 :skolemid |60|
))))
 :qid |RecoveryAddresscvc4bpl.2208:36|
 :skolemid |61|
 :pattern ( (|$IsValid'vec'$1_XDX_XDX''| v@@22))
)))
(assert (forall ((v@@23 (Seq T@$1_XDX_XDX)) (e@@8 T@$1_XDX_XDX) ) (! (let ((i@@28 (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8)))
(ite  (not (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (>= i@@29 0) (< i@@29 (seq.len v@@23)))) (= (seq.nth v@@23 i@@29) e@@8))
 :qid |RecoveryAddresscvc4bpl.2215:13|
 :skolemid |62|
))) (= i@@28 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@28) (and (>= i@@28 0) (< i@@28 (seq.len v@@23)))) (= (seq.nth v@@23 i@@28) e@@8)) (forall ((j@@8 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@8) (>= j@@8 0)) (< j@@8 i@@28)) (not (= (seq.nth v@@23 j@@8) e@@8)))
 :qid |RecoveryAddresscvc4bpl.2223:17|
 :skolemid |63|
)))))
 :qid |RecoveryAddresscvc4bpl.2219:15|
 :skolemid |64|
 :pattern ( (|$IndexOfVec'$1_XDX_XDX'| v@@23 e@@8))
)))
(assert (forall ((v@@24 (Seq T@$1_XUS_XUS)) ) (! (= (|$IsValid'vec'$1_XUS_XUS''| v@@24)  (and (|$IsValid'u64'| (seq.len v@@24)) (forall ((i@@30 Int) ) (!  (=> (and (>= i@@30 0) (< i@@30 (seq.len v@@24))) (|$IsValid'$1_XUS_XUS'| (seq.nth v@@24 i@@30)))
 :qid |RecoveryAddresscvc4bpl.2390:13|
 :skolemid |65|
))))
 :qid |RecoveryAddresscvc4bpl.2388:36|
 :skolemid |66|
 :pattern ( (|$IsValid'vec'$1_XUS_XUS''| v@@24))
)))
(assert (forall ((v@@25 (Seq T@$1_XUS_XUS)) (e@@9 T@$1_XUS_XUS) ) (! (let ((i@@31 (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9)))
(ite  (not (exists ((i@@32 Int) ) (!  (and (and (|$IsValid'u64'| i@@32) (and (>= i@@32 0) (< i@@32 (seq.len v@@25)))) (= (seq.nth v@@25 i@@32) e@@9))
 :qid |RecoveryAddresscvc4bpl.2395:13|
 :skolemid |67|
))) (= i@@31 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@31) (and (>= i@@31 0) (< i@@31 (seq.len v@@25)))) (= (seq.nth v@@25 i@@31) e@@9)) (forall ((j@@9 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@9) (>= j@@9 0)) (< j@@9 i@@31)) (not (= (seq.nth v@@25 j@@9) e@@9)))
 :qid |RecoveryAddresscvc4bpl.2403:17|
 :skolemid |68|
)))))
 :qid |RecoveryAddresscvc4bpl.2399:15|
 :skolemid |69|
 :pattern ( (|$IndexOfVec'$1_XUS_XUS'| v@@25 e@@9))
)))
(assert (forall ((v@@26 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@26)  (and (|$IsValid'u64'| (seq.len v@@26)) (forall ((i@@33 Int) ) (!  (=> (and (>= i@@33 0) (< i@@33 (seq.len v@@26))) (|$IsValid'vec'u8''| (seq.nth v@@26 i@@33)))
 :qid |RecoveryAddresscvc4bpl.2570:13|
 :skolemid |70|
))))
 :qid |RecoveryAddresscvc4bpl.2568:33|
 :skolemid |71|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@26))
)))
(assert (forall ((v@@27 (Seq (Seq Int))) (e@@10 (Seq Int)) ) (! (let ((i@@34 (|$IndexOfVec'vec'u8''| v@@27 e@@10)))
(ite  (not (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (>= i@@35 0) (< i@@35 (seq.len v@@27)))) (= (seq.nth v@@27 i@@35) e@@10))
 :qid |RecoveryAddresscvc4bpl.2575:13|
 :skolemid |72|
))) (= i@@34 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@34) (and (>= i@@34 0) (< i@@34 (seq.len v@@27)))) (= (seq.nth v@@27 i@@34) e@@10)) (forall ((j@@10 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@10) (>= j@@10 0)) (< j@@10 i@@34)) (not (= (seq.nth v@@27 j@@10) e@@10)))
 :qid |RecoveryAddresscvc4bpl.2583:17|
 :skolemid |73|
)))))
 :qid |RecoveryAddresscvc4bpl.2579:15|
 :skolemid |74|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@27 e@@10))
)))
(assert (forall ((v@@28 (Seq Int)) ) (! (= (|$IsValid'vec'address''| v@@28)  (and (|$IsValid'u64'| (seq.len v@@28)) (forall ((i@@36 Int) ) (!  (=> (and (>= i@@36 0) (< i@@36 (seq.len v@@28))) (|$IsValid'address'| (seq.nth v@@28 i@@36)))
 :qid |RecoveryAddresscvc4bpl.2750:13|
 :skolemid |75|
))))
 :qid |RecoveryAddresscvc4bpl.2748:33|
 :skolemid |76|
 :pattern ( (|$IsValid'vec'address''| v@@28))
)))
(assert (forall ((v@@29 (Seq Int)) (e@@11 Int) ) (! (let ((i@@37 (|$IndexOfVec'address'| v@@29 e@@11)))
(ite  (not (exists ((i@@38 Int) ) (!  (and (and (|$IsValid'u64'| i@@38) (and (>= i@@38 0) (< i@@38 (seq.len v@@29)))) (= (seq.nth v@@29 i@@38) e@@11))
 :qid |RecoveryAddresscvc4bpl.2755:13|
 :skolemid |77|
))) (= i@@37 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@37) (and (>= i@@37 0) (< i@@37 (seq.len v@@29)))) (= (seq.nth v@@29 i@@37) e@@11)) (forall ((j@@11 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@11) (>= j@@11 0)) (< j@@11 i@@37)) (not (= (seq.nth v@@29 j@@11) e@@11)))
 :qid |RecoveryAddresscvc4bpl.2763:17|
 :skolemid |78|
)))))
 :qid |RecoveryAddresscvc4bpl.2759:15|
 :skolemid |79|
 :pattern ( (|$IndexOfVec'address'| v@@29 e@@11))
)))
(assert (forall ((v@@30 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@30)  (and (|$IsValid'u64'| (seq.len v@@30)) (forall ((i@@39 Int) ) (!  (=> (and (>= i@@39 0) (< i@@39 (seq.len v@@30))) (|$IsValid'u8'| (seq.nth v@@30 i@@39)))
 :qid |RecoveryAddresscvc4bpl.2930:13|
 :skolemid |80|
))))
 :qid |RecoveryAddresscvc4bpl.2928:28|
 :skolemid |81|
 :pattern ( (|$IsValid'vec'u8''| v@@30))
)))
(assert (forall ((v@@31 (Seq Int)) (e@@12 Int) ) (! (let ((i@@40 (|$IndexOfVec'u8'| v@@31 e@@12)))
(ite  (not (exists ((i@@41 Int) ) (!  (and (and (|$IsValid'u64'| i@@41) (and (>= i@@41 0) (< i@@41 (seq.len v@@31)))) (= (seq.nth v@@31 i@@41) e@@12))
 :qid |RecoveryAddresscvc4bpl.2935:13|
 :skolemid |82|
))) (= i@@40 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@40) (and (>= i@@40 0) (< i@@40 (seq.len v@@31)))) (= (seq.nth v@@31 i@@40) e@@12)) (forall ((j@@12 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@12) (>= j@@12 0)) (< j@@12 i@@40)) (not (= (seq.nth v@@31 j@@12) e@@12)))
 :qid |RecoveryAddresscvc4bpl.2943:17|
 :skolemid |83|
)))))
 :qid |RecoveryAddresscvc4bpl.2939:15|
 :skolemid |84|
 :pattern ( (|$IndexOfVec'u8'| v@@31 e@@12))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |RecoveryAddresscvc4bpl.3116:15|
 :skolemid |85|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |RecoveryAddresscvc4bpl.3132:15|
 :skolemid |86|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |RecoveryAddresscvc4bpl.3199:15|
 :skolemid |87|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |RecoveryAddresscvc4bpl.3202:15|
 :skolemid |88|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (= (|counter#$EventStore| $EmptyEventStore) 0))
(assert (forall ((handle T@$1_Event_EventHandle) ) (! (let ((stream (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) handle)))
 (and (= (|l#Multiset_102809| stream) 0) (forall ((v@@32 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream) v@@32) 0)
 :qid |RecoveryAddresscvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc4bpl.3263:13|
 :skolemid |89|
)))
(assert (forall ((h T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h) true)
 :qid |RecoveryAddresscvc4bpl.3304:80|
 :skolemid |91|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| h))
)))
(assert (forall ((v1@@1 T@$1_AccountFreezing_FreezeAccountEvent) (v2@@1 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (= v1@@1 v2@@1) (= (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1)))
 :qid |RecoveryAddresscvc4bpl.3310:15|
 :skolemid |92|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v1@@1) (|$ToEventRep'$1_AccountFreezing_FreezeAccountEvent'| v2@@1))
)))
(assert (forall ((h@@0 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0) true)
 :qid |RecoveryAddresscvc4bpl.3360:82|
 :skolemid |93|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| h@@0))
)))
(assert (forall ((v1@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) (v2@@2 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (= v1@@2 v2@@2) (= (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2)))
 :qid |RecoveryAddresscvc4bpl.3366:15|
 :skolemid |94|
 :pattern ( (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v1@@2) (|$ToEventRep'$1_AccountFreezing_UnfreezeAccountEvent'| v2@@2))
)))
(assert (forall ((h@@1 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1) true)
 :qid |RecoveryAddresscvc4bpl.3416:80|
 :skolemid |95|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| h@@1))
)))
(assert (forall ((v1@@3 T@$1_DesignatedDealer_ReceivedMintEvent) (v2@@3 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (= v1@@3 v2@@3) (= (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3)))
 :qid |RecoveryAddresscvc4bpl.3422:15|
 :skolemid |96|
 :pattern ( (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v1@@3) (|$ToEventRep'$1_DesignatedDealer_ReceivedMintEvent'| v2@@3))
)))
(assert (forall ((h@@2 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2) true)
 :qid |RecoveryAddresscvc4bpl.3472:79|
 :skolemid |97|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| h@@2))
)))
(assert (forall ((v1@@4 T@$1_DiemAccount_AdminTransactionEvent) (v2@@4 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (= v1@@4 v2@@4) (= (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4)))
 :qid |RecoveryAddresscvc4bpl.3478:15|
 :skolemid |98|
 :pattern ( (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v1@@4) (|$ToEventRep'$1_DiemAccount_AdminTransactionEvent'| v2@@4))
)))
(assert (forall ((h@@3 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3) true)
 :qid |RecoveryAddresscvc4bpl.3528:76|
 :skolemid |99|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| h@@3))
)))
(assert (forall ((v1@@5 T@$1_DiemAccount_CreateAccountEvent) (v2@@5 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (= v1@@5 v2@@5) (= (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5)))
 :qid |RecoveryAddresscvc4bpl.3534:15|
 :skolemid |100|
 :pattern ( (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v1@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| v2@@5))
)))
(assert (forall ((h@@4 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4) true)
 :qid |RecoveryAddresscvc4bpl.3584:78|
 :skolemid |101|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| h@@4))
)))
(assert (forall ((v1@@6 T@$1_DiemAccount_ReceivedPaymentEvent) (v2@@6 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (= v1@@6 v2@@6) (= (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6)))
 :qid |RecoveryAddresscvc4bpl.3590:15|
 :skolemid |102|
 :pattern ( (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v1@@6) (|$ToEventRep'$1_DiemAccount_ReceivedPaymentEvent'| v2@@6))
)))
(assert (forall ((h@@5 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5) true)
 :qid |RecoveryAddresscvc4bpl.3640:74|
 :skolemid |103|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| h@@5))
)))
(assert (forall ((v1@@7 T@$1_DiemAccount_SentPaymentEvent) (v2@@7 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (= v1@@7 v2@@7) (= (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7)))
 :qid |RecoveryAddresscvc4bpl.3646:15|
 :skolemid |104|
 :pattern ( (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v1@@7) (|$ToEventRep'$1_DiemAccount_SentPaymentEvent'| v2@@7))
)))
(assert (forall ((h@@6 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6) true)
 :qid |RecoveryAddresscvc4bpl.3696:69|
 :skolemid |105|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| h@@6))
)))
(assert (forall ((v1@@8 T@$1_DiemBlock_NewBlockEvent) (v2@@8 T@$1_DiemBlock_NewBlockEvent) ) (! (= (= v1@@8 v2@@8) (= (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8)))
 :qid |RecoveryAddresscvc4bpl.3702:15|
 :skolemid |106|
 :pattern ( (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v1@@8) (|$ToEventRep'$1_DiemBlock_NewBlockEvent'| v2@@8))
)))
(assert (forall ((h@@7 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7) true)
 :qid |RecoveryAddresscvc4bpl.3752:70|
 :skolemid |107|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| h@@7))
)))
(assert (forall ((v1@@9 T@$1_DiemConfig_NewEpochEvent) (v2@@9 T@$1_DiemConfig_NewEpochEvent) ) (! (= (= v1@@9 v2@@9) (= (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9)))
 :qid |RecoveryAddresscvc4bpl.3758:15|
 :skolemid |108|
 :pattern ( (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v1@@9) (|$ToEventRep'$1_DiemConfig_NewEpochEvent'| v2@@9))
)))
(assert (forall ((h@@8 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8) true)
 :qid |RecoveryAddresscvc4bpl.3808:60|
 :skolemid |109|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| h@@8))
)))
(assert (forall ((v1@@10 T@$1_Diem_BurnEvent) (v2@@10 T@$1_Diem_BurnEvent) ) (! (= (= v1@@10 v2@@10) (= (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10)))
 :qid |RecoveryAddresscvc4bpl.3814:15|
 :skolemid |110|
 :pattern ( (|$ToEventRep'$1_Diem_BurnEvent'| v1@@10) (|$ToEventRep'$1_Diem_BurnEvent'| v2@@10))
)))
(assert (forall ((h@@9 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9) true)
 :qid |RecoveryAddresscvc4bpl.3864:66|
 :skolemid |111|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| h@@9))
)))
(assert (forall ((v1@@11 T@$1_Diem_CancelBurnEvent) (v2@@11 T@$1_Diem_CancelBurnEvent) ) (! (= (= v1@@11 v2@@11) (= (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11)))
 :qid |RecoveryAddresscvc4bpl.3870:15|
 :skolemid |112|
 :pattern ( (|$ToEventRep'$1_Diem_CancelBurnEvent'| v1@@11) (|$ToEventRep'$1_Diem_CancelBurnEvent'| v2@@11))
)))
(assert (forall ((h@@10 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10) true)
 :qid |RecoveryAddresscvc4bpl.3920:60|
 :skolemid |113|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| h@@10))
)))
(assert (forall ((v1@@12 T@$1_Diem_MintEvent) (v2@@12 T@$1_Diem_MintEvent) ) (! (= (= v1@@12 v2@@12) (= (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12)))
 :qid |RecoveryAddresscvc4bpl.3926:15|
 :skolemid |114|
 :pattern ( (|$ToEventRep'$1_Diem_MintEvent'| v1@@12) (|$ToEventRep'$1_Diem_MintEvent'| v2@@12))
)))
(assert (forall ((h@@11 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11) true)
 :qid |RecoveryAddresscvc4bpl.3976:63|
 :skolemid |115|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| h@@11))
)))
(assert (forall ((v1@@13 T@$1_Diem_PreburnEvent) (v2@@13 T@$1_Diem_PreburnEvent) ) (! (= (= v1@@13 v2@@13) (= (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13)))
 :qid |RecoveryAddresscvc4bpl.3982:15|
 :skolemid |116|
 :pattern ( (|$ToEventRep'$1_Diem_PreburnEvent'| v1@@13) (|$ToEventRep'$1_Diem_PreburnEvent'| v2@@13))
)))
(assert (forall ((h@@12 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12) true)
 :qid |RecoveryAddresscvc4bpl.4032:79|
 :skolemid |117|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| h@@12))
)))
(assert (forall ((v1@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) (v2@@14 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (= v1@@14 v2@@14) (= (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14)))
 :qid |RecoveryAddresscvc4bpl.4038:15|
 :skolemid |118|
 :pattern ( (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v1@@14) (|$ToEventRep'$1_Diem_ToXDXExchangeRateUpdateEvent'| v2@@14))
)))
(assert (forall ((h@@13 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13) true)
 :qid |RecoveryAddresscvc4bpl.4088:82|
 :skolemid |119|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| h@@13))
)))
(assert (forall ((v1@@15 T@$1_DualAttestation_BaseUrlRotationEvent) (v2@@15 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (= v1@@15 v2@@15) (= (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15)))
 :qid |RecoveryAddresscvc4bpl.4094:15|
 :skolemid |120|
 :pattern ( (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v1@@15) (|$ToEventRep'$1_DualAttestation_BaseUrlRotationEvent'| v2@@15))
)))
(assert (forall ((h@@14 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14) true)
 :qid |RecoveryAddresscvc4bpl.4144:88|
 :skolemid |121|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| h@@14))
)))
(assert (forall ((v1@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) (v2@@16 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (= v1@@16 v2@@16) (= (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16)))
 :qid |RecoveryAddresscvc4bpl.4150:15|
 :skolemid |122|
 :pattern ( (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v1@@16) (|$ToEventRep'$1_DualAttestation_ComplianceKeyRotationEvent'| v2@@16))
)))
(assert (forall ((h@@15 T@$1_Event_EventHandle) ) (! (= (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15) true)
 :qid |RecoveryAddresscvc4bpl.4200:72|
 :skolemid |123|
 :pattern ( (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| h@@15))
)))
(assert (forall ((v1@@17 T@$1_VASPDomain_VASPDomainEvent) (v2@@17 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (= v1@@17 v2@@17) (= (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17)))
 :qid |RecoveryAddresscvc4bpl.4206:15|
 :skolemid |124|
 :pattern ( (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v1@@17) (|$ToEventRep'$1_VASPDomain_VASPDomainEvent'| v2@@17))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |RecoveryAddresscvc4bpl.4260:15|
 :skolemid |125|
)))
(assert (forall ((addr Int) ) (! true
 :qid |RecoveryAddresscvc4bpl.4269:15|
 :skolemid |126|
)))
(assert (forall ((s@@0 T@$1_DiemTimestamp_CurrentTimeMicroseconds) ) (! (= (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0) (|$IsValid'u64'| (|$microseconds#$1_DiemTimestamp_CurrentTimeMicroseconds| s@@0)))
 :qid |RecoveryAddresscvc4bpl.4294:61|
 :skolemid |127|
 :pattern ( (|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| s@@0))
)))
(assert (forall ((s@@1 T@$1_Roles_RoleId) ) (! (= (|$IsValid'$1_Roles_RoleId'| s@@1) (|$IsValid'u64'| (|$role_id#$1_Roles_RoleId| s@@1)))
 :qid |RecoveryAddresscvc4bpl.4476:36|
 :skolemid |128|
 :pattern ( (|$IsValid'$1_Roles_RoleId'| s@@1))
)))
(assert (forall ((s@@2 T@$1_ValidatorOperatorConfig_ValidatorOperatorConfig) ) (! (= (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorOperatorConfig_ValidatorOperatorConfig| s@@2)))
 :qid |RecoveryAddresscvc4bpl.5228:71|
 :skolemid |129|
 :pattern ( (|$IsValid'$1_ValidatorOperatorConfig_ValidatorOperatorConfig'| s@@2))
)))
(assert (forall ((s@@3 |T@$1_Option_Option'address'|) ) (! (= (|$IsValid'$1_Option_Option'address''| s@@3) (|$IsValid'vec'address''| (|$vec#$1_Option_Option'address'| s@@3)))
 :qid |RecoveryAddresscvc4bpl.5370:46|
 :skolemid |130|
 :pattern ( (|$IsValid'$1_Option_Option'address''| s@@3))
)))
(assert (forall ((s@@4 |T@$1_Option_Option'$1_ValidatorConfig_Config'|) ) (! (= (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4) (|$IsValid'vec'$1_ValidatorConfig_Config''| (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| s@@4)))
 :qid |RecoveryAddresscvc4bpl.5383:64|
 :skolemid |131|
 :pattern ( (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| s@@4))
)))
(assert (forall ((s@@5 |T@$1_Option_Option'$1_DiemAccount_KeyRotationCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| s@@5)))
 :qid |RecoveryAddresscvc4bpl.5396:75|
 :skolemid |132|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| s@@5))
)))
(assert (forall ((s@@6 |T@$1_Option_Option'$1_DiemAccount_WithdrawCapability'|) ) (! (= (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6) (|$IsValid'vec'$1_DiemAccount_WithdrawCapability''| (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| s@@6)))
 :qid |RecoveryAddresscvc4bpl.5409:72|
 :skolemid |133|
 :pattern ( (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| s@@6))
)))
(assert (forall ((s@@7 T@$1_ValidatorConfig_ValidatorConfig) ) (! (= (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7)  (and (and (|$IsValid'$1_Option_Option'$1_ValidatorConfig_Config''| (|$config#$1_ValidatorConfig_ValidatorConfig| s@@7)) (|$IsValid'$1_Option_Option'address''| (|$operator_account#$1_ValidatorConfig_ValidatorConfig| s@@7))) (|$IsValid'vec'u8''| (|$human_name#$1_ValidatorConfig_ValidatorConfig| s@@7))))
 :qid |RecoveryAddresscvc4bpl.5438:55|
 :skolemid |134|
 :pattern ( (|$IsValid'$1_ValidatorConfig_ValidatorConfig'| s@@7))
)))
(assert (forall ((s@@8 T@$1_ValidatorConfig_Config) ) (! (= (|$IsValid'$1_ValidatorConfig_Config'| s@@8)  (and (and (|$IsValid'vec'u8''| (|$consensus_pubkey#$1_ValidatorConfig_Config| s@@8)) (|$IsValid'vec'u8''| (|$validator_network_addresses#$1_ValidatorConfig_Config| s@@8))) (|$IsValid'vec'u8''| (|$fullnode_network_addresses#$1_ValidatorConfig_Config| s@@8))))
 :qid |RecoveryAddresscvc4bpl.5460:46|
 :skolemid |135|
 :pattern ( (|$IsValid'$1_ValidatorConfig_Config'| s@@8))
)))
(assert (forall ((s@@9 T@$1_SlidingNonce_SlidingNonce) ) (! (= (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9)  (and (|$IsValid'u64'| (|$min_nonce#$1_SlidingNonce_SlidingNonce| s@@9)) (|$IsValid'u128'| (|$nonce_mask#$1_SlidingNonce_SlidingNonce| s@@9))))
 :qid |RecoveryAddresscvc4bpl.5478:49|
 :skolemid |136|
 :pattern ( (|$IsValid'$1_SlidingNonce_SlidingNonce'| s@@9))
)))
(assert (forall ((s@@10 |T@$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10) (|$IsValid'$1_DiemSystem_DiemSystem'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem'| s@@10)))
 :qid |RecoveryAddresscvc4bpl.5553:71|
 :skolemid |137|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemSystem_DiemSystem''| s@@10))
)))
(assert (forall ((s@@11 |T@$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11) (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| (|$payload#$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@11)))
 :qid |RecoveryAddresscvc4bpl.5567:91|
 :skolemid |138|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@11))
)))
(assert (forall ((s@@12 |T@$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12) (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@12)))
 :qid |RecoveryAddresscvc4bpl.5581:113|
 :skolemid |139|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@12))
)))
(assert (forall ((s@@13 |T@$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13) (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig'| s@@13)))
 :qid |RecoveryAddresscvc4bpl.5595:75|
 :skolemid |140|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVMConfig_DiemVMConfig''| s@@13))
)))
(assert (forall ((s@@14 |T@$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14) (|$IsValid'$1_DiemVersion_DiemVersion'| (|$payload#$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion'| s@@14)))
 :qid |RecoveryAddresscvc4bpl.5609:73|
 :skolemid |141|
 :pattern ( (|$IsValid'$1_DiemConfig_DiemConfig'$1_DiemVersion_DiemVersion''| s@@14))
)))
(assert (forall ((s@@15 T@$1_DiemConfig_Configuration) ) (! (= (|$IsValid'$1_DiemConfig_Configuration'| s@@15)  (and (and (|$IsValid'u64'| (|$epoch#$1_DiemConfig_Configuration| s@@15)) (|$IsValid'u64'| (|$last_reconfiguration_time#$1_DiemConfig_Configuration| s@@15))) (|$IsValid'$1_Event_EventHandle'$1_DiemConfig_NewEpochEvent''| (|$events#$1_DiemConfig_Configuration| s@@15))))
 :qid |RecoveryAddresscvc4bpl.5629:48|
 :skolemid |142|
 :pattern ( (|$IsValid'$1_DiemConfig_Configuration'| s@@15))
)))
(assert (forall ((s@@16 T@$1_DiemConfig_DisableReconfiguration) ) (! (= (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16) true)
 :qid |RecoveryAddresscvc4bpl.5645:57|
 :skolemid |143|
 :pattern ( (|$IsValid'$1_DiemConfig_DisableReconfiguration'| s@@16))
)))
(assert (forall ((s@@17 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17) true)
 :qid |RecoveryAddresscvc4bpl.5659:83|
 :skolemid |144|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| s@@17))
)))
(assert (forall ((s@@18 |T@$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18) true)
 :qid |RecoveryAddresscvc4bpl.5673:103|
 :skolemid |145|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_RegisteredCurrencies_RegisteredCurrencies''| s@@18))
)))
(assert (forall ((s@@19 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19) true)
 :qid |RecoveryAddresscvc4bpl.5687:125|
 :skolemid |146|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption''| s@@19))
)))
(assert (forall ((s@@20 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20) true)
 :qid |RecoveryAddresscvc4bpl.5701:87|
 :skolemid |147|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVMConfig_DiemVMConfig''| s@@20))
)))
(assert (forall ((s@@21 |T@$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion'|) ) (! (= (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21) true)
 :qid |RecoveryAddresscvc4bpl.5715:85|
 :skolemid |148|
 :pattern ( (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemVersion_DiemVersion''| s@@21))
)))
(assert (forall ((s@@22 T@$1_DiemConfig_NewEpochEvent) ) (! (= (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22) (|$IsValid'u64'| (|$epoch#$1_DiemConfig_NewEpochEvent| s@@22)))
 :qid |RecoveryAddresscvc4bpl.5729:48|
 :skolemid |149|
 :pattern ( (|$IsValid'$1_DiemConfig_NewEpochEvent'| s@@22))
)))
(assert (forall ((s@@23 T@$1_DiemSystem_DiemSystem) ) (! (= (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23)  (and (|$IsValid'u8'| (|$scheme#$1_DiemSystem_DiemSystem| s@@23)) (|$IsValid'vec'$1_DiemSystem_ValidatorInfo''| (|$validators#$1_DiemSystem_DiemSystem| s@@23))))
 :qid |RecoveryAddresscvc4bpl.5750:45|
 :skolemid |150|
 :pattern ( (|$IsValid'$1_DiemSystem_DiemSystem'| s@@23))
)))
(assert (forall ((s@@24 T@$1_DiemSystem_CapabilityHolder) ) (! (= (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24) (|$IsValid'$1_DiemConfig_ModifyConfigCapability'$1_DiemSystem_DiemSystem''| (|$cap#$1_DiemSystem_CapabilityHolder| s@@24)))
 :qid |RecoveryAddresscvc4bpl.5764:51|
 :skolemid |151|
 :pattern ( (|$IsValid'$1_DiemSystem_CapabilityHolder'| s@@24))
)))
(assert (forall ((s@@25 T@$1_DiemSystem_ValidatorInfo) ) (! (= (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25)  (and (and (and (|$IsValid'address'| (|$addr#$1_DiemSystem_ValidatorInfo| s@@25)) (|$IsValid'u64'| (|$consensus_voting_power#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'$1_ValidatorConfig_Config'| (|$config#$1_DiemSystem_ValidatorInfo| s@@25))) (|$IsValid'u64'| (|$last_config_update_time#$1_DiemSystem_ValidatorInfo| s@@25))))
 :qid |RecoveryAddresscvc4bpl.5787:48|
 :skolemid |152|
 :pattern ( (|$IsValid'$1_DiemSystem_ValidatorInfo'| s@@25))
)))
(assert (forall ((s@@26 T@$1_FixedPoint32_FixedPoint32) ) (! (= (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26) (|$IsValid'u64'| (|$value#$1_FixedPoint32_FixedPoint32| s@@26)))
 :qid |RecoveryAddresscvc4bpl.6093:49|
 :skolemid |153|
 :pattern ( (|$IsValid'$1_FixedPoint32_FixedPoint32'| s@@26))
)))
(assert (forall ((s@@27 T@$1_RegisteredCurrencies_RegisteredCurrencies) ) (! (= (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27) (|$IsValid'vec'vec'u8'''| (|$currency_codes#$1_RegisteredCurrencies_RegisteredCurrencies| s@@27)))
 :qid |RecoveryAddresscvc4bpl.6106:65|
 :skolemid |154|
 :pattern ( (|$IsValid'$1_RegisteredCurrencies_RegisteredCurrencies'| s@@27))
)))
(assert (forall ((s@@28 |T@$1_Diem_Diem'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XUS_XUS'| s@@28)))
 :qid |RecoveryAddresscvc4bpl.6615:45|
 :skolemid |155|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| s@@28))
)))
(assert (forall ((s@@29 |T@$1_Diem_Diem'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29) (|$IsValid'u64'| (|$value#$1_Diem_Diem'$1_XDX_XDX'| s@@29)))
 :qid |RecoveryAddresscvc4bpl.6628:45|
 :skolemid |156|
 :pattern ( (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| s@@29))
)))
(assert (forall ((s@@30 |T@$1_Diem_Diem'#0'|) ) (! (= (|$IsValid'$1_Diem_Diem'#0''| s@@30) (|$IsValid'u64'| (|$value#$1_Diem_Diem'#0'| s@@30)))
 :qid |RecoveryAddresscvc4bpl.6641:37|
 :skolemid |157|
 :pattern ( (|$IsValid'$1_Diem_Diem'#0''| s@@30))
)))
(assert (forall ((s@@31 |T@$1_Diem_BurnCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31) true)
 :qid |RecoveryAddresscvc4bpl.6654:55|
 :skolemid |158|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XUS_XUS''| s@@31))
)))
(assert (forall ((s@@32 |T@$1_Diem_BurnCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32) true)
 :qid |RecoveryAddresscvc4bpl.6668:55|
 :skolemid |159|
 :pattern ( (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| s@@32))
)))
(assert (forall ((s@@33 T@$1_Diem_BurnEvent) ) (! (= (|$IsValid'$1_Diem_BurnEvent'| s@@33)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_BurnEvent| s@@33)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_BurnEvent| s@@33))) (|$IsValid'address'| (|$preburn_address#$1_Diem_BurnEvent| s@@33))))
 :qid |RecoveryAddresscvc4bpl.6688:38|
 :skolemid |160|
 :pattern ( (|$IsValid'$1_Diem_BurnEvent'| s@@33))
)))
(assert (forall ((s@@34 T@$1_Diem_CancelBurnEvent) ) (! (= (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_CancelBurnEvent| s@@34)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CancelBurnEvent| s@@34))) (|$IsValid'address'| (|$preburn_address#$1_Diem_CancelBurnEvent| s@@34))))
 :qid |RecoveryAddresscvc4bpl.6709:44|
 :skolemid |161|
 :pattern ( (|$IsValid'$1_Diem_CancelBurnEvent'| s@@34))
)))
(assert (forall ((s@@35 |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XUS_XUS'| s@@35))))
 :qid |RecoveryAddresscvc4bpl.6760:53|
 :skolemid |162|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| s@@35))
)))
(assert (forall ((s@@36 |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'$1_XDX_XDX'| s@@36))))
 :qid |RecoveryAddresscvc4bpl.6822:53|
 :skolemid |163|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| s@@36))
)))
(assert (forall ((s@@37 |T@$1_Diem_CurrencyInfo'#0'|) ) (! (= (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37)  (and (and (and (and (and (and (and (and (and (and (and (and (|$IsValid'u128'| (|$total_value#$1_Diem_CurrencyInfo'#0'| s@@37)) (|$IsValid'u64'| (|$preburn_value#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_FixedPoint32_FixedPoint32'| (|$to_xdx_exchange_rate#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'u64'| (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'u64'| (|$fractional_part#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_CurrencyInfo'#0'| s@@37))) true) (|$IsValid'$1_Event_EventHandle'$1_Diem_MintEvent''| (|$mint_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_BurnEvent''| (|$burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_PreburnEvent''| (|$preburn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_CancelBurnEvent''| (|$cancel_burn_events#$1_Diem_CurrencyInfo'#0'| s@@37))) (|$IsValid'$1_Event_EventHandle'$1_Diem_ToXDXExchangeRateUpdateEvent''| (|$exchange_rate_update_events#$1_Diem_CurrencyInfo'#0'| s@@37))))
 :qid |RecoveryAddresscvc4bpl.6884:45|
 :skolemid |164|
 :pattern ( (|$IsValid'$1_Diem_CurrencyInfo'#0''| s@@37))
)))
(assert (forall ((s@@38 |T@$1_Diem_MintCapability'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38) true)
 :qid |RecoveryAddresscvc4bpl.6910:55|
 :skolemid |165|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XUS_XUS''| s@@38))
)))
(assert (forall ((s@@39 |T@$1_Diem_MintCapability'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39) true)
 :qid |RecoveryAddresscvc4bpl.6924:55|
 :skolemid |166|
 :pattern ( (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| s@@39))
)))
(assert (forall ((s@@40 T@$1_Diem_MintEvent) ) (! (= (|$IsValid'$1_Diem_MintEvent'| s@@40)  (and (|$IsValid'u64'| (|$amount#$1_Diem_MintEvent| s@@40)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_MintEvent| s@@40))))
 :qid |RecoveryAddresscvc4bpl.6941:38|
 :skolemid |167|
 :pattern ( (|$IsValid'$1_Diem_MintEvent'| s@@40))
)))
(assert (forall ((s@@41 |T@$1_Diem_Preburn'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$to_burn#$1_Diem_Preburn'$1_XUS_XUS'| s@@41)))
 :qid |RecoveryAddresscvc4bpl.6955:48|
 :skolemid |168|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| s@@41))
)))
(assert (forall ((s@@42 |T@$1_Diem_Preburn'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$to_burn#$1_Diem_Preburn'$1_XDX_XDX'| s@@42)))
 :qid |RecoveryAddresscvc4bpl.6969:48|
 :skolemid |169|
 :pattern ( (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| s@@42))
)))
(assert (forall ((s@@43 |T@$1_Diem_Preburn'#0'|) ) (! (= (|$IsValid'$1_Diem_Preburn'#0''| s@@43) (|$IsValid'$1_Diem_Diem'#0''| (|$to_burn#$1_Diem_Preburn'#0'| s@@43)))
 :qid |RecoveryAddresscvc4bpl.6983:40|
 :skolemid |170|
 :pattern ( (|$IsValid'$1_Diem_Preburn'#0''| s@@43))
)))
(assert (forall ((s@@44 T@$1_Diem_PreburnEvent) ) (! (= (|$IsValid'$1_Diem_PreburnEvent'| s@@44)  (and (and (|$IsValid'u64'| (|$amount#$1_Diem_PreburnEvent| s@@44)) (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_PreburnEvent| s@@44))) (|$IsValid'address'| (|$preburn_address#$1_Diem_PreburnEvent| s@@44))))
 :qid |RecoveryAddresscvc4bpl.7003:41|
 :skolemid |171|
 :pattern ( (|$IsValid'$1_Diem_PreburnEvent'| s@@44))
)))
(assert (forall ((s@@45 |T@$1_Diem_PreburnQueue'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XUS_XUS'''| (|$preburns#$1_Diem_PreburnQueue'$1_XUS_XUS'| s@@45)))
 :qid |RecoveryAddresscvc4bpl.7018:53|
 :skolemid |172|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XUS_XUS''| s@@45))
)))
(assert (forall ((s@@46 |T@$1_Diem_PreburnQueue'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'$1_XDX_XDX'''| (|$preburns#$1_Diem_PreburnQueue'$1_XDX_XDX'| s@@46)))
 :qid |RecoveryAddresscvc4bpl.7032:53|
 :skolemid |173|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'$1_XDX_XDX''| s@@46))
)))
(assert (forall ((s@@47 |T@$1_Diem_PreburnQueue'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47) (|$IsValid'vec'$1_Diem_PreburnWithMetadata'#0'''| (|$preburns#$1_Diem_PreburnQueue'#0'| s@@47)))
 :qid |RecoveryAddresscvc4bpl.7046:45|
 :skolemid |174|
 :pattern ( (|$IsValid'$1_Diem_PreburnQueue'#0''| s@@47))
)))
(assert (forall ((s@@48 |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48)  (and (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XUS_XUS'| s@@48))))
 :qid |RecoveryAddresscvc4bpl.7063:60|
 :skolemid |175|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XUS_XUS''| s@@48))
)))
(assert (forall ((s@@49 |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49)  (and (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'$1_XDX_XDX'| s@@49))))
 :qid |RecoveryAddresscvc4bpl.7080:60|
 :skolemid |176|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'$1_XDX_XDX''| s@@49))
)))
(assert (forall ((s@@50 |T@$1_Diem_PreburnWithMetadata'#0'|) ) (! (= (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50)  (and (|$IsValid'$1_Diem_Preburn'#0''| (|$preburn#$1_Diem_PreburnWithMetadata'#0'| s@@50)) (|$IsValid'vec'u8''| (|$metadata#$1_Diem_PreburnWithMetadata'#0'| s@@50))))
 :qid |RecoveryAddresscvc4bpl.7097:52|
 :skolemid |177|
 :pattern ( (|$IsValid'$1_Diem_PreburnWithMetadata'#0''| s@@50))
)))
(assert (forall ((s@@51 T@$1_Diem_ToXDXExchangeRateUpdateEvent) ) (! (= (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51)  (and (|$IsValid'vec'u8''| (|$currency_code#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51)) (|$IsValid'u64'| (|$new_to_xdx_exchange_rate#$1_Diem_ToXDXExchangeRateUpdateEvent| s@@51))))
 :qid |RecoveryAddresscvc4bpl.7114:57|
 :skolemid |178|
 :pattern ( (|$IsValid'$1_Diem_ToXDXExchangeRateUpdateEvent'| s@@51))
)))
(assert (forall ((s@@52 T@$1_AccountLimits_AccountLimitMutationCapability) ) (! (= (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52) true)
 :qid |RecoveryAddresscvc4bpl.9385:68|
 :skolemid |179|
 :pattern ( (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| s@@52))
)))
(assert (forall ((s@@53 |T@$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XUS_XUS'| s@@53))))
 :qid |RecoveryAddresscvc4bpl.9407:66|
 :skolemid |180|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XUS_XUS''| s@@53))
)))
(assert (forall ((s@@54 |T@$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54)  (and (and (and (|$IsValid'u64'| (|$max_inflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54)) (|$IsValid'u64'| (|$max_outflow#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$time_period#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))) (|$IsValid'u64'| (|$max_holding#$1_AccountLimits_LimitsDefinition'$1_XDX_XDX'| s@@54))))
 :qid |RecoveryAddresscvc4bpl.9433:66|
 :skolemid |181|
 :pattern ( (|$IsValid'$1_AccountLimits_LimitsDefinition'$1_XDX_XDX''| s@@54))
)))
(assert (forall ((s@@55 |T@$1_AccountLimits_Window'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XUS_XUS'| s@@55))))
 :qid |RecoveryAddresscvc4bpl.9462:56|
 :skolemid |182|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XUS_XUS''| s@@55))
)))
(assert (forall ((s@@56 |T@$1_AccountLimits_Window'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56)  (and (and (and (and (|$IsValid'u64'| (|$window_start#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56)) (|$IsValid'u64'| (|$window_inflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$window_outflow#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'u64'| (|$tracked_balance#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))) (|$IsValid'address'| (|$limit_address#$1_AccountLimits_Window'$1_XDX_XDX'| s@@56))))
 :qid |RecoveryAddresscvc4bpl.9492:56|
 :skolemid |183|
 :pattern ( (|$IsValid'$1_AccountLimits_Window'$1_XDX_XDX''| s@@56))
)))
(assert (forall ((s@@57 T@$1_XUS_XUS) ) (! (= (|$IsValid'$1_XUS_XUS'| s@@57) true)
 :qid |RecoveryAddresscvc4bpl.9826:31|
 :skolemid |184|
 :pattern ( (|$IsValid'$1_XUS_XUS'| s@@57))
)))
(assert (forall ((s@@58 T@$1_XDX_XDX) ) (! (= (|$IsValid'$1_XDX_XDX'| s@@58) true)
 :qid |RecoveryAddresscvc4bpl.10170:31|
 :skolemid |185|
 :pattern ( (|$IsValid'$1_XDX_XDX'| s@@58))
)))
(assert (forall ((s@@59 T@$1_XDX_Reserve) ) (! (= (|$IsValid'$1_XDX_Reserve'| s@@59)  (and (and (|$IsValid'$1_Diem_MintCapability'$1_XDX_XDX''| (|$mint_cap#$1_XDX_Reserve| s@@59)) (|$IsValid'$1_Diem_BurnCapability'$1_XDX_XDX''| (|$burn_cap#$1_XDX_Reserve| s@@59))) (|$IsValid'$1_Diem_Preburn'$1_XDX_XDX''| (|$preburn_cap#$1_XDX_Reserve| s@@59))))
 :qid |RecoveryAddresscvc4bpl.10189:35|
 :skolemid |186|
 :pattern ( (|$IsValid'$1_XDX_Reserve'| s@@59))
)))
(assert (forall ((s@@60 T@$1_VASPDomain_VASPDomain) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60) (|$IsValid'vec'u8''| (|$domain#$1_VASPDomain_VASPDomain| s@@60)))
 :qid |RecoveryAddresscvc4bpl.10615:45|
 :skolemid |187|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomain'| s@@60))
)))
(assert (forall ((s@@61 T@$1_VASPDomain_VASPDomainEvent) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61)  (and (and true (|$IsValid'$1_VASPDomain_VASPDomain'| (|$domain#$1_VASPDomain_VASPDomainEvent| s@@61))) (|$IsValid'address'| (|$address#$1_VASPDomain_VASPDomainEvent| s@@61))))
 :qid |RecoveryAddresscvc4bpl.10634:50|
 :skolemid |188|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainEvent'| s@@61))
)))
(assert (forall ((s@@62 T@$1_VASPDomain_VASPDomainManager) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62) (|$IsValid'$1_Event_EventHandle'$1_VASPDomain_VASPDomainEvent''| (|$vasp_domain_events#$1_VASPDomain_VASPDomainManager| s@@62)))
 :qid |RecoveryAddresscvc4bpl.10649:52|
 :skolemid |189|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomainManager'| s@@62))
)))
(assert (forall ((s@@63 T@$1_VASPDomain_VASPDomains) ) (! (= (|$IsValid'$1_VASPDomain_VASPDomains'| s@@63) (|$IsValid'vec'$1_VASPDomain_VASPDomain''| (|$domains#$1_VASPDomain_VASPDomains| s@@63)))
 :qid |RecoveryAddresscvc4bpl.10663:46|
 :skolemid |190|
 :pattern ( (|$IsValid'$1_VASPDomain_VASPDomains'| s@@63))
)))
(assert (forall ((s@@64 T@$1_VASP_ChildVASP) ) (! (= (|$IsValid'$1_VASP_ChildVASP'| s@@64) (|$IsValid'address'| (|$parent_vasp_addr#$1_VASP_ChildVASP| s@@64)))
 :qid |RecoveryAddresscvc4bpl.10890:38|
 :skolemid |191|
 :pattern ( (|$IsValid'$1_VASP_ChildVASP'| s@@64))
)))
(assert (forall ((s@@65 T@$1_VASP_ParentVASP) ) (! (= (|$IsValid'$1_VASP_ParentVASP'| s@@65) (|$IsValid'u64'| (|$num_children#$1_VASP_ParentVASP| s@@65)))
 :qid |RecoveryAddresscvc4bpl.10904:39|
 :skolemid |192|
 :pattern ( (|$IsValid'$1_VASP_ParentVASP'| s@@65))
)))
(assert (forall ((s@@66 |T@$1_TransactionFee_TransactionFee'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66)  (and (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$balance#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66)) (|$IsValid'$1_Diem_Preburn'$1_XUS_XUS''| (|$preburn#$1_TransactionFee_TransactionFee'$1_XUS_XUS'| s@@66))))
 :qid |RecoveryAddresscvc4bpl.12604:65|
 :skolemid |210|
 :pattern ( (|$IsValid'$1_TransactionFee_TransactionFee'$1_XUS_XUS''| s@@66))
)))
(assert (forall ((s@@67 T@$1_DualAttestation_BaseUrlRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67)  (and (|$IsValid'vec'u8''| (|$new_base_url#$1_DualAttestation_BaseUrlRotationEvent| s@@67)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_BaseUrlRotationEvent| s@@67))))
 :qid |RecoveryAddresscvc4bpl.12989:60|
 :skolemid |211|
 :pattern ( (|$IsValid'$1_DualAttestation_BaseUrlRotationEvent'| s@@67))
)))
(assert (forall ((s@@68 T@$1_DualAttestation_ComplianceKeyRotationEvent) ) (! (= (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68)  (and (|$IsValid'vec'u8''| (|$new_compliance_public_key#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68)) (|$IsValid'u64'| (|$time_rotated_seconds#$1_DualAttestation_ComplianceKeyRotationEvent| s@@68))))
 :qid |RecoveryAddresscvc4bpl.13006:66|
 :skolemid |212|
 :pattern ( (|$IsValid'$1_DualAttestation_ComplianceKeyRotationEvent'| s@@68))
)))
(assert (forall ((s@@69 T@$1_DualAttestation_Credential) ) (! (= (|$IsValid'$1_DualAttestation_Credential'| s@@69)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$human_name#$1_DualAttestation_Credential| s@@69)) (|$IsValid'vec'u8''| (|$base_url#$1_DualAttestation_Credential| s@@69))) (|$IsValid'vec'u8''| (|$compliance_public_key#$1_DualAttestation_Credential| s@@69))) (|$IsValid'u64'| (|$expiration_date#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_ComplianceKeyRotationEvent''| (|$compliance_key_rotation_events#$1_DualAttestation_Credential| s@@69))) (|$IsValid'$1_Event_EventHandle'$1_DualAttestation_BaseUrlRotationEvent''| (|$base_url_rotation_events#$1_DualAttestation_Credential| s@@69))))
 :qid |RecoveryAddresscvc4bpl.13035:50|
 :skolemid |213|
 :pattern ( (|$IsValid'$1_DualAttestation_Credential'| s@@69))
)))
(assert (forall ((s@@70 T@$1_DualAttestation_Limit) ) (! (= (|$IsValid'$1_DualAttestation_Limit'| s@@70) (|$IsValid'u64'| (|$micro_xdx_limit#$1_DualAttestation_Limit| s@@70)))
 :qid |RecoveryAddresscvc4bpl.13054:45|
 :skolemid |214|
 :pattern ( (|$IsValid'$1_DualAttestation_Limit'| s@@70))
)))
(assert (forall ((s@@71 T@$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption) ) (! (= (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71)  (and (|$IsValid'vec'vec'u8'''| (|$script_allow_list#$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption| s@@71)) true))
 :qid |RecoveryAddresscvc4bpl.13663:87|
 :skolemid |215|
 :pattern ( (|$IsValid'$1_DiemTransactionPublishingOption_DiemTransactionPublishingOption'| s@@71))
)))
(assert (forall ((s@@72 T@$1_DesignatedDealer_Dealer) ) (! (= (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72) (|$IsValid'$1_Event_EventHandle'$1_DesignatedDealer_ReceivedMintEvent''| (|$mint_event_handle#$1_DesignatedDealer_Dealer| s@@72)))
 :qid |RecoveryAddresscvc4bpl.13875:47|
 :skolemid |216|
 :pattern ( (|$IsValid'$1_DesignatedDealer_Dealer'| s@@72))
)))
(assert (forall ((s@@73 T@$1_DesignatedDealer_ReceivedMintEvent) ) (! (= (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73)  (and (and (|$IsValid'vec'u8''| (|$currency_code#$1_DesignatedDealer_ReceivedMintEvent| s@@73)) (|$IsValid'address'| (|$destination_address#$1_DesignatedDealer_ReceivedMintEvent| s@@73))) (|$IsValid'u64'| (|$amount#$1_DesignatedDealer_ReceivedMintEvent| s@@73))))
 :qid |RecoveryAddresscvc4bpl.13895:58|
 :skolemid |217|
 :pattern ( (|$IsValid'$1_DesignatedDealer_ReceivedMintEvent'| s@@73))
)))
(assert (forall ((s@@74 T@$1_ChainId_ChainId) ) (! (= (|$IsValid'$1_ChainId_ChainId'| s@@74) (|$IsValid'u8'| (|$id#$1_ChainId_ChainId| s@@74)))
 :qid |RecoveryAddresscvc4bpl.13910:39|
 :skolemid |218|
 :pattern ( (|$IsValid'$1_ChainId_ChainId'| s@@74))
)))
(assert (forall ((s@@75 T@$1_AccountFreezing_FreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@75)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_FreezeAccountEvent| s@@75)) (|$IsValid'address'| (|$frozen_address#$1_AccountFreezing_FreezeAccountEvent| s@@75))))
 :qid |RecoveryAddresscvc4bpl.13932:58|
 :skolemid |219|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeAccountEvent'| s@@75))
)))
(assert (forall ((s@@76 T@$1_AccountFreezing_FreezeEventsHolder) ) (! (= (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@76)  (and (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_FreezeAccountEvent''| (|$freeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@76)) (|$IsValid'$1_Event_EventHandle'$1_AccountFreezing_UnfreezeAccountEvent''| (|$unfreeze_event_handle#$1_AccountFreezing_FreezeEventsHolder| s@@76))))
 :qid |RecoveryAddresscvc4bpl.13949:58|
 :skolemid |220|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezeEventsHolder'| s@@76))
)))
(assert (forall ((s@@77 T@$1_AccountFreezing_FreezingBit) ) (! (= (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@77) true)
 :qid |RecoveryAddresscvc4bpl.13964:51|
 :skolemid |221|
 :pattern ( (|$IsValid'$1_AccountFreezing_FreezingBit'| s@@77))
)))
(assert (forall ((s@@78 T@$1_AccountFreezing_UnfreezeAccountEvent) ) (! (= (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@78)  (and (|$IsValid'address'| (|$initiator_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@78)) (|$IsValid'address'| (|$unfrozen_address#$1_AccountFreezing_UnfreezeAccountEvent| s@@78))))
 :qid |RecoveryAddresscvc4bpl.13981:60|
 :skolemid |222|
 :pattern ( (|$IsValid'$1_AccountFreezing_UnfreezeAccountEvent'| s@@78))
)))
(assert (forall ((s@@79 T@$1_DiemAccount_DiemAccount) ) (! (= (|$IsValid'$1_DiemAccount_DiemAccount'| s@@79)  (and (and (and (and (and (|$IsValid'vec'u8''| (|$authentication_key#$1_DiemAccount_DiemAccount| s@@79)) (|$IsValid'$1_Option_Option'$1_DiemAccount_WithdrawCapability''| (|$withdraw_capability#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Option_Option'$1_DiemAccount_KeyRotationCapability''| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_ReceivedPaymentEvent''| (|$received_events#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_SentPaymentEvent''| (|$sent_events#$1_DiemAccount_DiemAccount| s@@79))) (|$IsValid'u64'| (|$sequence_number#$1_DiemAccount_DiemAccount| s@@79))))
 :qid |RecoveryAddresscvc4bpl.14289:47|
 :skolemid |223|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemAccount'| s@@79))
)))
(assert (forall ((s@@80 T@$1_DiemAccount_AccountOperationsCapability) ) (! (= (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@80)  (and (|$IsValid'$1_AccountLimits_AccountLimitMutationCapability'| (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| s@@80)) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_CreateAccountEvent''| (|$creation_events#$1_DiemAccount_AccountOperationsCapability| s@@80))))
 :qid |RecoveryAddresscvc4bpl.14311:63|
 :skolemid |224|
 :pattern ( (|$IsValid'$1_DiemAccount_AccountOperationsCapability'| s@@80))
)))
(assert (forall ((s@@81 T@$1_DiemAccount_AdminTransactionEvent) ) (! (= (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@81) (|$IsValid'u64'| (|$committed_timestamp_secs#$1_DiemAccount_AdminTransactionEvent| s@@81)))
 :qid |RecoveryAddresscvc4bpl.14326:57|
 :skolemid |225|
 :pattern ( (|$IsValid'$1_DiemAccount_AdminTransactionEvent'| s@@81))
)))
(assert (forall ((s@@82 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@82) (|$IsValid'$1_Diem_Diem'$1_XUS_XUS''| (|$coin#$1_DiemAccount_Balance'$1_XUS_XUS'| s@@82)))
 :qid |RecoveryAddresscvc4bpl.14339:55|
 :skolemid |226|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| s@@82))
)))
(assert (forall ((s@@83 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@83) (|$IsValid'$1_Diem_Diem'$1_XDX_XDX''| (|$coin#$1_DiemAccount_Balance'$1_XDX_XDX'| s@@83)))
 :qid |RecoveryAddresscvc4bpl.14353:55|
 :skolemid |227|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| s@@83))
)))
(assert (forall ((s@@84 |T@$1_DiemAccount_Balance'#0'|) ) (! (= (|$IsValid'$1_DiemAccount_Balance'#0''| s@@84) (|$IsValid'$1_Diem_Diem'#0''| (|$coin#$1_DiemAccount_Balance'#0'| s@@84)))
 :qid |RecoveryAddresscvc4bpl.14367:47|
 :skolemid |228|
 :pattern ( (|$IsValid'$1_DiemAccount_Balance'#0''| s@@84))
)))
(assert (forall ((s@@85 T@$1_DiemAccount_CreateAccountEvent) ) (! (= (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85)  (and (|$IsValid'address'| (|$created#$1_DiemAccount_CreateAccountEvent| s@@85)) (|$IsValid'u64'| (|$role_id#$1_DiemAccount_CreateAccountEvent| s@@85))))
 :qid |RecoveryAddresscvc4bpl.14384:54|
 :skolemid |229|
 :pattern ( (|$IsValid'$1_DiemAccount_CreateAccountEvent'| s@@85))
)))
(assert (forall ((s@@86 T@$1_DiemAccount_DiemWriteSetManager) ) (! (= (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86) (|$IsValid'$1_Event_EventHandle'$1_DiemAccount_AdminTransactionEvent''| (|$upgrade_events#$1_DiemAccount_DiemWriteSetManager| s@@86)))
 :qid |RecoveryAddresscvc4bpl.14398:55|
 :skolemid |230|
 :pattern ( (|$IsValid'$1_DiemAccount_DiemWriteSetManager'| s@@86))
)))
(assert (forall ((s@@87 T@$1_DiemAccount_KeyRotationCapability) ) (! (= (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87) (|$IsValid'address'| (|$account_address#$1_DiemAccount_KeyRotationCapability| s@@87)))
 :qid |RecoveryAddresscvc4bpl.14412:57|
 :skolemid |231|
 :pattern ( (|$IsValid'$1_DiemAccount_KeyRotationCapability'| s@@87))
)))
(assert (forall ((s@@88 T@$1_DiemAccount_ReceivedPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_ReceivedPaymentEvent| s@@88)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'address'| (|$payer#$1_DiemAccount_ReceivedPaymentEvent| s@@88))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_ReceivedPaymentEvent| s@@88))))
 :qid |RecoveryAddresscvc4bpl.14434:56|
 :skolemid |232|
 :pattern ( (|$IsValid'$1_DiemAccount_ReceivedPaymentEvent'| s@@88))
)))
(assert (forall ((s@@89 T@$1_DiemAccount_SentPaymentEvent) ) (! (= (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89)  (and (and (and (|$IsValid'u64'| (|$amount#$1_DiemAccount_SentPaymentEvent| s@@89)) (|$IsValid'vec'u8''| (|$currency_code#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'address'| (|$payee#$1_DiemAccount_SentPaymentEvent| s@@89))) (|$IsValid'vec'u8''| (|$metadata#$1_DiemAccount_SentPaymentEvent| s@@89))))
 :qid |RecoveryAddresscvc4bpl.14459:52|
 :skolemid |233|
 :pattern ( (|$IsValid'$1_DiemAccount_SentPaymentEvent'| s@@89))
)))
(assert (forall ((s@@90 T@$1_DiemAccount_WithdrawCapability) ) (! (= (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90) (|$IsValid'address'| (|$account_address#$1_DiemAccount_WithdrawCapability| s@@90)))
 :qid |RecoveryAddresscvc4bpl.14475:54|
 :skolemid |234|
 :pattern ( (|$IsValid'$1_DiemAccount_WithdrawCapability'| s@@90))
)))
(assert (forall ((s@@91 T@$1_RecoveryAddress_RecoveryAddress) ) (! (= (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@91) (|$IsValid'vec'$1_DiemAccount_KeyRotationCapability''| (|$rotation_caps#$1_RecoveryAddress_RecoveryAddress| s@@91)))
 :qid |RecoveryAddresscvc4bpl.21644:55|
 :skolemid |545|
 :pattern ( (|$IsValid'$1_RecoveryAddress_RecoveryAddress'| s@@91))
)))
(assert (forall ((s@@92 T@$1_DiemBlock_BlockMetadata) ) (! (= (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@92)  (and (|$IsValid'u64'| (|$height#$1_DiemBlock_BlockMetadata| s@@92)) (|$IsValid'$1_Event_EventHandle'$1_DiemBlock_NewBlockEvent''| (|$new_block_events#$1_DiemBlock_BlockMetadata| s@@92))))
 :qid |RecoveryAddresscvc4bpl.23096:47|
 :skolemid |586|
 :pattern ( (|$IsValid'$1_DiemBlock_BlockMetadata'| s@@92))
)))
(assert (forall ((s@@93 T@$1_DiemBlock_NewBlockEvent) ) (! (= (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@93)  (and (and (and (|$IsValid'u64'| (|$round#$1_DiemBlock_NewBlockEvent| s@@93)) (|$IsValid'address'| (|$proposer#$1_DiemBlock_NewBlockEvent| s@@93))) (|$IsValid'vec'address''| (|$previous_block_votes#$1_DiemBlock_NewBlockEvent| s@@93))) (|$IsValid'u64'| (|$time_microseconds#$1_DiemBlock_NewBlockEvent| s@@93))))
 :qid |RecoveryAddresscvc4bpl.23120:47|
 :skolemid |587|
 :pattern ( (|$IsValid'$1_DiemBlock_NewBlockEvent'| s@@93))
)))
(assert (forall ((s@@94 T@$1_DiemVMConfig_DiemVMConfig) ) (! (= (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94) (|$IsValid'$1_DiemVMConfig_GasSchedule'| (|$gas_schedule#$1_DiemVMConfig_DiemVMConfig| s@@94)))
 :qid |RecoveryAddresscvc4bpl.23361:49|
 :skolemid |588|
 :pattern ( (|$IsValid'$1_DiemVMConfig_DiemVMConfig'| s@@94))
)))
(assert (forall ((s@@95 T@$1_DiemVMConfig_GasConstants) ) (! (= (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95)  (and (and (and (and (and (and (and (and (and (and (|$IsValid'u64'| (|$global_memory_per_byte_cost#$1_DiemVMConfig_GasConstants| s@@95)) (|$IsValid'u64'| (|$global_memory_per_byte_write_cost#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_transaction_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$large_transaction_cutoff#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$intrinsic_gas_per_byte#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$maximum_number_of_gas_units#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$min_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_price_per_gas_unit#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$max_transaction_size_in_bytes#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$gas_unit_scaling_factor#$1_DiemVMConfig_GasConstants| s@@95))) (|$IsValid'u64'| (|$default_account_size#$1_DiemVMConfig_GasConstants| s@@95))))
 :qid |RecoveryAddresscvc4bpl.23404:49|
 :skolemid |589|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasConstants'| s@@95))
)))
(assert (forall ((s@@96 T@$1_DiemVMConfig_GasSchedule) ) (! (= (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96)  (and (and (|$IsValid'vec'u8''| (|$instruction_schedule#$1_DiemVMConfig_GasSchedule| s@@96)) (|$IsValid'vec'u8''| (|$native_schedule#$1_DiemVMConfig_GasSchedule| s@@96))) (|$IsValid'$1_DiemVMConfig_GasConstants'| (|$gas_constants#$1_DiemVMConfig_GasSchedule| s@@96))))
 :qid |RecoveryAddresscvc4bpl.23433:48|
 :skolemid |590|
 :pattern ( (|$IsValid'$1_DiemVMConfig_GasSchedule'| s@@96))
)))
(assert (forall ((s@@97 T@$1_DiemVersion_DiemVersion) ) (! (= (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97) (|$IsValid'u64'| (|$major#$1_DiemVersion_DiemVersion| s@@97)))
 :qid |RecoveryAddresscvc4bpl.23728:47|
 :skolemid |591|
 :pattern ( (|$IsValid'$1_DiemVersion_DiemVersion'| s@@97))
)))
(assert (forall ((v@@33 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_16602 v@@33)))
 (and (= (seq.len r@@0) (seq.len v@@33)) (forall ((i@@42 Int) ) (!  (=> (and (>= i@@42 0) (< i@@42 (seq.len r@@0))) (= (seq.nth r@@0 i@@42) (seq.nth v@@33 (- (- (seq.len v@@33) i@@42) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@42))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_16602 v@@33))
)))
(assert (forall ((v@@34 (Seq T@$1_ValidatorConfig_Config)) ) (! (let ((r@@1 (ReverseVec_93074 v@@34)))
 (and (= (seq.len r@@1) (seq.len v@@34)) (forall ((i@@43 Int) ) (!  (=> (and (>= i@@43 0) (< i@@43 (seq.len r@@1))) (= (seq.nth r@@1 i@@43) (seq.nth v@@34 (- (- (seq.len v@@34) i@@43) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@43))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_93074 v@@34))
)))
(assert (forall ((v@@35 (Seq T@$1_DiemAccount_KeyRotationCapability)) ) (! (let ((r@@2 (ReverseVec_91695 v@@35)))
 (and (= (seq.len r@@2) (seq.len v@@35)) (forall ((i@@44 Int) ) (!  (=> (and (>= i@@44 0) (< i@@44 (seq.len r@@2))) (= (seq.nth r@@2 i@@44) (seq.nth v@@35 (- (- (seq.len v@@35) i@@44) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@44))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_91695 v@@35))
)))
(assert (forall ((v@@36 (Seq T@$1_DiemAccount_WithdrawCapability)) ) (! (let ((r@@3 (ReverseVec_91892 v@@36)))
 (and (= (seq.len r@@3) (seq.len v@@36)) (forall ((i@@45 Int) ) (!  (=> (and (>= i@@45 0) (< i@@45 (seq.len r@@3))) (= (seq.nth r@@3 i@@45) (seq.nth v@@36 (- (- (seq.len v@@36) i@@45) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@45))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_91892 v@@36))
)))
(assert (forall ((v@@37 (Seq T@$1_DiemSystem_ValidatorInfo)) ) (! (let ((r@@4 (ReverseVec_92089 v@@37)))
 (and (= (seq.len r@@4) (seq.len v@@37)) (forall ((i@@46 Int) ) (!  (=> (and (>= i@@46 0) (< i@@46 (seq.len r@@4))) (= (seq.nth r@@4 i@@46) (seq.nth v@@37 (- (- (seq.len v@@37) i@@46) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@4 i@@46))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_92089 v@@37))
)))
(assert (forall ((v@@38 (Seq (Seq Int))) ) (! (let ((r@@5 (ReverseVec_93665 v@@38)))
 (and (= (seq.len r@@5) (seq.len v@@38)) (forall ((i@@47 Int) ) (!  (=> (and (>= i@@47 0) (< i@@47 (seq.len r@@5))) (= (seq.nth r@@5 i@@47) (seq.nth v@@38 (- (- (seq.len v@@38) i@@47) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@5 i@@47))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_93665 v@@38))
)))
(assert (forall ((v@@39 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XUS_XUS'|)) ) (! (let ((r@@6 (ReverseVec_92680 v@@39)))
 (and (= (seq.len r@@6) (seq.len v@@39)) (forall ((i@@48 Int) ) (!  (=> (and (>= i@@48 0) (< i@@48 (seq.len r@@6))) (= (seq.nth r@@6 i@@48) (seq.nth v@@39 (- (- (seq.len v@@39) i@@48) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@6 i@@48))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_92680 v@@39))
)))
(assert (forall ((v@@40 (Seq |T@$1_Diem_PreburnWithMetadata'$1_XDX_XDX'|)) ) (! (let ((r@@7 (ReverseVec_92483 v@@40)))
 (and (= (seq.len r@@7) (seq.len v@@40)) (forall ((i@@49 Int) ) (!  (=> (and (>= i@@49 0) (< i@@49 (seq.len r@@7))) (= (seq.nth r@@7 i@@49) (seq.nth v@@40 (- (- (seq.len v@@40) i@@49) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@7 i@@49))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_92483 v@@40))
)))
(assert (forall ((v@@41 (Seq |T@$1_Diem_PreburnWithMetadata'#0'|)) ) (! (let ((r@@8 (ReverseVec_92286 v@@41)))
 (and (= (seq.len r@@8) (seq.len v@@41)) (forall ((i@@50 Int) ) (!  (=> (and (>= i@@50 0) (< i@@50 (seq.len r@@8))) (= (seq.nth r@@8 i@@50) (seq.nth v@@41 (- (- (seq.len v@@41) i@@50) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@8 i@@50))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_92286 v@@41))
)))
(assert (forall ((v@@42 (Seq T@$1_VASPDomain_VASPDomain)) ) (! (let ((r@@9 (ReverseVec_92877 v@@42)))
 (and (= (seq.len r@@9) (seq.len v@@42)) (forall ((i@@51 Int) ) (!  (=> (and (>= i@@51 0) (< i@@51 (seq.len r@@9))) (= (seq.nth r@@9 i@@51) (seq.nth v@@42 (- (- (seq.len v@@42) i@@51) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@9 i@@51))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_92877 v@@42))
)))
(assert (forall ((v@@43 (Seq |T@#0|)) ) (! (let ((r@@10 (ReverseVec_91498 v@@43)))
 (and (= (seq.len r@@10) (seq.len v@@43)) (forall ((i@@52 Int) ) (!  (=> (and (>= i@@52 0) (< i@@52 (seq.len r@@10))) (= (seq.nth r@@10 i@@52) (seq.nth v@@43 (- (- (seq.len v@@43) i@@52) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@10 i@@52))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_91498 v@@43))
)))
(assert (forall ((v@@44 (Seq T@$1_XDX_XDX)) ) (! (let ((r@@11 (ReverseVec_93271 v@@44)))
 (and (= (seq.len r@@11) (seq.len v@@44)) (forall ((i@@53 Int) ) (!  (=> (and (>= i@@53 0) (< i@@53 (seq.len r@@11))) (= (seq.nth r@@11 i@@53) (seq.nth v@@44 (- (- (seq.len v@@44) i@@53) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@11 i@@53))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_93271 v@@44))
)))
(assert (forall ((v@@45 (Seq T@$1_XUS_XUS)) ) (! (let ((r@@12 (ReverseVec_93468 v@@45)))
 (and (= (seq.len r@@12) (seq.len v@@45)) (forall ((i@@54 Int) ) (!  (=> (and (>= i@@54 0) (< i@@54 (seq.len r@@12))) (= (seq.nth r@@12 i@@54) (seq.nth v@@45 (- (- (seq.len v@@45) i@@54) 1))))
 :qid |RecoveryAddresscvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@12 i@@54))
))))
 :qid |RecoveryAddresscvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_93468 v@@45))
)))
(assert (forall ((|l#0| Bool) (i@@55 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55) |l#0|)
 :qid |RecoveryAddresscvc4bpl.245:54|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@55))
)))
(assert (forall ((|l#0@@0| |T@[$1_Event_EventHandle]Multiset_102809|) (|l#1| |T@[$1_Event_EventHandle]Multiset_102809|) (handle@@0 T@$1_Event_EventHandle) ) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|lambda#2| |l#0@@0| |l#1|) handle@@0) (let ((len1 (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| |l#0@@0| handle@@0))))
(let ((len2 (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| |l#1| handle@@0))))
(Multiset_102809 (|lambda#3| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| |l#0@@0| handle@@0)) (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| |l#1| handle@@0))) (- len1 len2)))))
 :qid |RecoveryAddresscvc4bpl.3273:13|
 :skolemid |671|
 :pattern ( (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|lambda#2| |l#0@@0| |l#1|) handle@@0))
)))
(assert (forall ((|l#0@@1| |T@[$EventRep]Int|) (|l#1@@0| |T@[$EventRep]Int|) (v@@46 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46) (- (|Select__T@[$EventRep]Int_| |l#0@@1| v@@46) (|Select__T@[$EventRep]Int_| |l#1@@0| v@@46)))
 :qid |RecoveryAddresscvc4bpl.124:29|
 :skolemid |672|
 :pattern ( (|Select__T@[$EventRep]Int_| (|lambda#3| |l#0@@1| |l#1@@0|) v@@46))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $1_RecoveryAddress_RecoveryAddress_$memory () T@$Memory_171231)
(declare-fun $1_VASP_ParentVASP_$memory@0 () T@$Memory_168189)
(declare-fun $1_VASP_ChildVASP_$memory@1 () T@$Memory_168125)
(declare-fun $1_VASP_ParentVASP_$memory () T@$Memory_168189)
(declare-fun $t11 () Int)
(declare-fun $1_VASP_ChildVASP_$memory () T@$Memory_168125)
(declare-fun $t12 () Int)
(declare-fun |Select__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int) T@$1_VASP_ParentVASP)
(declare-fun $1_Roles_RoleId_$memory () T@$Memory_141115)
(declare-fun $t13 () Int)
(declare-fun |Select__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int) T@$1_Roles_RoleId)
(declare-fun _$t0 () T@$signer)
(declare-fun |Select__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int) T@$1_VASP_ChildVASP)
(declare-fun $t16@0 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun _$t1 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@0 () T@$Memory_168125)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$1_VASP_ChildVASP_| (|T@[Int]$1_VASP_ChildVASP| Int T@$1_VASP_ChildVASP) |T@[Int]$1_VASP_ChildVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ChildVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ChildVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ChildVASP_| (|Store__T@[Int]$1_VASP_ChildVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ChildVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t37@0 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t28@1 () T@$Mutation_16749)
(declare-fun $t28@0 () T@$Mutation_16749)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t27@2 () T@$Mutation_168591)
(declare-fun $t27@1 () T@$Mutation_168591)
(declare-fun |Store__T@[Int]$1_VASP_ParentVASP_| (|T@[Int]$1_VASP_ParentVASP| Int T@$1_VASP_ParentVASP) |T@[Int]$1_VASP_ParentVASP|)
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_VASP_ParentVASP|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_VASP_ParentVASP)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_VASP_ParentVASP_| (|Store__T@[Int]$1_VASP_ParentVASP_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_VASP_ParentVASP_| ?x0 ?y1))) :weight 0)))
(declare-fun $t23 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t33 () Int)
(declare-fun $t29@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t27 () T@$Mutation_168591)
(declare-fun $t27@0 () T@$Mutation_168591)
(declare-fun $abort_code@0 () Int)
(declare-fun $t24 () Bool)
(declare-fun $t26 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $t22 () Int)
(declare-fun $t19 () Bool)
(declare-fun $t17 () Bool)
(declare-fun $t18 () Int)
(declare-fun $t16 () Int)
(declare-fun $t15 () Bool)
(declare-fun $t14 () Int)
(declare-fun $es () T@$EventStore)
(declare-fun $t9 () T@$Mutation_16749)
(declare-fun $t28 () T@$Mutation_16749)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_child_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 426601) (let ((anon37_Else_correct  (=> (not $abort_flag@2) (and (=> (= (ControlFlow 0 244304) (- 0 428063)) (forall ((recovery_addr Int) ) (!  (=> (|$IsValid'address'| recovery_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@0) recovery_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory@1) recovery_addr))))
 :qid |RecoveryAddresscvc4bpl.11830:15|
 :skolemid |200|
))) (=> (forall ((recovery_addr@@0 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@0) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@0) recovery_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory@1) recovery_addr@@0))))
 :qid |RecoveryAddresscvc4bpl.11830:15|
 :skolemid |200|
)) (and (=> (= (ControlFlow 0 244304) (- 0 428092)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t11)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t11))) (and (=> (= (ControlFlow 0 244304) (- 0 428103)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12))) (and (=> (= (ControlFlow 0 244304) (- 0 428115)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (and (=> (= (ControlFlow 0 244304) (- 0 428133)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t13)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t13))) (and (=> (= (ControlFlow 0 244304) (- 0 428145)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t13)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t13)) 5))) (and (=> (= (ControlFlow 0 244304) (- 0 428163)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t11)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t11))) (and (=> (= (ControlFlow 0 244304) (- 0 428175)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t11)) 6)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t11)) 6))) (and (=> (= (ControlFlow 0 244304) (- 0 428193)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@0) (|$addr#$signer| _$t0))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0))) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@0) (|$addr#$signer| _$t0))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0))) 1)) (and (=> (= (ControlFlow 0 244304) (- 0 428214)) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory@1) $t11)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory@1) $t11) (=> (= (ControlFlow 0 244304) (- 0 428222)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@0) $t11) $t11 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory@1) $t11))) (|$addr#$signer| _$t0))))))))))))))))))))))))))
(let ((L7_correct  (and (=> (= (ControlFlow 0 243555) (- 0 427847)) (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t11)) 6)))) (=> (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t11)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t13))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t13)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t11))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t11)) 6))) (=> (= (ControlFlow 0 243555) (- 0 427925)) (or (or (or (or (or (or (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t11) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t11)) (= 6 $t16@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)) (= 7 $t16@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t12)) 1) 65536) (= 8 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t13)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t13)) 5)) (= 3 $t16@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t11)) (= 5 $t16@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t11)) 6)) (= 3 $t16@0))))))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t16@0 $abort_code@3) (= (ControlFlow 0 244318) 243555))) L7_correct)))
(let ((anon36_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= $abort_flag@2 true)) (and (=> (= (ControlFlow 0 244370) 244318) anon37_Then_correct) (=> (= (ControlFlow 0 244370) 244304) anon37_Else_correct))))))
(let ((anon36_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1)) (= (ControlFlow 0 244368) 244370)) anon36_Then$1_correct)))
(let ((anon36_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1))) (=> (and (and (= $1_VASP_ChildVASP_$memory@0 ($Memory_168125 (|Store__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1) true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| _$t1) $t37@0))) (= $1_VASP_ChildVASP_$memory@1 $1_VASP_ChildVASP_$memory@0)) (and (= $abort_code@3 $abort_code@2) (= $abort_flag@2 $abort_flag@1))) (and (=> (= (ControlFlow 0 244117) 244318) anon37_Then_correct) (=> (= (ControlFlow 0 244117) 244304) anon37_Else_correct))))))
(let ((anon35_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t28@1 ($Mutation_16749 (|l#$Mutation_16749| $t28@0) (|p#$Mutation_16749| $t28@0) inline$$AddU64$0$dst@2)) (= $t27@2 ($Mutation_168591 (|l#$Mutation_168591| $t27@1) (|p#$Mutation_168591| $t27@1) ($1_VASP_ParentVASP (|v#$Mutation_16749| $t28@1))))) (and (forall ((recovery_addr@@1 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@1) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) recovery_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@1))))
 :qid |RecoveryAddresscvc4bpl.11790:20|
 :skolemid |197|
)) (= $1_VASP_ParentVASP_$memory@0 ($Memory_168189 (|Store__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_168591| $t27@2)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_168591| $t27@2)) (|v#$Mutation_168591| $t27@2)))))) (and (=> (= (ControlFlow 0 244095) (- 0 427669)) (forall ((recovery_addr@@2 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@2) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@0) recovery_addr@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@2))))
 :qid |RecoveryAddresscvc4bpl.11801:15|
 :skolemid |198|
))) (=> (forall ((recovery_addr@@3 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@3) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@0) recovery_addr@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@3))))
 :qid |RecoveryAddresscvc4bpl.11801:15|
 :skolemid |198|
)) (=> (and (= $t37@0 ($1_VASP_ChildVASP $t23)) (forall ((recovery_addr@@4 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@4) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@0) recovery_addr@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@4))))
 :qid |RecoveryAddresscvc4bpl.11810:20|
 :skolemid |199|
))) (and (=> (= (ControlFlow 0 244095) 244368) anon36_Then_correct) (=> (= (ControlFlow 0 244095) 244117) anon36_Else_correct)))))))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t16@0 $abort_code@2) (= (ControlFlow 0 244384) 243555))) L7_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 243958) 244384) anon35_Then_correct) (=> (= (ControlFlow 0 243958) 244095) anon35_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t34@0 1) $MAX_U64) (= (ControlFlow 0 243956) 243958)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t34@0 1)) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 243904) 244384) anon35_Then_correct) (=> (= (ControlFlow 0 243904) 244095) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (= $t34@0 (|v#$Mutation_16749| $t28@0)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 243964) 243956) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 243964) 243904) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon34_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t33 $t33)) (and (= $t16@0 $t33) (= (ControlFlow 0 243797) 243555))) L7_correct)))
(let ((anon33_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| $t33) (= $t33 8)) (and (= $t33 $t33) (= inline$$Lt$0$dst@1 inline$$Lt$0$dst@1))) (and (=> (= (ControlFlow 0 243781) 243964) anon34_Then_correct) (=> (= (ControlFlow 0 243781) 243797) anon34_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t29@0 65536)) (= (ControlFlow 0 243745) 243781)) anon33_Else$1_correct)))
(let ((anon33_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t28@0 ($Mutation_16749 (|l#$Mutation_168591| $t27@1) (seq.++ (|p#$Mutation_168591| $t27@1) (seq.unit 0)) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_168591| $t27@1)))) (= |$temp_0'u64'@0| (|v#$Mutation_16749| $t28@0))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= $t29@0 (|v#$Mutation_16749| $t28@0))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 243751) 243745))) inline$$Lt$0$anon0_correct)))))
(let ((anon33_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t16@0 $abort_code@1) (= (ControlFlow 0 244398) 243555))) L7_correct)))
(let ((anon32_Then$1_correct  (=> (= $t27@1 $t27) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 244450) 244398) anon33_Then_correct) (=> (= (ControlFlow 0 244450) 243751) anon33_Else_correct))))))
(let ((anon32_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t23)) (= (ControlFlow 0 244448) 244450)) anon32_Then$1_correct)))
(let ((anon32_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t23) (=> (and (and (= $t27@0 ($Mutation_168591 ($Global $t23) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t23))) (= $t27@1 $t27@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 243663) 244398) anon33_Then_correct) (=> (= (ControlFlow 0 243663) 243751) anon33_Else_correct))))))
(let ((anon31_Then_correct  (=> $t24 (and (=> (= (ControlFlow 0 243641) 244448) anon32_Then_correct) (=> (= (ControlFlow 0 243641) 243663) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (and (and (not $t24) (= $t26 $t26)) (and (= $t16@0 $t26) (= (ControlFlow 0 243637) 243555))) L7_correct)))
(let ((anon30_Then_correct  (=> (and inline$$Not$0$dst@1 (|$IsValid'address'| $t23)) (=> (and (and (and (= $t23 (|$addr#$signer| _$t0)) (= $t23 $t23)) (and (= $t24 (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t23)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| $t26) (= $t26 7)) (and (= $t26 $t26) (= $t24 $t24)))) (and (=> (= (ControlFlow 0 243621) 243641) anon31_Then_correct) (=> (= (ControlFlow 0 243621) 243637) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (and (and (not inline$$Not$0$dst@1) (= $t22 $t22)) (and (= $t16@0 $t22) (= (ControlFlow 0 243319) 243555))) L7_correct)))
(let ((anon29_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t22) (= $t22 6)) (and (= $t22 $t22) (= inline$$Not$0$dst@1 inline$$Not$0$dst@1))) (and (=> (= (ControlFlow 0 243303) 243621) anon30_Then_correct) (=> (= (ControlFlow 0 243303) 243319) anon30_Else_correct))))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not $t19)) (= (ControlFlow 0 243267) 243303)) anon29_Else$1_correct)))
(let ((anon29_Else_correct  (=> (and (not $t17) (|$IsValid'address'| $t18)) (=> (and (and (= $t18 (|$addr#$signer| _$t1)) (= $t18 $t18)) (and (= $t19  (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t18) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t18))) (= (ControlFlow 0 243273) 243267))) inline$$Not$0$anon0_correct))))
(let ((anon29_Then_correct  (=> $t17 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1))) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1))) 6)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 244506) 243555))) L7_correct))))
(let ((anon28_Else_correct  (=> (and (not $t15) (= $t17  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| _$t1))) 6))))) (and (=> (= (ControlFlow 0 243193) 244506) anon29_Then_correct) (=> (= (ControlFlow 0 243193) 243273) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> $t15 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t14)) (= 5 $t16)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t14)) 5)) (= 3 $t16))) (= $t16 $t16)) (and (= $t16@0 $t16) (= (ControlFlow 0 244558) 243555))) L7_correct))))
(let ((anon0$1_correct  (=> (forall ((child_addr Int) ) (!  (=> (|$IsValid'address'| child_addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) child_addr) (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) child_addr)))))
 :qid |RecoveryAddresscvc4bpl.11418:20|
 :skolemid |193|
)) (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) (|$IsValid'address'| (|$addr#$signer| _$t1))) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $a_0)))
(|$IsValid'$1_Roles_RoleId'| $rsc))
 :qid |RecoveryAddresscvc4bpl.11427:20|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) $a_0@@0)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@0))
 :qid |RecoveryAddresscvc4bpl.11431:20|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) $a_0@@0))
)))) (=> (and (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $a_0@@1)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@1))
 :qid |RecoveryAddresscvc4bpl.11435:20|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $a_0@@1))
)) (= $t11 (|$addr#$signer| _$t1))) (and (= $t12 (|$addr#$signer| _$t0)) (= $t13 (|$addr#$signer| _$t0)))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t14 (|$addr#$signer| _$t0)) (= $t15  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t14)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t14)) 5))))))) (and (=> (= (ControlFlow 0 243153) 244558) anon28_Then_correct) (=> (= (ControlFlow 0 243153) 243193) anon28_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@1 T@$1_Event_EventHandle) ) (! (let ((stream@@0 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $es) handle@@1)))
 (and (= (|l#Multiset_102809| stream@@0) 0) (forall ((v@@47 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@0) v@@47) 0)
 :qid |RecoveryAddresscvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc4bpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 242942) 243153)) anon0$1_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_16749| $t9)) 0) (= (seq.len (|p#$Mutation_168591| $t27)) 0)) (and (= (seq.len (|p#$Mutation_16749| $t28)) 0) (= (ControlFlow 0 242952) 242942))) inline$$InitEventStore$0$anon0_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 426601) 242952) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $1_VASP_ParentVASP_$memory@1 () T@$Memory_168189)
(declare-fun $1_DiemTimestamp_CurrentTimeMicroseconds_$memory () T@$Memory_140621)
(declare-fun $t6 () Int)
(declare-fun _$t1@@0 () T@$signer)
(declare-fun $t7 () Int)
(declare-fun $t5 () Int)
(declare-fun $t9@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun _$t0@@0 () T@$signer)
(declare-fun $1_VASP_ParentVASP_$memory@0@@0 () T@$Memory_168189)
(declare-fun $t20@0 () T@$1_VASP_ParentVASP)
(declare-fun $abort_code@0@@0 () Int)
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun $t18@@0 () Int)
(declare-fun $t15@@0 () Bool)
(declare-fun $t13@@0 () Bool)
(declare-fun $t14@@0 () Int)
(declare-fun $t12@@0 () Int)
(declare-fun $t9@@0 () Int)
(declare-fun $t11@@0 () Bool)
(declare-fun $t10 () Int)
(declare-fun $t8 () Bool)
(declare-fun |Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds| Int) T@$1_DiemTimestamp_CurrentTimeMicroseconds)
(push 1)
(set-info :boogie-vc-id $1_VASP_publish_parent_vasp_credential$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 428443) (let ((anon21_Else_correct  (=> (not $abort_flag@0@@0) (and (=> (= (ControlFlow 0 245706) (- 0 429437)) (forall ((recovery_addr@@5 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@5) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@1) recovery_addr@@5) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@5))))
 :qid |RecoveryAddresscvc4bpl.12501:15|
 :skolemid |207|
))) (=> (forall ((recovery_addr@@6 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@6) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@1) recovery_addr@@6) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@6))))
 :qid |RecoveryAddresscvc4bpl.12501:15|
 :skolemid |207|
)) (and (=> (= (ControlFlow 0 245706) (- 0 429467)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816))) (and (=> (= (ControlFlow 0 245706) (- 0 429477)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t6)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t6))) (and (=> (= (ControlFlow 0 245706) (- 0 429489)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t6)) 1)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t6)) 1))) (and (=> (= (ControlFlow 0 245706) (- 0 429507)) (not (not (= (|$addr#$signer| _$t1@@0) 186537453)))) (=> (not (not (= (|$addr#$signer| _$t1@@0) 186537453))) (and (=> (= (ControlFlow 0 245706) (- 0 429521)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7))) (and (=> (= (ControlFlow 0 245706) (- 0 429533)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7)) 5))) (and (=> (= (ControlFlow 0 245706) (- 0 429551)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t5)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t5))) (and (=> (= (ControlFlow 0 245706) (- 0 429562)) (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@1) $t5)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@1) $t5) (and (=> (= (ControlFlow 0 245706) (- 0 429570)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@1) $t5)) 0)) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@1) $t5)) 0) (and (=> (= (ControlFlow 0 245706) (- 0 429582)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (= (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) a)))
 :qid |RecoveryAddresscvc4bpl.12555:15|
 :skolemid |208|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (= (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) a@@0)))
 :qid |RecoveryAddresscvc4bpl.12555:15|
 :skolemid |208|
)) (=> (= (ControlFlow 0 245706) (- 0 429607)) (forall ((parent Int) ) (!  (=> (|$IsValid'address'| parent) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) parent) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@1) parent)) (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) parent)))))
 :qid |RecoveryAddresscvc4bpl.12560:15|
 :skolemid |209|
))))))))))))))))))))))))))))
(let ((L3_correct  (and (=> (= (ControlFlow 0 245430) (- 0 429233)) (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t5)))) (=> (or (or (or (or (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t6))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t6)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t5))) (=> (= (ControlFlow 0 245430) (- 0 429305)) (or (or (or (or (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t6)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t6)) 1)) (= 3 $t9@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t9@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7)) (= 5 $t9@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7)) 5)) (= 3 $t9@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t5) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t5)) (= 6 $t9@0))))))))
(let ((anon21_Then_correct  (=> (and (and $abort_flag@0@@0 (= $abort_code@1@@0 $abort_code@1@@0)) (and (= $t9@0 $abort_code@1@@0) (= (ControlFlow 0 245720) 245430))) L3_correct)))
(let ((anon20_Then$1_correct  (=> (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 245772) 245720) anon21_Then_correct) (=> (= (ControlFlow 0 245772) 245706) anon21_Else_correct))))))
(let ((anon20_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0)) (= (ControlFlow 0 245770) 245772)) anon20_Then$1_correct)))
(let ((anon20_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0))) (=> (and (and (= $1_VASP_ParentVASP_$memory@0@@0 ($Memory_168189 (|Store__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@0) $t20@0))) (= $1_VASP_ParentVASP_$memory@1 $1_VASP_ParentVASP_$memory@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 245495) 245720) anon21_Then_correct) (=> (= (ControlFlow 0 245495) 245706) anon21_Else_correct))))))
(let ((anon19_Then_correct  (=> (and (and inline$$Not$0$dst@1@@0 (|$IsValid'u64'| 0)) (and (= $t20@0 ($1_VASP_ParentVASP 0)) (forall ((recovery_addr@@7 Int) ) (!  (=> (|$IsValid'address'| recovery_addr@@7) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_171231| $1_RecoveryAddress_RecoveryAddress_$memory) recovery_addr@@7) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) recovery_addr@@7) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) recovery_addr@@7))))
 :qid |RecoveryAddresscvc4bpl.12481:20|
 :skolemid |206|
)))) (and (=> (= (ControlFlow 0 245473) 245770) anon20_Then_correct) (=> (= (ControlFlow 0 245473) 245495) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not inline$$Not$0$dst@1@@0) (= $t18@@0 $t18@@0)) (and (= $t9@0 $t18@@0) (= (ControlFlow 0 245206) 245430))) L3_correct)))
(let ((anon18_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| $t18@@0) (= $t18@@0 6)) (and (= $t18@@0 $t18@@0) (= inline$$Not$0$dst@1@@0 inline$$Not$0$dst@1@@0))) (and (=> (= (ControlFlow 0 245190) 245473) anon19_Then_correct) (=> (= (ControlFlow 0 245190) 245206) anon19_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (and (= inline$$Not$0$dst@1@@0  (not $t15@@0)) (= (ControlFlow 0 245154) 245190)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not $t13@@0) (|$IsValid'address'| $t14@@0)) (=> (and (and (= $t14@@0 (|$addr#$signer| _$t0@@0)) (= $t14@@0 $t14@@0)) (and (= $t15@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t14@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) $t14@@0))) (= (ControlFlow 0 245160) 245154))) inline$$Not$0$anon0_correct@@0))))
(let ((anon18_Then_correct  (=> $t13@@0 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t12@@0)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t12@@0)) 5)) (= 3 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0 $t9@@0) (= (ControlFlow 0 245824) 245430))) L3_correct))))
(let ((anon17_Else_correct  (=> (not $t11@@0) (=> (and (= $t12@@0 (|$addr#$signer| _$t0@@0)) (= $t13@@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t12@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t12@@0)) 5))))) (and (=> (= (ControlFlow 0 245080) 245824) anon18_Then_correct) (=> (= (ControlFlow 0 245080) 245160) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> $t11@@0 (=> (and (and (or (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t10)) (= 5 $t9@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t10)) 1)) (= 3 $t9@@0))) (and (not (= (|$addr#$signer| _$t1@@0) 186537453)) (= 2 $t9@@0))) (= $t9@@0 $t9@@0)) (and (= $t9@0 $t9@@0) (= (ControlFlow 0 245896) 245430))) L3_correct))))
(let ((anon16_Else_correct  (=> (not $t8) (=> (and (= $t10 (|$addr#$signer| _$t1@@0)) (= $t11@@0  (or (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t10)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t10)) 1))) (not (= (|$addr#$signer| _$t1@@0) 186537453))))) (and (=> (= (ControlFlow 0 245032) 245896) anon17_Then_correct) (=> (= (ControlFlow 0 245032) 245080) anon17_Else_correct))))))
(let ((anon16_Then_correct  (=> $t8 (=> (and (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (= 1 $t9@@0)) (= $t9@@0 $t9@@0)) (and (= $t9@0 $t9@@0) (= (ControlFlow 0 245922) 245430))) L3_correct))))
(let ((anon0$1_correct@@0  (=> (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (forall ((child_addr@@0 Int) ) (!  (=> (|$IsValid'address'| child_addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) child_addr@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) child_addr@@0)))))
 :qid |RecoveryAddresscvc4bpl.12237:20|
 :skolemid |201|
))) (=> (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@0)) (|$IsValid'address'| (|$addr#$signer| _$t1@@0))) (and (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2)))
(|$IsValid'$1_DiemTimestamp_CurrentTimeMicroseconds'| $rsc@@2))
 :qid |RecoveryAddresscvc4bpl.12246:20|
 :skolemid |202|
 :pattern ( (|Select__T@[Int]$1_DiemTimestamp_CurrentTimeMicroseconds_| (|contents#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) $a_0@@2))
)) (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $a_0@@3)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@3))
 :qid |RecoveryAddresscvc4bpl.12250:20|
 :skolemid |203|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $a_0@@3))
)))) (=> (and (and (and (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) $a_0@@4)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@4))
 :qid |RecoveryAddresscvc4bpl.12254:20|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) $a_0@@4))
)) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $a_0@@5)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@5))
 :qid |RecoveryAddresscvc4bpl.12258:20|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $a_0@@5))
))) (and (= $t5 (|$addr#$signer| _$t0@@0)) (= $t6 (|$addr#$signer| _$t1@@0)))) (and (and (= $t7 (|$addr#$signer| _$t0@@0)) (= _$t0@@0 _$t0@@0)) (and (= _$t1@@0 _$t1@@0) (= $t8  (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)))))) (and (=> (= (ControlFlow 0 244972) 245922) anon16_Then_correct) (=> (= (ControlFlow 0 244972) 245032) anon16_Else_correct)))))))
(let ((inline$$InitEventStore$0$anon0_correct@@0  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@2 T@$1_Event_EventHandle) ) (! (let ((stream@@1 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $es) handle@@2)))
 (and (= (|l#Multiset_102809| stream@@1) 0) (forall ((v@@48 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@1) v@@48) 0)
 :qid |RecoveryAddresscvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc4bpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 244755) 244972)) anon0$1_correct@@0)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 428443) 244755) inline$$InitEventStore$0$anon0_correct@@0)))
anon0_correct@@0))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t1@@1 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $t6@@0 () Int)
(declare-fun $t7@@0 () Int)
(declare-fun |$1_Diem_CurrencyInfo'#0'_$memory| () T@$Memory_150433)
(declare-fun _$t3 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory| () T@$Memory_181352)
(declare-fun |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory| () T@$Memory_150233)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory| () T@$Memory_181443)
(declare-fun |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory| () T@$Memory_150297)
(declare-fun $1_AccountFreezing_FreezingBit_$memory () T@$Memory_179374)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory () T@$Memory_181217)
(declare-fun _$t2 () (Seq Int))
(declare-fun $t10@0 () Int)
(declare-fun $abort_flag@62 () Bool)
(declare-fun $abort_code@54 () Int)
(declare-fun $t21 () Bool)
(declare-fun $t17@@0 () Int)
(declare-fun $t10@@0 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t9@@1 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $t28@@0 () T@$1_Event_EventHandle)
(declare-fun |Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int) T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@2 () T@$Memory_181217)
(declare-fun $t29 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_Roles_RoleId_$memory@3 () T@$Memory_141115)
(declare-fun $1_DiemAccount_DiemAccount_$memory@2 () T@$Memory_180324)
(declare-fun $1_VASP_ParentVASP_$memory@2 () T@$Memory_168189)
(declare-fun _$t0@@1 () T@$signer)
(declare-fun $1_VASP_ChildVASP_$memory@3 () T@$Memory_168125)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@3| () T@$Memory_181534)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int) |T@$1_DiemAccount_Balance'#0'|)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| () T@$Memory_181352)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int) |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| () T@$Memory_181443)
(declare-fun |Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int) |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $1_DiemAccount_DiemAccount_$memory () T@$Memory_180324)
(declare-fun |Select__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int) T@$1_DiemAccount_DiemAccount)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory| () T@$Memory_181534)
(declare-fun $es@0 () T@$EventStore)
(declare-fun |Store__T@[$EventRep]Int_| (|T@[$EventRep]Int| T@$EventRep Int) |T@[$EventRep]Int|)
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?x2 Int)) (! (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$EventRep]Int|) ( ?x1 T@$EventRep) ( ?y1 T@$EventRep) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$EventRep]Int_| (|Store__T@[$EventRep]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$EventRep]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[$1_Event_EventHandle]Multiset_102809_| (|T@[$1_Event_EventHandle]Multiset_102809| T@$1_Event_EventHandle T@Multiset_102809) |T@[$1_Event_EventHandle]Multiset_102809|)
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_102809|) ( ?x1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_102809)) (! (= (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|Store__T@[$1_Event_EventHandle]Multiset_102809_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[$1_Event_EventHandle]Multiset_102809|) ( ?x1 T@$1_Event_EventHandle) ( ?y1 T@$1_Event_EventHandle) ( ?x2 T@Multiset_102809)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|Store__T@[$1_Event_EventHandle]Multiset_102809_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[$1_Event_EventHandle]Multiset_102809_| ?x0 ?y1))) :weight 0)))
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| () T@$Memory_181443)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| () T@$Memory_181352)
(declare-fun $abort_flag@40 () Bool)
(declare-fun $abort_code@35 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| () T@$Memory_181352)
(declare-fun $abort_flag@59 () Bool)
(declare-fun $abort_code@51 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| () T@$Memory_181443)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| () T@$Memory_181352)
(declare-fun $abort_flag@22 () Bool)
(declare-fun $abort_code@20 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| () T@$Memory_181443)
(declare-fun $abort_code@53 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| () T@$Memory_181352)
(declare-fun $abort_flag@61 () Bool)
(declare-fun $abort_code@52 () Int)
(declare-fun $abort_flag@60 () Bool)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| () T@$Memory_181443)
(declare-fun $abort_flag@58 () Bool)
(declare-fun $abort_code@50 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| () T@$Memory_181443)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| () T@$Memory_181443)
(declare-fun inline$$1_DiemAccount_create_signer$0$signer@1 () T@$signer)
(declare-fun |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| () T@$Memory_181443)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'| Int |T@$1_DiemAccount_Balance'$1_XDX_XDX'|) |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XDX_XDX'|)
(declare-fun $abort_code@49 () Int)
(declare-fun $abort_flag@57 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun $abort_flag@56 () Bool)
(declare-fun $abort_code@48 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XDX_XDX'|)
(declare-fun inline$$Not$4$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t4@1 () Int)
(declare-fun $abort_flag@54 () Bool)
(declare-fun $abort_code@46 () Int)
(declare-fun $abort_flag@49 () Bool)
(declare-fun $abort_code@42 () Int)
(declare-fun $abort_flag@45 () Bool)
(declare-fun $abort_code@39 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t2@1 () Bool)
(declare-fun $abort_flag@55 () Bool)
(declare-fun $abort_code@47 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@53 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@51 () Bool)
(declare-fun $abort_code@44 () Int)
(declare-fun inline$$1_Roles_has_role$5$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t2@1 () Bool)
(declare-fun $abort_flag@52 () Bool)
(declare-fun $abort_code@45 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$5$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$5$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@43 () Int)
(declare-fun $abort_flag@50 () Bool)
(declare-fun inline$$1_Roles_has_role$5$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$1$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@48 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@46 () Bool)
(declare-fun $abort_code@40 () Int)
(declare-fun inline$$1_Roles_has_role$4$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t2@1 () Bool)
(declare-fun $abort_code@41 () Int)
(declare-fun $abort_flag@47 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$4$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$4$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$4$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 () Bool)
(declare-fun $abort_flag@44 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$1$$ret0@0 () Bool)
(declare-fun $abort_flag@42 () Bool)
(declare-fun $abort_code@37 () Int)
(declare-fun inline$$1_Roles_has_role$3$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t2@1 () Bool)
(declare-fun $abort_code@38 () Int)
(declare-fun $abort_flag@43 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$3$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$3$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_flag@41 () Bool)
(declare-fun $abort_code@36 () Int)
(declare-fun inline$$1_Roles_has_role$3$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$1$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| () Int)
(declare-fun inline$$Not$3$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t8@1| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| () Int)
(declare-fun $abort_flag@39 () Bool)
(declare-fun $abort_code@34 () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| () T@$Memory_181352)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| () T@$Memory_181352)
(declare-fun |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| () T@$Memory_181352)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'| Int |T@$1_DiemAccount_Balance'$1_XUS_XUS'|) |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| () |T@$1_DiemAccount_Balance'$1_XUS_XUS'|)
(declare-fun $abort_code@33 () Int)
(declare-fun $abort_flag@38 () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun $abort_flag@37 () Bool)
(declare-fun $abort_code@32 () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0| () |T@$1_Diem_Diem'$1_XUS_XUS'|)
(declare-fun inline$$Not$5$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t4@1 () Int)
(declare-fun $abort_flag@35 () Bool)
(declare-fun $abort_code@30 () Int)
(declare-fun $abort_flag@30 () Bool)
(declare-fun $abort_code@26 () Int)
(declare-fun $abort_flag@26 () Bool)
(declare-fun $abort_code@23 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t2@1 () Bool)
(declare-fun $abort_flag@36 () Bool)
(declare-fun $abort_code@31 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@34 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@32 () Bool)
(declare-fun $abort_code@28 () Int)
(declare-fun inline$$1_Roles_has_role$8$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t2@1 () Bool)
(declare-fun $abort_flag@33 () Bool)
(declare-fun $abort_code@29 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$8$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$8$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@27 () Int)
(declare-fun $abort_flag@31 () Bool)
(declare-fun inline$$1_Roles_has_role$8$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$2$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@29 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@27 () Bool)
(declare-fun $abort_code@24 () Int)
(declare-fun inline$$1_Roles_has_role$7$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t2@1 () Bool)
(declare-fun $abort_code@25 () Int)
(declare-fun $abort_flag@28 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$7$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$7$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$7$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 () Bool)
(declare-fun $abort_flag@25 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$2$$ret0@0 () Bool)
(declare-fun $abort_flag@23 () Bool)
(declare-fun $abort_code@21 () Int)
(declare-fun inline$$1_Roles_has_role$6$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t2@1 () Bool)
(declare-fun $abort_flag@24 () Bool)
(declare-fun $abort_code@22 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$6$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$6$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$6$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$2$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| () Int)
(declare-fun inline$$Not$2$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| () Bool)
(declare-fun $abort_flag@21 () Bool)
(declare-fun $abort_code@19 () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@1| () T@$Memory_181534)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| () Int)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@2| () T@$Memory_181534)
(declare-fun |$1_DiemAccount_Balance'#0'_$memory@0| () T@$Memory_181534)
(declare-fun |Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|T@[Int]$1_DiemAccount_Balance'#0'| Int |T@$1_DiemAccount_Balance'#0'|) |T@[Int]$1_DiemAccount_Balance'#0'|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_Balance'#0'|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@$1_DiemAccount_Balance'#0'|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| () |T@$1_DiemAccount_Balance'#0'|)
(declare-fun $abort_code@18 () Int)
(declare-fun $abort_flag@20 () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t0@0| () Bool)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t3@1| () |T@$1_Diem_Diem'#0'|)
(declare-fun $abort_flag@19 () Bool)
(declare-fun $abort_code@17 () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$t1@0| () Int)
(declare-fun |inline$$1_Diem_zero'#0'$0$$ret0@0| () |T@$1_Diem_Diem'#0'|)
(declare-fun inline$$Not$1$dst@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t4@1 () Int)
(declare-fun $abort_flag@17 () Bool)
(declare-fun $abort_code@15 () Int)
(declare-fun $abort_flag@12 () Bool)
(declare-fun $abort_code@11 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t2@1 () Bool)
(declare-fun $abort_flag@18 () Bool)
(declare-fun $abort_code@16 () Int)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@16 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_designated_dealer_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@14 () Bool)
(declare-fun $abort_code@13 () Int)
(declare-fun inline$$1_Roles_has_role$2$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t2@1 () Bool)
(declare-fun $abort_flag@15 () Bool)
(declare-fun $abort_code@14 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$2$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$2$$t6@1 () T@$1_Roles_RoleId)
(declare-fun $abort_code@12 () Int)
(declare-fun $abort_flag@13 () Bool)
(declare-fun inline$$1_Roles_has_role$2$$t5@1 () Bool)
(declare-fun inline$$1_Roles_can_hold_balance$0$$t1@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@11 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_child_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun inline$$1_Roles_has_role$1$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t2@1 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$1$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$1$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$1$$t5@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 () Bool)
(declare-fun $abort_flag@7 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$ret0@1 () Bool)
(declare-fun inline$$1_Roles_has_parent_VASP_role$0$$ret0@0 () Bool)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun inline$$1_Roles_has_role$0$$ret0@0 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t2@1 () Bool)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t8@1 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@2 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t9@1 () Bool)
(declare-fun inline$$1_Roles_has_role$0$$t6@0 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t4@0 () Int)
(declare-fun inline$$1_Roles_has_role$0$$t6@1 () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_has_role$0$$t5@1 () Bool)
(declare-fun inline$$1_DiemAccount_exists_at$0$$t1@1 () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| () Bool)
(declare-fun |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| () Int)
(declare-fun |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| () Int)
(declare-fun $t22@@0 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t23@@0 () T@$1_Event_EventHandle)
(declare-fun $t24@@0 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@2 () T@$Memory_179374)
(declare-fun |Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int) T@$1_AccountFreezing_FreezingBit)
(declare-fun $t18@@1 () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun $t25 () T@$1_DiemAccount_CreateAccountEvent)
(declare-fun $t26@@0 () T@$1_Event_EventHandle)
(declare-fun $t27@@0 () Int)
(declare-fun |$temp_0'bool'@3| () Bool)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@1 () T@$Memory_181217)
(declare-fun $1_DiemAccount_AccountOperationsCapability_$memory@0 () T@$Memory_181217)
(declare-fun |Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|T@[Int]$1_DiemAccount_AccountOperationsCapability| Int T@$1_DiemAccount_AccountOperationsCapability) |T@[Int]$1_DiemAccount_AccountOperationsCapability|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_AccountOperationsCapability|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_AccountOperationsCapability)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0| () T@$1_DiemAccount_AccountOperationsCapability)
(declare-fun |$temp_0'bool'@2| () Bool)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@1 () T@$Memory_179374)
(declare-fun $1_AccountFreezing_FreezingBit_$memory@0 () T@$Memory_179374)
(declare-fun |Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|T@[Int]$1_AccountFreezing_FreezingBit| Int T@$1_AccountFreezing_FreezingBit) |T@[Int]$1_AccountFreezing_FreezingBit|)
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_AccountFreezing_FreezingBit|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_AccountFreezing_FreezingBit)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_AccountFreezing_FreezingBit'@0| () T@$1_AccountFreezing_FreezingBit)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $1_Event_EventHandleGenerator_$memory@1 () T@$Memory_133774)
(declare-fun $1_Event_EventHandleGenerator_$memory () T@$Memory_133774)
(declare-fun $1_Event_EventHandleGenerator_$memory@0 () T@$Memory_133774)
(declare-fun |Store__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int T@$1_Event_EventHandleGenerator) |T@[Int]$1_Event_EventHandleGenerator|)
(declare-fun |Select__T@[Int]$1_Event_EventHandleGenerator_| (|T@[Int]$1_Event_EventHandleGenerator| Int) T@$1_Event_EventHandleGenerator)
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Event_EventHandleGenerator|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Event_EventHandleGenerator)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Event_EventHandleGenerator_| (|Store__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Event_EventHandleGenerator_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_Event_EventHandleGenerator'@0| () T@$1_Event_EventHandleGenerator)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $1_DiemAccount_DiemAccount_$memory@1 () T@$Memory_180324)
(declare-fun $1_DiemAccount_DiemAccount_$memory@0 () T@$Memory_180324)
(declare-fun |Store__T@[Int]$1_DiemAccount_DiemAccount_| (|T@[Int]$1_DiemAccount_DiemAccount| Int T@$1_DiemAccount_DiemAccount) |T@[Int]$1_DiemAccount_DiemAccount|)
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_DiemAccount_DiemAccount|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_DiemAccount_DiemAccount)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|Store__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_DiemAccount_DiemAccount_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$1_DiemAccount_DiemAccount'@0| () T@$1_DiemAccount_DiemAccount)
(declare-fun $t19@@0 () Int)
(declare-fun $t20 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@1@@0 () T@$Memory_168125)
(declare-fun $1_VASP_ParentVASP_$memory@0@@1 () T@$Memory_168189)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 () Int)
(declare-fun $1_VASP_ChildVASP_$memory@2 () T@$Memory_168125)
(declare-fun $1_VASP_ParentVASP_$memory@1@@0 () T@$Memory_168189)
(declare-fun $1_VASP_ChildVASP_$memory@0@@0 () T@$Memory_168125)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t37@1 () T@$1_VASP_ChildVASP)
(declare-fun $abort_code@3@@0 () Int)
(declare-fun $abort_flag@2@@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@2 () T@$Mutation_16749)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@1 () T@$Mutation_16749)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@3 () T@$Mutation_168591)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 () T@$Mutation_168591)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_flag@1@@0 () Bool)
(declare-fun $abort_code@2@@0 () Int)
(declare-fun inline$$Lt$0$dst@1@@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 () Int)
(declare-fun |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@0 () T@$Mutation_168591)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t27@1 () T@$Mutation_168591)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 () Int)
(declare-fun inline$$Not$0$dst@1@@1 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t19@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t17@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t15@0 () Bool)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t14@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t9@0 () T@$Mutation_16749)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t28@0 () T@$Mutation_16749)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t11@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t12@0 () Int)
(declare-fun inline$$1_VASP_publish_child_vasp_credential$0$$t13@0 () Int)
(declare-fun $t14@@1 () Int)
(declare-fun $t15@@1 () Int)
(declare-fun $t16@@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t6@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t9@0 () Bool)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t5@0 () Bool)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t4@0 () Int)
(declare-fun $1_Roles_RoleId_$memory@2 () T@$Memory_141115)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1| () Bool)
(declare-fun $1_Roles_RoleId_$memory@1 () T@$Memory_141115)
(declare-fun $1_Roles_RoleId_$memory@0 () T@$Memory_141115)
(declare-fun |Store__T@[Int]$1_Roles_RoleId_| (|T@[Int]$1_Roles_RoleId| Int T@$1_Roles_RoleId) |T@[Int]$1_Roles_RoleId|)
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_Roles_RoleId|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_Roles_RoleId)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_Roles_RoleId_| (|Store__T@[Int]$1_Roles_RoleId_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_Roles_RoleId_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Roles_new_child_vasp_role$0$$temp_0'$1_Roles_RoleId'@1| () T@$1_Roles_RoleId)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t8@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t2@0 () Int)
(declare-fun inline$$1_Roles_new_child_vasp_role$0$$t3@0 () Int)
(declare-fun $t12@@1 () Int)
(declare-fun $t13@@1 () Int)
(declare-fun $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory () T@$Memory_143212)
(declare-fun $1_ValidatorConfig_ValidatorConfig_$memory () T@$Memory_144065)
(declare-fun |Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|T@[Int]$1_ValidatorConfig_ValidatorConfig| Int) T@$1_ValidatorConfig_ValidatorConfig)
(declare-fun |$1_Diem_MintCapability'$1_XUS_XUS'_$memory| () T@$Memory_155433)
(declare-fun |$1_Diem_MintCapability'$1_XDX_XDX'_$memory| () T@$Memory_155520)
(declare-fun |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory| () T@$Memory_150713)
(declare-fun |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory| () T@$Memory_150800)
(declare-fun |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory| () T@$Memory_156102)
(declare-fun |$1_Diem_Preburn'$1_XUS_XUS'_$memory| () T@$Memory_155693)
(declare-fun |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory| () T@$Memory_156201)
(declare-fun |$1_Diem_Preburn'$1_XDX_XDX'_$memory| () T@$Memory_155784)
(declare-fun |$1_Diem_Preburn'#0'_$memory| () T@$Memory_155875)
(declare-fun |$1_Diem_PreburnQueue'#0'_$memory| () T@$Memory_156300)
(declare-fun $1_DualAttestation_Credential_$memory () T@$Memory_175640)
(declare-fun $1_VASPDomain_VASPDomainManager_$memory () T@$Memory_167272)
(declare-fun $1_DesignatedDealer_Dealer_$memory () T@$Memory_179126)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'| Int) |T@$1_Diem_CurrencyInfo'$1_XUS_XUS'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'| Int) |T@$1_Diem_CurrencyInfo'$1_XDX_XDX'|)
(declare-fun |Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|T@[Int]$1_Diem_CurrencyInfo'#0'| Int) |T@$1_Diem_CurrencyInfo'#0'|)
(push 1)
(set-info :boogie-vc-id $1_DiemAccount_create_child_vasp_account$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 429646) (let ((L2_correct  (and (=> (= (ControlFlow 0 264000) (- 0 441389)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) _$t1@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1@@1 0)) (= _$t1@@1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t2)) 32)))) (=> (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) _$t1@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)) 5))) (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0))) (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)) 1) 65536)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (= _$t1@@1 0)) (= _$t1@@1 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t2)) 32))) (=> (= (ControlFlow 0 264000) (- 0 441564)) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) _$t1@@1) (= 6 $t10@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)) 5)) (= 3 $t10@0))) (and (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) _$t1@@1)) (= 6 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)) (= 7 $t10@0))) (and (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)) 1) 65536) (= 8 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)) (= 5 $t10@0))) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)) 5)) (= 3 $t10@0))) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 $t10@0))) (and (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (= 5 $t10@0))) (and (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (= 5 $t10@0))) (and (= _$t1@@1 0) (= 7 $t10@0))) (and (= _$t1@@1 1) (= 7 $t10@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1) (= 6 $t10@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t10@0))) (and (not (= (+ 16 (seq.len _$t2)) 32)) (= 7 $t10@0))))))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@62 (= $abort_code@54 $abort_code@54)) (and (= $t10@0 $abort_code@54) (= (ControlFlow 0 263460) 264000))) L2_correct)))
(let ((anon33_Then_correct@@0  (=> $t21 (=> (and (and (or (or (or (or (and (= $t17@@0 0) (= 7 $t10@@0)) (and (= $t17@@0 1) (= 7 $t10@@0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $t17@@0) (= 6 $t10@@0))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (= 5 $t10@@0))) (and (not (= (+ 16 (seq.len _$t2)) 32)) (= 7 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0 $t10@@0) (= (ControlFlow 0 264154) 264000))) L2_correct))))
(let ((anon32_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t10@0 $abort_code@5) (= (ControlFlow 0 264168) 264000))) L2_correct)))
(let ((anon31_Then_correct@@0  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t10@0 $abort_code@5) (= (ControlFlow 0 264182) 264000))) L2_correct)))
(let ((anon30_Then_correct@@0  (=> (and (and $abort_flag@0@@1 (= $abort_code@1@@1 $abort_code@1@@1)) (and (= $t10@0 $abort_code@1@@1) (= (ControlFlow 0 264196) 264000))) L2_correct)))
(let ((anon28_Then_correct@@0  (=> $t9@@1 (=> (and (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t8@@0)) (= 5 $t10@@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t8@@0)) 5)) (= 3 $t10@@0))) (= $t10@@0 $t10@@0)) (and (= $t10@0 $t10@@0) (= (ControlFlow 0 264262) 264000))) L2_correct))))
(let ((anon38_Else_correct  (=> (not $abort_flag@62) (=> (and (= $t28@@0 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t29 ($1_DiemAccount_CreateAccountEvent _$t1@@1 (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) _$t1@@1))))) (and (=> (= (ControlFlow 0 263446) (- 0 440855)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) _$t1@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) _$t1@@1)) (and (=> (= (ControlFlow 0 263446) (- 0 440864)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0))) (and (=> (= (ControlFlow 0 263446) (- 0 440876)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t5@@0)) 5))) (and (=> (= (ControlFlow 0 263446) (- 0 440894)) (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) _$t1@@1)))) (=> (not (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) _$t1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) _$t1@@1))) (and (=> (= (ControlFlow 0 263446) (- 0 440904)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0))) (and (=> (= (ControlFlow 0 263446) (- 0 440916)) (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)) 1) 65536))) (=> (not (> (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $t6@@0)) 1) 65536)) (and (=> (= (ControlFlow 0 263446) (- 0 440934)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0))) (and (=> (= (ControlFlow 0 263446) (- 0 440946)) (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)) 5)))) (=> (not (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t7@@0)) 5))) (and (=> (= (ControlFlow 0 263446) (- 0 440964)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 263446) (- 0 440971)) (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (=> (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 263446) (- 0 440989)) (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (=> (not (and (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) _$t1@@1))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))) (and (=> (= (ControlFlow 0 263446) (- 0 441010)) (not (= _$t1@@1 0))) (=> (not (= _$t1@@1 0)) (and (=> (= (ControlFlow 0 263446) (- 0 441020)) (not (= _$t1@@1 1))) (=> (not (= _$t1@@1 1)) (and (=> (= (ControlFlow 0 263446) (- 0 441030)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) _$t1@@1)) (and (=> (= (ControlFlow 0 263446) (- 0 441039)) (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))))) (=> (not (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (and (=> (= (ControlFlow 0 263446) (- 0 441056)) (not (not (= (+ 16 (seq.len _$t2)) 32)))) (=> (not (not (= (+ 16 (seq.len _$t2)) 32))) (and (=> (= (ControlFlow 0 263446) (- 0 441074)) (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) _$t1@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) _$t1@@1) (and (=> (= (ControlFlow 0 263446) (- 0 441081)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) _$t1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) _$t1@@1)) 6))) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) _$t1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) _$t1@@1)) 6)) (and (=> (= (ControlFlow 0 263446) (- 0 441088)) (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@2) (|$addr#$signer| _$t0@@1))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@1))) 1))) (=> (= (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory@2) (|$addr#$signer| _$t0@@1))) (+ (|$num_children#$1_VASP_ParentVASP| (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$addr#$signer| _$t0@@1))) 1)) (and (=> (= (ControlFlow 0 263446) (- 0 441109)) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory@3) _$t1@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory@3) _$t1@@1) (and (=> (= (ControlFlow 0 263446) (- 0 441116)) (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@2) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory@3) _$t1@@1))) (|$addr#$signer| _$t0@@1))) (=> (= (ite (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory@2) _$t1@@1) _$t1@@1 (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory@3) _$t1@@1))) (|$addr#$signer| _$t0@@1)) (and (=> (= (ControlFlow 0 263446) (- 0 441129)) (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@1)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@1) (and (=> (= (ControlFlow 0 263446) (- 0 441136)) (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@1) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0)))) (=> (= (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory@3|) _$t1@@1) (|$1_DiemAccount_Balance'#0'| (|$1_Diem_Diem'#0'| 0))) (and (=> (= (ControlFlow 0 263446) (- 0 441151)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1)) (and (=> (= (ControlFlow 0 263446) (- 0 441169)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0))))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7|) _$t1@@1) (|$1_DiemAccount_Balance'$1_XUS_XUS'| (|$1_Diem_Diem'$1_XUS_XUS'| 0)))) (and (=> (= (ControlFlow 0 263446) (- 0 441195)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1))) (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1)) (and (=> (= (ControlFlow 0 263446) (- 0 441213)) (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0))))) (=> (=> (and _$t3 (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1))) (= (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7|) _$t1@@1) (|$1_DiemAccount_Balance'$1_XDX_XDX'| (|$1_Diem_Diem'$1_XDX_XDX'| 0)))) (and (=> (= (ControlFlow 0 263446) (- 0 441239)) (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@0) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) addr@@0)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@0)))))
 :qid |RecoveryAddresscvc4bpl.16613:15|
 :skolemid |281|
))) (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@1) (= (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) addr@@1)) (|$authentication_key#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@1)))))
 :qid |RecoveryAddresscvc4bpl.16613:15|
 :skolemid |281|
)) (and (=> (= (ControlFlow 0 263446) (- 0 441274)) (forall ((addr@@2 Int) ) (!  (=> (|$IsValid'address'| addr@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) addr@@2) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory@3|) addr@@2))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) addr@@2))))))
 :qid |RecoveryAddresscvc4bpl.16618:15|
 :skolemid |282|
))) (=> (forall ((addr@@3 Int) ) (!  (=> (|$IsValid'address'| addr@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3) (>= (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory@3|) addr@@3))) (|$value#$1_Diem_Diem'#0'| (|$coin#$1_DiemAccount_Balance'#0'| (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) addr@@3))))))
 :qid |RecoveryAddresscvc4bpl.16618:15|
 :skolemid |282|
)) (and (=> (= (ControlFlow 0 263446) (- 0 441313)) (let ((actual ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected (let ((stream@@2 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) $t28@@0)))
(let ((stream_new (let ((len (|l#Multiset_102809| stream@@2)))
(let ((cnt (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29))))
(Multiset_102809 (|Store__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@2) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29) (+ cnt 1)) (+ len 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) $t28@@0 stream_new))))))
 (and (<= (|counter#$EventStore| expected) (|counter#$EventStore| actual)) (forall ((handle@@3 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| expected) handle@@3)) (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| actual) handle@@3))) (forall ((v@@49 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| expected) handle@@3)) v@@49) (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| actual) handle@@3)) v@@49))
 :qid |RecoveryAddresscvc4bpl.134:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc4bpl.3279:13|
 :skolemid |90|
)))))) (=> (let ((actual@@0 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@0 (let ((stream@@3 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) $t28@@0)))
(let ((stream_new@@0 (let ((len@@0 (|l#Multiset_102809| stream@@3)))
(let ((cnt@@0 (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29))))
(Multiset_102809 (|Store__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@3) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29) (+ cnt@@0 1)) (+ len@@0 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) $t28@@0 stream_new@@0))))))
 (and (<= (|counter#$EventStore| expected@@0) (|counter#$EventStore| actual@@0)) (forall ((handle@@4 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| expected@@0) handle@@4)) (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| actual@@0) handle@@4))) (forall ((v@@50 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| expected@@0) handle@@4)) v@@50) (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| actual@@0) handle@@4)) v@@50))
 :qid |RecoveryAddresscvc4bpl.134:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc4bpl.3279:13|
 :skolemid |90|
))))) (=> (= (ControlFlow 0 263446) (- 0 441338)) (let ((actual@@1 ($EventStore (- (|counter#$EventStore| $es@0) (|counter#$EventStore| $es)) (|lambda#2| (|streams#$EventStore| $es@0) (|streams#$EventStore| $es)))))
(let ((expected@@1 (let ((stream@@4 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) $t28@@0)))
(let ((stream_new@@1 (let ((len@@1 (|l#Multiset_102809| stream@@4)))
(let ((cnt@@1 (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@4) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29))))
(Multiset_102809 (|Store__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@4) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t29) (+ cnt@@1 1)) (+ len@@1 1))))))
($EventStore (+ (|counter#$EventStore| $EmptyEventStore) 1) (|Store__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $EmptyEventStore) $t28@@0 stream_new@@1))))))
 (and (<= (|counter#$EventStore| actual@@1) (|counter#$EventStore| expected@@1)) (forall ((handle@@5 T@$1_Event_EventHandle) ) (!  (and (<= (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| actual@@1) handle@@5)) (|l#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| expected@@1) handle@@5))) (forall ((v@@51 T@$EventRep) ) (! (<= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| actual@@1) handle@@5)) v@@51) (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| expected@@1) handle@@5)) v@@51))
 :qid |RecoveryAddresscvc4bpl.134:13|
 :skolemid |3|
)))
 :qid |RecoveryAddresscvc4bpl.3279:13|
 :skolemid |90|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6|) (= $abort_code@54 |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6|) (= $abort_flag@62 true))) (and (=> (= (ControlFlow 0 258959) 263460) anon38_Then_correct) (=> (= (ControlFlow 0 258959) 263446) anon38_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|  (=> (and $abort_flag@40 (= $abort_code@35 $abort_code@35)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| $abort_code@35)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 262830) 258959))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|  (=> (and $abort_flag@59 (= $abort_code@51 $abort_code@51)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| $abort_code@51)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|) (= (ControlFlow 0 258953) 258959))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|  (=> (and $abort_flag@22 (= $abort_code@20 $abort_code@20)) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@6| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t5@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@6| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262844) 258959))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L12_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|  (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@7| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5|) (= $abort_code@54 $abort_code@53)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@7| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5|) (= $abort_flag@62 $abort_flag@61))) (and (=> (= (ControlFlow 0 254974) 263460) anon38_Then_correct) (=> (= (ControlFlow 0 254974) 263446) anon38_Else_correct)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|  (=> (= $abort_code@53 $abort_code@52) (=> (and (and (= $abort_flag@61 $abort_flag@60) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4|) (= (ControlFlow 0 255084) 254974))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|  (=> (not $abort_flag@59) (=> (and (and (= $abort_code@52 $abort_code@51) (= $abort_flag@60 $abort_flag@59)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3|) (= (ControlFlow 0 258939) 255084))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@58) (= $abort_code@51 $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= $abort_flag@59 $abort_flag@58))) (and (=> (= (ControlFlow 0 258793) 258953) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 258793) 258939) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|  (=> (= $abort_code@51 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@3| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2|) (= $abort_flag@59 true)) (and (=> (= (ControlFlow 0 255878) 258953) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 255878) 258939) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|  (=> $abort_flag@58 (=> (and (and (= $abort_code@50 $abort_code@50) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@50)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1|) (= (ControlFlow 0 258807) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (=> (and (= $abort_code@50 $EXEC_FAILURE_CODE) (= $abort_flag@58 true)) (and (=> (= (ControlFlow 0 258859) 258807) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 258859) 258793) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 258857) 258859)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0| ($Memory_181443 (|Store__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@1| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@0|)) (and (= $abort_code@50 $abort_code@49) (= $abort_flag@58 $abort_flag@57))) (and (=> (= (ControlFlow 0 258783) 258807) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 258783) 258793) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|  (=> (and (not $abort_flag@57) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XDX_XDX'| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 258761) 258857) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 258761) 258783) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|  (=> $abort_flag@57 (=> (and (and (= $abort_code@49 $abort_code@49) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@49)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 258873) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| (|$1_Diem_Diem'$1_XDX_XDX'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|) (= $abort_flag@57 $abort_flag@56)) (and (= $abort_code@49 $abort_code@48) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t3@1|))) (and (=> (= (ControlFlow 0 258713) 258873) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 258713) 258761) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= $abort_flag@57 true)) (and (= $abort_code@49 |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@1| |inline$$1_Diem_zero'$1_XDX_XDX'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 258743) 258873) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 258743) 258761) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XDX_XDX'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 258685) 258743) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 258685) 258713) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|  (=> (and inline$$Not$4$dst@1 (= (ControlFlow 0 258749) 258685)) |inline$$1_Diem_zero'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|  (=> (not inline$$Not$4$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 258532) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t20@0|) (= inline$$Not$4$dst@1 inline$$Not$4$dst@1))) (and (=> (= (ControlFlow 0 258516) 258749) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 258516) 258532) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon28_Else_correct|))))))
(let ((inline$$Not$4$anon0_correct  (=> (and (= inline$$Not$4$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1|)) (= (ControlFlow 0 258480) 258516)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$1$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= (ControlFlow 0 258486) 258480)) inline$$Not$4$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$1$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 258440) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|  (=> (and (not $abort_flag@56) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@1))) (and (=> (= (ControlFlow 0 258424) 258486) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 258424) 258440) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|  (=> $abort_flag@56 (=> (and (and (= $abort_code@48 $abort_code@48) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@48)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 258887) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$1$L9_correct  (=> (= $abort_flag@56 true) (=> (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$ret0@0) (= $abort_code@48 inline$$1_Roles_can_hold_balance$1$$t4@1)) (and (=> (= (ControlFlow 0 258314) 258887) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 258314) 258424) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Then_correct  (=> (and (and $abort_flag@54 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@46) (= (ControlFlow 0 258308) 258314))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Then_correct  (=> (and (and $abort_flag@49 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@42) (= (ControlFlow 0 258346) 258314))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Then_correct  (=> (and (and $abort_flag@45 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_Roles_can_hold_balance$1$$t4@1 $abort_code@39) (= (ControlFlow 0 258378) 258314))) inline$$1_Roles_can_hold_balance$1$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_flag@56 $abort_flag@55)) (and (= inline$$1_Roles_can_hold_balance$1$$ret0@1 inline$$1_Roles_can_hold_balance$1$$t2@1) (= $abort_code@48 $abort_code@47))) (and (=> (= (ControlFlow 0 258294) 258887) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 258294) 258424) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$1$anon17_Else_correct  (=> (and (not $abort_flag@54) (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@1) (= $abort_code@47 $abort_code@46)) (and (= $abort_flag@55 $abort_flag@54) (= (ControlFlow 0 258282) 258294))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@53) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_role$5$$ret0@1) (= $abort_flag@54 $abort_flag@53))) (and (=> (= (ControlFlow 0 258240) 258308) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 258240) 258282) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct  (=> (and (and $abort_flag@53 (= $abort_code@46 $abort_code@46)) (and (= inline$$1_Roles_has_designated_dealer_role$1$$ret0@1 inline$$1_Roles_has_designated_dealer_role$1$$ret0@0) (= $abort_flag@54 true))) (and (=> (= (ControlFlow 0 258258) 258308) inline$$1_Roles_can_hold_balance$1$anon17_Then_correct) (=> (= (ControlFlow 0 258258) 258282) inline$$1_Roles_can_hold_balance$1$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Then_correct  (=> $abort_flag@51 (=> (and (and (= $abort_code@44 $abort_code@44) (= $abort_flag@53 true)) (and (= $abort_code@46 $abort_code@44) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$ret0@0))) (and (=> (= (ControlFlow 0 258164) 258258) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 258164) 258240) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t2@1) (= $abort_flag@53 $abort_flag@52)) (and (= $abort_code@46 $abort_code@45) (= inline$$1_Roles_has_role$5$$ret0@1 inline$$1_Roles_has_role$5$$t2@1))) (and (=> (= (ControlFlow 0 258100) 258258) inline$$1_Roles_has_designated_dealer_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 258100) 258240) inline$$1_Roles_has_designated_dealer_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon11_Else_correct  (=> (and (and (and (not $abort_flag@51) (= inline$$1_Roles_has_role$5$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$5$$t6@2))) (and (= inline$$1_Roles_has_role$5$$t9@1 (= inline$$1_Roles_has_role$5$$t8@1 2)) (= inline$$1_Roles_has_role$5$$t9@1 inline$$1_Roles_has_role$5$$t9@1))) (and (and (= $abort_flag@52 $abort_flag@51) (= inline$$1_Roles_has_role$5$$t2@1 inline$$1_Roles_has_role$5$$t9@1)) (and (= $abort_code@45 $abort_code@44) (= (ControlFlow 0 258146) 258100)))) inline$$1_Roles_has_role$5$L3_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Then$1_correct  (=> (= $abort_code@44 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@51 true) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@0)) (and (=> (= (ControlFlow 0 258216) 258164) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 258216) 258146) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= (ControlFlow 0 258214) 258216)) inline$$1_Roles_has_role$5$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$5$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$5$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)) (= $abort_code@44 $abort_code@43)) (and (= $abort_flag@51 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t6@2 inline$$1_Roles_has_role$5$$t6@1))) (and (=> (= (ControlFlow 0 258118) 258164) inline$$1_Roles_has_role$5$anon11_Then_correct) (=> (= (ControlFlow 0 258118) 258146) inline$$1_Roles_has_role$5$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$5$anon9_Then_correct  (=> inline$$1_Roles_has_role$5$$t5@1 (and (=> (= (ControlFlow 0 258104) 258214) inline$$1_Roles_has_role$5$anon10_Then_correct) (=> (= (ControlFlow 0 258104) 258118) inline$$1_Roles_has_role$5$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$5$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$5$$t5@1) (= false false)) (=> (and (and (= $abort_flag@52 $abort_flag@50) (= inline$$1_Roles_has_role$5$$t2@1 false)) (and (= $abort_code@45 $abort_code@43) (= (ControlFlow 0 258088) 258100))) inline$$1_Roles_has_role$5$L3_correct))))
(let ((inline$$1_Roles_has_role$5$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$5$$t4@0 inline$$1_Roles_has_role$5$$t4@0) (= inline$$1_Roles_has_role$5$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$5$$t4@0)))) (and (=> (= (ControlFlow 0 258068) 258104) inline$$1_Roles_has_role$5$anon9_Then_correct) (=> (= (ControlFlow 0 258068) 258088) inline$$1_Roles_has_role$5$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 258222) 258068)) inline$$1_Roles_has_role$5$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$1$$t1@1) (= (ControlFlow 0 258264) 258222)) inline$$1_Roles_has_designated_dealer_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$1$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$1$$t2@1 true) (= $abort_code@47 $abort_code@43)) (and (= $abort_flag@55 $abort_flag@50) (= (ControlFlow 0 258332) 258294))) inline$$1_Roles_can_hold_balance$1$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon15_Else_correct  (=> (not $abort_flag@49) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1) (= inline$$1_Roles_can_hold_balance$1$$t1@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@1)) (and (= $abort_flag@50 $abort_flag@49) (= $abort_code@43 $abort_code@42))) (and (=> (= (ControlFlow 0 257582) 258332) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 257582) 258264) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@48) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$4$$ret0@1) (= $abort_flag@49 $abort_flag@48))) (and (=> (= (ControlFlow 0 257540) 258346) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 257540) 257582) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@48 (= $abort_code@42 $abort_code@42)) (and (= inline$$1_Roles_has_child_VASP_role$1$$ret0@1 inline$$1_Roles_has_child_VASP_role$1$$ret0@0) (= $abort_flag@49 true))) (and (=> (= (ControlFlow 0 257558) 258346) inline$$1_Roles_can_hold_balance$1$anon15_Then_correct) (=> (= (ControlFlow 0 257558) 257582) inline$$1_Roles_can_hold_balance$1$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Then_correct  (=> $abort_flag@46 (=> (and (and (= $abort_code@40 $abort_code@40) (= $abort_code@42 $abort_code@40)) (and (= $abort_flag@48 true) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$ret0@0))) (and (=> (= (ControlFlow 0 257464) 257558) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 257464) 257540) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t2@1) (= $abort_code@42 $abort_code@41)) (and (= $abort_flag@48 $abort_flag@47) (= inline$$1_Roles_has_role$4$$ret0@1 inline$$1_Roles_has_role$4$$t2@1))) (and (=> (= (ControlFlow 0 257400) 257558) inline$$1_Roles_has_child_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 257400) 257540) inline$$1_Roles_has_child_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon11_Else_correct  (=> (and (and (and (not $abort_flag@46) (= inline$$1_Roles_has_role$4$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$4$$t6@2))) (and (= inline$$1_Roles_has_role$4$$t9@1 (= inline$$1_Roles_has_role$4$$t8@1 6)) (= inline$$1_Roles_has_role$4$$t9@1 inline$$1_Roles_has_role$4$$t9@1))) (and (and (= $abort_code@41 $abort_code@40) (= inline$$1_Roles_has_role$4$$t2@1 inline$$1_Roles_has_role$4$$t9@1)) (and (= $abort_flag@47 $abort_flag@46) (= (ControlFlow 0 257446) 257400)))) inline$$1_Roles_has_role$4$L3_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Then$1_correct  (=> (= $abort_flag@46 true) (=> (and (= $abort_code@40 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@0)) (and (=> (= (ControlFlow 0 257516) 257464) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 257516) 257446) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= (ControlFlow 0 257514) 257516)) inline$$1_Roles_has_role$4$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$4$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$4$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)) (= $abort_flag@46 $abort_flag@45)) (and (= $abort_code@40 $abort_code@39) (= inline$$1_Roles_has_role$4$$t6@2 inline$$1_Roles_has_role$4$$t6@1))) (and (=> (= (ControlFlow 0 257418) 257464) inline$$1_Roles_has_role$4$anon11_Then_correct) (=> (= (ControlFlow 0 257418) 257446) inline$$1_Roles_has_role$4$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$4$anon9_Then_correct  (=> inline$$1_Roles_has_role$4$$t5@1 (and (=> (= (ControlFlow 0 257404) 257514) inline$$1_Roles_has_role$4$anon10_Then_correct) (=> (= (ControlFlow 0 257404) 257418) inline$$1_Roles_has_role$4$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$4$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$4$$t5@1) (= false false)) (=> (and (and (= $abort_code@41 $abort_code@39) (= inline$$1_Roles_has_role$4$$t2@1 false)) (and (= $abort_flag@47 $abort_flag@45) (= (ControlFlow 0 257388) 257400))) inline$$1_Roles_has_role$4$L3_correct))))
(let ((inline$$1_Roles_has_role$4$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$4$$t4@0 inline$$1_Roles_has_role$4$$t4@0) (= inline$$1_Roles_has_role$4$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$4$$t4@0)))) (and (=> (= (ControlFlow 0 257368) 257404) inline$$1_Roles_has_role$4$anon9_Then_correct) (=> (= (ControlFlow 0 257368) 257388) inline$$1_Roles_has_role$4$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 257522) 257368)) inline$$1_Roles_has_role$4$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$1$$ret0@1) (= (ControlFlow 0 257564) 257522)) inline$$1_Roles_has_child_VASP_role$1$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$1$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$1$$t1@1 true)) (and (= $abort_flag@50 $abort_flag@45) (= $abort_code@43 $abort_code@39))) (and (=> (= (ControlFlow 0 258364) 258332) inline$$1_Roles_can_hold_balance$1$anon16_Then_correct) (=> (= (ControlFlow 0 258364) 258264) inline$$1_Roles_can_hold_balance$1$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$1$anon13_Else_correct  (=> (not $abort_flag@45) (and (=> (= (ControlFlow 0 256884) 258364) inline$$1_Roles_can_hold_balance$1$anon14_Then_correct) (=> (= (ControlFlow 0 256884) 257564) inline$$1_Roles_can_hold_balance$1$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct  (=> (and (and (not $abort_flag@44) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_role$3$$ret0@1) (= $abort_flag@45 $abort_flag@44))) (and (=> (= (ControlFlow 0 256852) 258378) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 256852) 256884) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct  (=> (and (and $abort_flag@44 (= $abort_code@39 $abort_code@39)) (and (= inline$$1_Roles_has_parent_VASP_role$1$$ret0@1 inline$$1_Roles_has_parent_VASP_role$1$$ret0@0) (= $abort_flag@45 true))) (and (=> (= (ControlFlow 0 256870) 258378) inline$$1_Roles_can_hold_balance$1$anon13_Then_correct) (=> (= (ControlFlow 0 256870) 256884) inline$$1_Roles_can_hold_balance$1$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Then_correct  (=> $abort_flag@42 (=> (and (and (= $abort_code@37 $abort_code@37) (= $abort_code@39 $abort_code@37)) (and (= $abort_flag@44 true) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$ret0@0))) (and (=> (= (ControlFlow 0 256776) 256870) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 256776) 256852) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t2@1) (= $abort_code@39 $abort_code@38)) (and (= $abort_flag@44 $abort_flag@43) (= inline$$1_Roles_has_role$3$$ret0@1 inline$$1_Roles_has_role$3$$t2@1))) (and (=> (= (ControlFlow 0 256712) 256870) inline$$1_Roles_has_parent_VASP_role$1$anon3_Then_correct) (=> (= (ControlFlow 0 256712) 256852) inline$$1_Roles_has_parent_VASP_role$1$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon11_Else_correct  (=> (and (and (and (not $abort_flag@42) (= inline$$1_Roles_has_role$3$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$3$$t6@2))) (and (= inline$$1_Roles_has_role$3$$t9@1 (= inline$$1_Roles_has_role$3$$t8@1 5)) (= inline$$1_Roles_has_role$3$$t9@1 inline$$1_Roles_has_role$3$$t9@1))) (and (and (= $abort_code@38 $abort_code@37) (= inline$$1_Roles_has_role$3$$t2@1 inline$$1_Roles_has_role$3$$t9@1)) (and (= $abort_flag@43 $abort_flag@42) (= (ControlFlow 0 256758) 256712)))) inline$$1_Roles_has_role$3$L3_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Then$1_correct  (=> (= $abort_flag@42 true) (=> (and (= $abort_code@37 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@0)) (and (=> (= (ControlFlow 0 256828) 256776) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 256828) 256758) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= (ControlFlow 0 256826) 256828)) inline$$1_Roles_has_role$3$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$3$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$3$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)) (= $abort_flag@42 $abort_flag@41)) (and (= $abort_code@37 $abort_code@36) (= inline$$1_Roles_has_role$3$$t6@2 inline$$1_Roles_has_role$3$$t6@1))) (and (=> (= (ControlFlow 0 256730) 256776) inline$$1_Roles_has_role$3$anon11_Then_correct) (=> (= (ControlFlow 0 256730) 256758) inline$$1_Roles_has_role$3$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$3$anon9_Then_correct  (=> inline$$1_Roles_has_role$3$$t5@1 (and (=> (= (ControlFlow 0 256716) 256826) inline$$1_Roles_has_role$3$anon10_Then_correct) (=> (= (ControlFlow 0 256716) 256730) inline$$1_Roles_has_role$3$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$3$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$3$$t5@1) (= false false)) (=> (and (and (= $abort_code@38 $abort_code@36) (= inline$$1_Roles_has_role$3$$t2@1 false)) (and (= $abort_flag@43 $abort_flag@41) (= (ControlFlow 0 256700) 256712))) inline$$1_Roles_has_role$3$L3_correct))))
(let ((inline$$1_Roles_has_role$3$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$3$$t4@0 inline$$1_Roles_has_role$3$$t4@0) (= inline$$1_Roles_has_role$3$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$3$$t4@0)))) (and (=> (= (ControlFlow 0 256680) 256716) inline$$1_Roles_has_role$3$anon9_Then_correct) (=> (= (ControlFlow 0 256680) 256700) inline$$1_Roles_has_role$3$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$1$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 256834) 256680)) inline$$1_Roles_has_role$3$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 256876) 256834)) inline$$1_Roles_has_parent_VASP_role$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$1$$t1@1 (= (ControlFlow 0 258384) 256876)) inline$$1_Roles_can_hold_balance$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$1$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 255872) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|  (=> (and (not $abort_flag@41) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1))) (and (=> (= (ControlFlow 0 255856) 258384) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 255856) 255872) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|  (=> $abort_flag@41 (=> (and (and (= $abort_code@36 $abort_code@36) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| $abort_code@36)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 258901) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$1$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$1$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$1$$t1@1 inline$$1_DiemAccount_exists_at$1$$t1@1)) (and (=> (= (ControlFlow 0 255814) 258901) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 255814) 255856) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|) (= (ControlFlow 0 255820) 255814)) inline$$1_DiemAccount_exists_at$1$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@2| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 258927) 255878))) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 255709) 258927) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 255709) 255820) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|  (=> (and inline$$Not$3$dst@1 (= (ControlFlow 0 258931) 255709)) |inline$$1_DiemAccount_add_currency'$1_XDX_XDX'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|  (=> (not inline$$Not$3$dst@1) (=> (and (and (= $abort_code@52 $abort_code@36) (= $abort_flag@60 $abort_flag@41)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@4| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 255082) 255084))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L9_correct|))))
(let ((inline$$Not$3$anon0_correct  (=> (= inline$$Not$3$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t8@1|)) (and (=> (= (ControlFlow 0 255066) 258931) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Then_correct|) (=> (= (ControlFlow 0 255066) 255082) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon22_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|  (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t8@1| (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 255072) 255066)) inline$$Not$3$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|  (=> (not $abort_flag@40) (=> (and (and (= $abort_code@36 $abort_code@35) (= $abort_flag@41 $abort_flag@40)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3|) (= (ControlFlow 0 262816) 255072))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@39) (= $abort_code@35 $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= $abort_flag@40 $abort_flag@39))) (and (=> (= (ControlFlow 0 262668) 262830) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 262668) 262816) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|  (=> (= $abort_code@35 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@3| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2|) (= $abort_flag@40 true)) (and (=> (= (ControlFlow 0 259753) 262830) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Then_correct|) (=> (= (ControlFlow 0 259753) 262816) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon21_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|  (=> $abort_flag@39 (=> (and (and (= $abort_code@34 $abort_code@34) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@34)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1|) (= (ControlFlow 0 262682) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (=> (and (= $abort_code@34 $EXEC_FAILURE_CODE) (= $abort_flag@39 true)) (and (=> (= (ControlFlow 0 262734) 262682) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 262734) 262668) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 262732) 262734)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0| ($Memory_181352 (|Store__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1|))) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@1| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@0|)) (and (= $abort_code@34 $abort_code@33) (= $abort_flag@39 $abort_flag@38))) (and (=> (= (ControlFlow 0 262658) 262682) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 262658) 262668) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|  (=> (and (not $abort_flag@38) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t22@1| (|$1_DiemAccount_Balance'$1_XUS_XUS'| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 262636) 262732) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 262636) 262658) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|  (=> $abort_flag@38 (=> (and (and (= $abort_code@33 $abort_code@33) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@33)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262748) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| (|$1_Diem_Diem'$1_XUS_XUS'| 0))) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|) (= $abort_flag@38 $abort_flag@37)) (and (= $abort_code@33 $abort_code@32) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t3@1|))) (and (=> (= (ControlFlow 0 262588) 262748) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 262588) 262636) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= $abort_flag@38 true)) (and (= $abort_code@33 |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t1@0|) (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@1| |inline$$1_Diem_zero'$1_XUS_XUS'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 262618) 262748) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 262618) 262636) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'$1_XUS_XUS'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 262560) 262618) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 262560) 262588) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|  (=> (and inline$$Not$5$dst@1 (= (ControlFlow 0 262624) 262560)) |inline$$1_Diem_zero'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|  (=> (not inline$$Not$5$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262407) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t20@0|) (= inline$$Not$5$dst@1 inline$$Not$5$dst@1))) (and (=> (= (ControlFlow 0 262391) 262624) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 262391) 262407) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon28_Else_correct|))))))
(let ((inline$$Not$5$anon0_correct  (=> (and (= inline$$Not$5$dst@1  (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1|)) (= (ControlFlow 0 262355) 262391)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$2$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= (ControlFlow 0 262361) 262355)) inline$$Not$5$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$2$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262315) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|  (=> (and (not $abort_flag@37) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@1))) (and (=> (= (ControlFlow 0 262299) 262361) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 262299) 262315) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|  (=> $abort_flag@37 (=> (and (and (= $abort_code@32 $abort_code@32) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@32)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262762) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$2$L9_correct  (=> (= $abort_flag@37 true) (=> (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$ret0@0) (= $abort_code@32 inline$$1_Roles_can_hold_balance$2$$t4@1)) (and (=> (= (ControlFlow 0 262189) 262762) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 262189) 262299) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Then_correct  (=> (and (and $abort_flag@35 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@30) (= (ControlFlow 0 262183) 262189))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Then_correct  (=> (and (and $abort_flag@30 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@26) (= (ControlFlow 0 262221) 262189))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Then_correct  (=> (and (and $abort_flag@26 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_Roles_can_hold_balance$2$$t4@1 $abort_code@23) (= (ControlFlow 0 262253) 262189))) inline$$1_Roles_can_hold_balance$2$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_flag@37 $abort_flag@36)) (and (= inline$$1_Roles_can_hold_balance$2$$ret0@1 inline$$1_Roles_can_hold_balance$2$$t2@1) (= $abort_code@32 $abort_code@31))) (and (=> (= (ControlFlow 0 262169) 262762) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 262169) 262299) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$2$anon17_Else_correct  (=> (and (not $abort_flag@35) (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@1) (= $abort_code@31 $abort_code@30)) (and (= $abort_flag@36 $abort_flag@35) (= (ControlFlow 0 262157) 262169))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@34) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_role$8$$ret0@1) (= $abort_flag@35 $abort_flag@34))) (and (=> (= (ControlFlow 0 262115) 262183) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 262115) 262157) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct  (=> (and (and $abort_flag@34 (= $abort_code@30 $abort_code@30)) (and (= inline$$1_Roles_has_designated_dealer_role$2$$ret0@1 inline$$1_Roles_has_designated_dealer_role$2$$ret0@0) (= $abort_flag@35 true))) (and (=> (= (ControlFlow 0 262133) 262183) inline$$1_Roles_can_hold_balance$2$anon17_Then_correct) (=> (= (ControlFlow 0 262133) 262157) inline$$1_Roles_can_hold_balance$2$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Then_correct  (=> $abort_flag@32 (=> (and (and (= $abort_code@28 $abort_code@28) (= $abort_flag@34 true)) (and (= $abort_code@30 $abort_code@28) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$ret0@0))) (and (=> (= (ControlFlow 0 262039) 262133) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 262039) 262115) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t2@1) (= $abort_flag@34 $abort_flag@33)) (and (= $abort_code@30 $abort_code@29) (= inline$$1_Roles_has_role$8$$ret0@1 inline$$1_Roles_has_role$8$$t2@1))) (and (=> (= (ControlFlow 0 261975) 262133) inline$$1_Roles_has_designated_dealer_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 261975) 262115) inline$$1_Roles_has_designated_dealer_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon11_Else_correct  (=> (and (and (and (not $abort_flag@32) (= inline$$1_Roles_has_role$8$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$8$$t6@2))) (and (= inline$$1_Roles_has_role$8$$t9@1 (= inline$$1_Roles_has_role$8$$t8@1 2)) (= inline$$1_Roles_has_role$8$$t9@1 inline$$1_Roles_has_role$8$$t9@1))) (and (and (= $abort_flag@33 $abort_flag@32) (= inline$$1_Roles_has_role$8$$t2@1 inline$$1_Roles_has_role$8$$t9@1)) (and (= $abort_code@29 $abort_code@28) (= (ControlFlow 0 262021) 261975)))) inline$$1_Roles_has_role$8$L3_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Then$1_correct  (=> (= $abort_code@28 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@32 true) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@0)) (and (=> (= (ControlFlow 0 262091) 262039) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 262091) 262021) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= (ControlFlow 0 262089) 262091)) inline$$1_Roles_has_role$8$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$8$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$8$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)) (= $abort_code@28 $abort_code@27)) (and (= $abort_flag@32 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t6@2 inline$$1_Roles_has_role$8$$t6@1))) (and (=> (= (ControlFlow 0 261993) 262039) inline$$1_Roles_has_role$8$anon11_Then_correct) (=> (= (ControlFlow 0 261993) 262021) inline$$1_Roles_has_role$8$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$8$anon9_Then_correct  (=> inline$$1_Roles_has_role$8$$t5@1 (and (=> (= (ControlFlow 0 261979) 262089) inline$$1_Roles_has_role$8$anon10_Then_correct) (=> (= (ControlFlow 0 261979) 261993) inline$$1_Roles_has_role$8$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$8$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$8$$t5@1) (= false false)) (=> (and (and (= $abort_flag@33 $abort_flag@31) (= inline$$1_Roles_has_role$8$$t2@1 false)) (and (= $abort_code@29 $abort_code@27) (= (ControlFlow 0 261963) 261975))) inline$$1_Roles_has_role$8$L3_correct))))
(let ((inline$$1_Roles_has_role$8$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$8$$t4@0 inline$$1_Roles_has_role$8$$t4@0) (= inline$$1_Roles_has_role$8$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$8$$t4@0)))) (and (=> (= (ControlFlow 0 261943) 261979) inline$$1_Roles_has_role$8$anon9_Then_correct) (=> (= (ControlFlow 0 261943) 261963) inline$$1_Roles_has_role$8$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 262097) 261943)) inline$$1_Roles_has_role$8$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$2$$t1@1) (= (ControlFlow 0 262139) 262097)) inline$$1_Roles_has_designated_dealer_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$2$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$2$$t2@1 true) (= $abort_code@31 $abort_code@27)) (and (= $abort_flag@36 $abort_flag@31) (= (ControlFlow 0 262207) 262169))) inline$$1_Roles_can_hold_balance$2$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon15_Else_correct  (=> (not $abort_flag@30) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1) (= inline$$1_Roles_can_hold_balance$2$$t1@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@1)) (and (= $abort_flag@31 $abort_flag@30) (= $abort_code@27 $abort_code@26))) (and (=> (= (ControlFlow 0 261457) 262207) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 261457) 262139) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@29) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$7$$ret0@1) (= $abort_flag@30 $abort_flag@29))) (and (=> (= (ControlFlow 0 261415) 262221) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 261415) 261457) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@29 (= $abort_code@26 $abort_code@26)) (and (= inline$$1_Roles_has_child_VASP_role$2$$ret0@1 inline$$1_Roles_has_child_VASP_role$2$$ret0@0) (= $abort_flag@30 true))) (and (=> (= (ControlFlow 0 261433) 262221) inline$$1_Roles_can_hold_balance$2$anon15_Then_correct) (=> (= (ControlFlow 0 261433) 261457) inline$$1_Roles_can_hold_balance$2$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Then_correct  (=> $abort_flag@27 (=> (and (and (= $abort_code@24 $abort_code@24) (= $abort_code@26 $abort_code@24)) (and (= $abort_flag@29 true) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$ret0@0))) (and (=> (= (ControlFlow 0 261339) 261433) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 261339) 261415) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t2@1) (= $abort_code@26 $abort_code@25)) (and (= $abort_flag@29 $abort_flag@28) (= inline$$1_Roles_has_role$7$$ret0@1 inline$$1_Roles_has_role$7$$t2@1))) (and (=> (= (ControlFlow 0 261275) 261433) inline$$1_Roles_has_child_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 261275) 261415) inline$$1_Roles_has_child_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon11_Else_correct  (=> (and (and (and (not $abort_flag@27) (= inline$$1_Roles_has_role$7$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$7$$t6@2))) (and (= inline$$1_Roles_has_role$7$$t9@1 (= inline$$1_Roles_has_role$7$$t8@1 6)) (= inline$$1_Roles_has_role$7$$t9@1 inline$$1_Roles_has_role$7$$t9@1))) (and (and (= $abort_code@25 $abort_code@24) (= inline$$1_Roles_has_role$7$$t2@1 inline$$1_Roles_has_role$7$$t9@1)) (and (= $abort_flag@28 $abort_flag@27) (= (ControlFlow 0 261321) 261275)))) inline$$1_Roles_has_role$7$L3_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Then$1_correct  (=> (= $abort_flag@27 true) (=> (and (= $abort_code@24 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@0)) (and (=> (= (ControlFlow 0 261391) 261339) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 261391) 261321) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= (ControlFlow 0 261389) 261391)) inline$$1_Roles_has_role$7$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$7$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$7$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)) (= $abort_flag@27 $abort_flag@26)) (and (= $abort_code@24 $abort_code@23) (= inline$$1_Roles_has_role$7$$t6@2 inline$$1_Roles_has_role$7$$t6@1))) (and (=> (= (ControlFlow 0 261293) 261339) inline$$1_Roles_has_role$7$anon11_Then_correct) (=> (= (ControlFlow 0 261293) 261321) inline$$1_Roles_has_role$7$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$7$anon9_Then_correct  (=> inline$$1_Roles_has_role$7$$t5@1 (and (=> (= (ControlFlow 0 261279) 261389) inline$$1_Roles_has_role$7$anon10_Then_correct) (=> (= (ControlFlow 0 261279) 261293) inline$$1_Roles_has_role$7$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$7$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$7$$t5@1) (= false false)) (=> (and (and (= $abort_code@25 $abort_code@23) (= inline$$1_Roles_has_role$7$$t2@1 false)) (and (= $abort_flag@28 $abort_flag@26) (= (ControlFlow 0 261263) 261275))) inline$$1_Roles_has_role$7$L3_correct))))
(let ((inline$$1_Roles_has_role$7$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$7$$t4@0 inline$$1_Roles_has_role$7$$t4@0) (= inline$$1_Roles_has_role$7$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$7$$t4@0)))) (and (=> (= (ControlFlow 0 261243) 261279) inline$$1_Roles_has_role$7$anon9_Then_correct) (=> (= (ControlFlow 0 261243) 261263) inline$$1_Roles_has_role$7$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 261397) 261243)) inline$$1_Roles_has_role$7$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$2$$ret0@1) (= (ControlFlow 0 261439) 261397)) inline$$1_Roles_has_child_VASP_role$2$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$2$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$2$$t1@1 true)) (and (= $abort_flag@31 $abort_flag@26) (= $abort_code@27 $abort_code@23))) (and (=> (= (ControlFlow 0 262239) 262207) inline$$1_Roles_can_hold_balance$2$anon16_Then_correct) (=> (= (ControlFlow 0 262239) 262139) inline$$1_Roles_can_hold_balance$2$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$2$anon13_Else_correct  (=> (not $abort_flag@26) (and (=> (= (ControlFlow 0 260759) 262239) inline$$1_Roles_can_hold_balance$2$anon14_Then_correct) (=> (= (ControlFlow 0 260759) 261439) inline$$1_Roles_can_hold_balance$2$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct  (=> (and (and (not $abort_flag@25) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_role$6$$ret0@1) (= $abort_flag@26 $abort_flag@25))) (and (=> (= (ControlFlow 0 260727) 262253) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 260727) 260759) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct  (=> (and (and $abort_flag@25 (= $abort_code@23 $abort_code@23)) (and (= inline$$1_Roles_has_parent_VASP_role$2$$ret0@1 inline$$1_Roles_has_parent_VASP_role$2$$ret0@0) (= $abort_flag@26 true))) (and (=> (= (ControlFlow 0 260745) 262253) inline$$1_Roles_can_hold_balance$2$anon13_Then_correct) (=> (= (ControlFlow 0 260745) 260759) inline$$1_Roles_can_hold_balance$2$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Then_correct  (=> $abort_flag@23 (=> (and (and (= $abort_code@21 $abort_code@21) (= $abort_flag@25 true)) (and (= $abort_code@23 $abort_code@21) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$ret0@0))) (and (=> (= (ControlFlow 0 260651) 260745) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 260651) 260727) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t2@1) (= $abort_flag@25 $abort_flag@24)) (and (= $abort_code@23 $abort_code@22) (= inline$$1_Roles_has_role$6$$ret0@1 inline$$1_Roles_has_role$6$$t2@1))) (and (=> (= (ControlFlow 0 260587) 260745) inline$$1_Roles_has_parent_VASP_role$2$anon3_Then_correct) (=> (= (ControlFlow 0 260587) 260727) inline$$1_Roles_has_parent_VASP_role$2$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon11_Else_correct  (=> (and (and (and (not $abort_flag@23) (= inline$$1_Roles_has_role$6$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$6$$t6@2))) (and (= inline$$1_Roles_has_role$6$$t9@1 (= inline$$1_Roles_has_role$6$$t8@1 5)) (= inline$$1_Roles_has_role$6$$t9@1 inline$$1_Roles_has_role$6$$t9@1))) (and (and (= $abort_flag@24 $abort_flag@23) (= inline$$1_Roles_has_role$6$$t2@1 inline$$1_Roles_has_role$6$$t9@1)) (and (= $abort_code@22 $abort_code@21) (= (ControlFlow 0 260633) 260587)))) inline$$1_Roles_has_role$6$L3_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Then$1_correct  (=> (= $abort_code@21 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@23 true) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@0)) (and (=> (= (ControlFlow 0 260703) 260651) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 260703) 260633) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= (ControlFlow 0 260701) 260703)) inline$$1_Roles_has_role$6$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$6$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$6$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)) (= $abort_code@21 $abort_code@20)) (and (= $abort_flag@23 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t6@2 inline$$1_Roles_has_role$6$$t6@1))) (and (=> (= (ControlFlow 0 260605) 260651) inline$$1_Roles_has_role$6$anon11_Then_correct) (=> (= (ControlFlow 0 260605) 260633) inline$$1_Roles_has_role$6$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$6$anon9_Then_correct  (=> inline$$1_Roles_has_role$6$$t5@1 (and (=> (= (ControlFlow 0 260591) 260701) inline$$1_Roles_has_role$6$anon10_Then_correct) (=> (= (ControlFlow 0 260591) 260605) inline$$1_Roles_has_role$6$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$6$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$6$$t5@1) (= false false)) (=> (and (and (= $abort_flag@24 $abort_flag@22) (= inline$$1_Roles_has_role$6$$t2@1 false)) (and (= $abort_code@22 $abort_code@20) (= (ControlFlow 0 260575) 260587))) inline$$1_Roles_has_role$6$L3_correct))))
(let ((inline$$1_Roles_has_role$6$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$6$$t4@0 inline$$1_Roles_has_role$6$$t4@0) (= inline$$1_Roles_has_role$6$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$6$$t4@0)))) (and (=> (= (ControlFlow 0 260555) 260591) inline$$1_Roles_has_role$6$anon9_Then_correct) (=> (= (ControlFlow 0 260555) 260575) inline$$1_Roles_has_role$6$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$2$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 260709) 260555)) inline$$1_Roles_has_role$6$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 260751) 260709)) inline$$1_Roles_has_parent_VASP_role$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$2$$t1@1 (= (ControlFlow 0 262259) 260751)) inline$$1_Roles_can_hold_balance$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$2$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 259747) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|  (=> (and (not $abort_flag@22) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1))) (and (=> (= (ControlFlow 0 259731) 262259) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 259731) 259747) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|  (=> $abort_flag@22 (=> (and (and (= $abort_code@20 $abort_code@20) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| $abort_code@20)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262776) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$2$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$2$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$2$$t1@1 inline$$1_DiemAccount_exists_at$2$$t1@1)) (and (=> (= (ControlFlow 0 259689) 262776) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 259689) 259731) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|) (= (ControlFlow 0 259695) 259689)) inline$$1_DiemAccount_exists_at$2$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@1| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@2| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 262802) 259753))) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0| |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 259584) 262802) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 259584) 259695) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|  (=> (and inline$$Not$2$dst@1 (= (ControlFlow 0 262806) 259584)) |inline$$1_DiemAccount_add_currency'$1_XUS_XUS'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|  (=> (not inline$$Not$2$dst@1) (=> (and (and (= $abort_code@36 $abort_code@20) (= $abort_flag@41 $abort_flag@22)) (and (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@4| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) (= (ControlFlow 0 255028) 255072))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L5_correct|))))
(let ((inline$$Not$2$anon0_correct  (=> (= inline$$Not$2$dst@1  (not |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1|)) (and (=> (= (ControlFlow 0 255014) 262806) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Then_correct|) (=> (= (ControlFlow 0 255014) 255028) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon20_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|  (=> _$t3 (=> (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t6@1| (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|)) (= (ControlFlow 0 255020) 255014)) inline$$Not$2$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|  (=> (and (not _$t3) (= $abort_code@53 $abort_code@20)) (=> (and (and (= $abort_flag@61 $abort_flag@22) (= |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory@5| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|)) (and (= |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory@5| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) (= (ControlFlow 0 254970) 254974))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$L10_correct|))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|  (=> (not $abort_flag@22) (and (=> (= (ControlFlow 0 254962) 255020) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Then_correct|) (=> (= (ControlFlow 0 254962) 254970) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon19_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|  (=> (and (and (not $abort_flag@21) (= $abort_code@20 $abort_code@19)) (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@1|) (= $abort_flag@22 $abort_flag@21))) (and (=> (= (ControlFlow 0 254814) 262844) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 254814) 254962) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|  (=> (= $abort_code@20 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1|) (=> (and (= |$1_DiemAccount_Balance'#0'_$memory@3| |$1_DiemAccount_Balance'#0'_$memory@2|) (= $abort_flag@22 true)) (and (=> (= (ControlFlow 0 251899) 262844) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Then_correct|) (=> (= (ControlFlow 0 251899) 254962) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon18_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|  (=> $abort_flag@21 (=> (and (and (= $abort_code@19 $abort_code@19) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@19)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory@1|) (= (ControlFlow 0 254828) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|  (=> (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory|) (=> (and (= $abort_code@19 $EXEC_FAILURE_CODE) (= $abort_flag@21 true)) (and (=> (= (ControlFlow 0 254880) 254828) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 254880) 254814) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 254878) 254880)) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= |$1_DiemAccount_Balance'#0'_$memory@0| ($Memory_181534 (|Store__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1|))) (= |$1_DiemAccount_Balance'#0'_$memory@1| |$1_DiemAccount_Balance'#0'_$memory@0|)) (and (= $abort_code@19 $abort_code@18) (= $abort_flag@21 $abort_flag@20))) (and (=> (= (ControlFlow 0 254804) 254828) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Then_correct|) (=> (= (ControlFlow 0 254804) 254814) |inline$$1_DiemAccount_add_currency'#0'$0$anon31_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|  (=> (and (not $abort_flag@20) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t22@1| (|$1_DiemAccount_Balance'#0'| |inline$$1_Diem_zero'#0'$0$$ret0@1|))) (and (=> (= (ControlFlow 0 254782) 254878) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Then_correct|) (=> (= (ControlFlow 0 254782) 254804) |inline$$1_DiemAccount_add_currency'#0'$0$anon30_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|  (=> $abort_flag@20 (=> (and (and (= $abort_code@18 $abort_code@18) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@18)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 254894) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Else_correct|  (=> (not |inline$$1_Diem_zero'#0'$0$$t0@0|) (=> (and (|$IsValid'u64'| 0) (= |inline$$1_Diem_zero'#0'$0$$t3@1| (|$1_Diem_Diem'#0'| 0))) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t3@1| |inline$$1_Diem_zero'#0'$0$$t3@1|) (= $abort_flag@20 $abort_flag@19)) (and (= $abort_code@18 $abort_code@17) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$t3@1|))) (and (=> (= (ControlFlow 0 254734) 254894) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 254734) 254782) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon3_Then_correct|  (=> |inline$$1_Diem_zero'#0'$0$$t0@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_Diem_zero'#0'$0$$t1@0|)) (=> (and (and (= |inline$$1_Diem_zero'#0'$0$$t1@0| |inline$$1_Diem_zero'#0'$0$$t1@0|) (= $abort_flag@20 true)) (and (= $abort_code@18 |inline$$1_Diem_zero'#0'$0$$t1@0|) (= |inline$$1_Diem_zero'#0'$0$$ret0@1| |inline$$1_Diem_zero'#0'$0$$ret0@0|))) (and (=> (= (ControlFlow 0 254764) 254894) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Then_correct|) (=> (= (ControlFlow 0 254764) 254782) |inline$$1_DiemAccount_add_currency'#0'$0$anon29_Else_correct|)))))))
(let ((|inline$$1_Diem_zero'#0'$0$anon0_correct|  (=> (= |inline$$1_Diem_zero'#0'$0$$t0@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))) (and (=> (= (ControlFlow 0 254706) 254764) |inline$$1_Diem_zero'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 254706) 254734) |inline$$1_Diem_zero'#0'$0$anon3_Else_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|  (=> (and inline$$Not$1$dst@1 (= (ControlFlow 0 254770) 254706)) |inline$$1_Diem_zero'#0'$0$anon0_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|  (=> (not inline$$Not$1$dst@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 254553) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|  (=> (|$IsValid'u64'| 15) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| 6)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t20@0|) (= inline$$Not$1$dst@1 inline$$Not$1$dst@1))) (and (=> (= (ControlFlow 0 254537) 254770) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Then_correct|) (=> (= (ControlFlow 0 254537) 254553) |inline$$1_DiemAccount_add_currency'#0'$0$anon28_Else_correct|))))))
(let ((inline$$Not$1$anon0_correct  (=> (and (= inline$$Not$1$dst@1  (not |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1|)) (= (ControlFlow 0 254501) 254537)) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then$1_correct|)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|  (=> inline$$1_Roles_can_hold_balance$0$$ret0@1 (=> (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t17@1| (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= (ControlFlow 0 254507) 254501)) inline$$Not$1$anon0_correct))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|  (=> (not inline$$1_Roles_can_hold_balance$0$$ret0@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 254461) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|  (=> (and (not $abort_flag@19) (|$IsValid'u64'| 4)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| 7)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t16@0|) (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@1))) (and (=> (= (ControlFlow 0 254445) 254507) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Then_correct|) (=> (= (ControlFlow 0 254445) 254461) |inline$$1_DiemAccount_add_currency'#0'$0$anon27_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|  (=> $abort_flag@19 (=> (and (and (= $abort_code@17 $abort_code@17) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@17)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 254908) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_Roles_can_hold_balance$0$L9_correct  (=> (= $abort_flag@19 true) (=> (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$ret0@0) (= $abort_code@17 inline$$1_Roles_can_hold_balance$0$$t4@1)) (and (=> (= (ControlFlow 0 254335) 254908) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 254335) 254445) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Then_correct  (=> (and (and $abort_flag@17 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@15) (= (ControlFlow 0 254329) 254335))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Then_correct  (=> (and (and $abort_flag@12 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@11) (= (ControlFlow 0 254367) 254335))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@8 $abort_code@8)) (and (= inline$$1_Roles_can_hold_balance$0$$t4@1 $abort_code@8) (= (ControlFlow 0 254399) 254335))) inline$$1_Roles_can_hold_balance$0$L9_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$L7_correct  (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_flag@19 $abort_flag@18)) (and (= inline$$1_Roles_can_hold_balance$0$$ret0@1 inline$$1_Roles_can_hold_balance$0$$t2@1) (= $abort_code@17 $abort_code@16))) (and (=> (= (ControlFlow 0 254315) 254908) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Then_correct|) (=> (= (ControlFlow 0 254315) 254445) |inline$$1_DiemAccount_add_currency'#0'$0$anon26_Else_correct|)))))
(let ((inline$$1_Roles_can_hold_balance$0$anon17_Else_correct  (=> (and (not $abort_flag@17) (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@1) (= $abort_code@16 $abort_code@15)) (and (= $abort_flag@18 $abort_flag@17) (= (ControlFlow 0 254303) 254315))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@16) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_role$2$$ret0@1) (= $abort_flag@17 $abort_flag@16))) (and (=> (= (ControlFlow 0 254261) 254329) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 254261) 254303) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct  (=> (and (and $abort_flag@16 (= $abort_code@15 $abort_code@15)) (and (= inline$$1_Roles_has_designated_dealer_role$0$$ret0@1 inline$$1_Roles_has_designated_dealer_role$0$$ret0@0) (= $abort_flag@17 true))) (and (=> (= (ControlFlow 0 254279) 254329) inline$$1_Roles_can_hold_balance$0$anon17_Then_correct) (=> (= (ControlFlow 0 254279) 254303) inline$$1_Roles_can_hold_balance$0$anon17_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Then_correct  (=> $abort_flag@14 (=> (and (and (= $abort_code@13 $abort_code@13) (= $abort_flag@16 true)) (and (= $abort_code@15 $abort_code@13) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$ret0@0))) (and (=> (= (ControlFlow 0 254185) 254279) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 254185) 254261) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t2@1) (= $abort_flag@16 $abort_flag@15)) (and (= $abort_code@15 $abort_code@14) (= inline$$1_Roles_has_role$2$$ret0@1 inline$$1_Roles_has_role$2$$t2@1))) (and (=> (= (ControlFlow 0 254121) 254279) inline$$1_Roles_has_designated_dealer_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 254121) 254261) inline$$1_Roles_has_designated_dealer_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon11_Else_correct  (=> (and (and (and (not $abort_flag@14) (= inline$$1_Roles_has_role$2$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$2$$t6@2))) (and (= inline$$1_Roles_has_role$2$$t9@1 (= inline$$1_Roles_has_role$2$$t8@1 2)) (= inline$$1_Roles_has_role$2$$t9@1 inline$$1_Roles_has_role$2$$t9@1))) (and (and (= $abort_flag@15 $abort_flag@14) (= inline$$1_Roles_has_role$2$$t2@1 inline$$1_Roles_has_role$2$$t9@1)) (and (= $abort_code@14 $abort_code@13) (= (ControlFlow 0 254167) 254121)))) inline$$1_Roles_has_role$2$L3_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Then$1_correct  (=> (= $abort_code@13 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@14 true) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@0)) (and (=> (= (ControlFlow 0 254237) 254185) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 254237) 254167) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= (ControlFlow 0 254235) 254237)) inline$$1_Roles_has_role$2$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$2$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$2$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)) (= $abort_code@13 $abort_code@12)) (and (= $abort_flag@14 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t6@2 inline$$1_Roles_has_role$2$$t6@1))) (and (=> (= (ControlFlow 0 254139) 254185) inline$$1_Roles_has_role$2$anon11_Then_correct) (=> (= (ControlFlow 0 254139) 254167) inline$$1_Roles_has_role$2$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$2$anon9_Then_correct  (=> inline$$1_Roles_has_role$2$$t5@1 (and (=> (= (ControlFlow 0 254125) 254235) inline$$1_Roles_has_role$2$anon10_Then_correct) (=> (= (ControlFlow 0 254125) 254139) inline$$1_Roles_has_role$2$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$2$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$2$$t5@1) (= false false)) (=> (and (and (= $abort_flag@15 $abort_flag@13) (= inline$$1_Roles_has_role$2$$t2@1 false)) (and (= $abort_code@14 $abort_code@12) (= (ControlFlow 0 254109) 254121))) inline$$1_Roles_has_role$2$L3_correct))))
(let ((inline$$1_Roles_has_role$2$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 2 2)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$2$$t4@0 inline$$1_Roles_has_role$2$$t4@0) (= inline$$1_Roles_has_role$2$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$2$$t4@0)))) (and (=> (= (ControlFlow 0 254089) 254125) inline$$1_Roles_has_role$2$anon9_Then_correct) (=> (= (ControlFlow 0 254089) 254109) inline$$1_Roles_has_role$2$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_designated_dealer_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 254243) 254089)) inline$$1_Roles_has_role$2$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Else_correct  (=> (and (not inline$$1_Roles_can_hold_balance$0$$t1@1) (= (ControlFlow 0 254285) 254243)) inline$$1_Roles_has_designated_dealer_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon16_Then_correct  (=> (and inline$$1_Roles_can_hold_balance$0$$t1@1 (= true true)) (=> (and (and (= inline$$1_Roles_can_hold_balance$0$$t2@1 true) (= $abort_code@16 $abort_code@12)) (and (= $abort_flag@18 $abort_flag@13) (= (ControlFlow 0 254353) 254315))) inline$$1_Roles_can_hold_balance$0$L7_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon15_Else_correct  (=> (not $abort_flag@12) (=> (and (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1) (= inline$$1_Roles_can_hold_balance$0$$t1@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@1)) (and (= $abort_flag@13 $abort_flag@12) (= $abort_code@12 $abort_code@11))) (and (=> (= (ControlFlow 0 253603) 254353) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 253603) 254285) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@11) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$1$$ret0@1) (= $abort_flag@12 $abort_flag@11))) (and (=> (= (ControlFlow 0 253561) 254367) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 253561) 253603) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@11 (= $abort_code@11 $abort_code@11)) (and (= inline$$1_Roles_has_child_VASP_role$0$$ret0@1 inline$$1_Roles_has_child_VASP_role$0$$ret0@0) (= $abort_flag@12 true))) (and (=> (= (ControlFlow 0 253579) 254367) inline$$1_Roles_can_hold_balance$0$anon15_Then_correct) (=> (= (ControlFlow 0 253579) 253603) inline$$1_Roles_can_hold_balance$0$anon15_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Then_correct  (=> $abort_flag@9 (=> (and (and (= $abort_code@9 $abort_code@9) (= $abort_code@11 $abort_code@9)) (and (= $abort_flag@11 true) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$ret0@0))) (and (=> (= (ControlFlow 0 253485) 253579) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 253485) 253561) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t2@1) (= $abort_code@11 $abort_code@10)) (and (= $abort_flag@11 $abort_flag@10) (= inline$$1_Roles_has_role$1$$ret0@1 inline$$1_Roles_has_role$1$$t2@1))) (and (=> (= (ControlFlow 0 253421) 253579) inline$$1_Roles_has_child_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 253421) 253561) inline$$1_Roles_has_child_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon11_Else_correct  (=> (and (and (and (not $abort_flag@9) (= inline$$1_Roles_has_role$1$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$1$$t6@2))) (and (= inline$$1_Roles_has_role$1$$t9@1 (= inline$$1_Roles_has_role$1$$t8@1 6)) (= inline$$1_Roles_has_role$1$$t9@1 inline$$1_Roles_has_role$1$$t9@1))) (and (and (= $abort_code@10 $abort_code@9) (= inline$$1_Roles_has_role$1$$t2@1 inline$$1_Roles_has_role$1$$t9@1)) (and (= $abort_flag@10 $abort_flag@9) (= (ControlFlow 0 253467) 253421)))) inline$$1_Roles_has_role$1$L3_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Then$1_correct  (=> (= $abort_flag@9 true) (=> (and (= $abort_code@9 $EXEC_FAILURE_CODE) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@0)) (and (=> (= (ControlFlow 0 253537) 253485) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 253537) 253467) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= (ControlFlow 0 253535) 253537)) inline$$1_Roles_has_role$1$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$1$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$1$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)) (= $abort_flag@9 $abort_flag@8)) (and (= $abort_code@9 $abort_code@8) (= inline$$1_Roles_has_role$1$$t6@2 inline$$1_Roles_has_role$1$$t6@1))) (and (=> (= (ControlFlow 0 253439) 253485) inline$$1_Roles_has_role$1$anon11_Then_correct) (=> (= (ControlFlow 0 253439) 253467) inline$$1_Roles_has_role$1$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$1$anon9_Then_correct  (=> inline$$1_Roles_has_role$1$$t5@1 (and (=> (= (ControlFlow 0 253425) 253535) inline$$1_Roles_has_role$1$anon10_Then_correct) (=> (= (ControlFlow 0 253425) 253439) inline$$1_Roles_has_role$1$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$1$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$1$$t5@1) (= false false)) (=> (and (and (= $abort_code@10 $abort_code@8) (= inline$$1_Roles_has_role$1$$t2@1 false)) (and (= $abort_flag@10 $abort_flag@8) (= (ControlFlow 0 253409) 253421))) inline$$1_Roles_has_role$1$L3_correct))))
(let ((inline$$1_Roles_has_role$1$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 6 6)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$1$$t4@0 inline$$1_Roles_has_role$1$$t4@0) (= inline$$1_Roles_has_role$1$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$1$$t4@0)))) (and (=> (= (ControlFlow 0 253389) 253425) inline$$1_Roles_has_role$1$anon9_Then_correct) (=> (= (ControlFlow 0 253389) 253409) inline$$1_Roles_has_role$1$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_child_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 6) (= (ControlFlow 0 253543) 253389)) inline$$1_Roles_has_role$1$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Else_correct  (=> (and (not inline$$1_Roles_has_parent_VASP_role$0$$ret0@1) (= (ControlFlow 0 253585) 253543)) inline$$1_Roles_has_child_VASP_role$0$anon0_correct)))
(let ((inline$$1_Roles_can_hold_balance$0$anon14_Then_correct  (=> inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 (=> (and (and (= true true) (= inline$$1_Roles_can_hold_balance$0$$t1@1 true)) (and (= $abort_flag@13 $abort_flag@8) (= $abort_code@12 $abort_code@8))) (and (=> (= (ControlFlow 0 254385) 254353) inline$$1_Roles_can_hold_balance$0$anon16_Then_correct) (=> (= (ControlFlow 0 254385) 254285) inline$$1_Roles_can_hold_balance$0$anon16_Else_correct))))))
(let ((inline$$1_Roles_can_hold_balance$0$anon13_Else_correct  (=> (not $abort_flag@8) (and (=> (= (ControlFlow 0 252905) 254385) inline$$1_Roles_can_hold_balance$0$anon14_Then_correct) (=> (= (ControlFlow 0 252905) 253585) inline$$1_Roles_can_hold_balance$0$anon14_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct  (=> (and (and (not $abort_flag@7) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@1) (= $abort_flag@8 $abort_flag@7))) (and (=> (= (ControlFlow 0 252873) 254399) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 252873) 252905) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@8 $abort_code@8)) (and (= inline$$1_Roles_has_parent_VASP_role$0$$ret0@1 inline$$1_Roles_has_parent_VASP_role$0$$ret0@0) (= $abort_flag@8 true))) (and (=> (= (ControlFlow 0 252891) 254399) inline$$1_Roles_can_hold_balance$0$anon13_Then_correct) (=> (= (ControlFlow 0 252891) 252905) inline$$1_Roles_can_hold_balance$0$anon13_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Then_correct  (=> $abort_flag@5 (=> (and (and (= $abort_code@6 $abort_code@6) (= $abort_flag@7 true)) (and (= $abort_code@8 $abort_code@6) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$ret0@0))) (and (=> (= (ControlFlow 0 252797) 252891) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 252797) 252873) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$L3_correct  (=> (and (and (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t2@1) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@8 $abort_code@7) (= inline$$1_Roles_has_role$0$$ret0@1 inline$$1_Roles_has_role$0$$t2@1))) (and (=> (= (ControlFlow 0 252733) 252891) inline$$1_Roles_has_parent_VASP_role$0$anon3_Then_correct) (=> (= (ControlFlow 0 252733) 252873) inline$$1_Roles_has_parent_VASP_role$0$anon3_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon11_Else_correct  (=> (and (and (and (not $abort_flag@5) (= inline$$1_Roles_has_role$0$$t8@1 (|$role_id#$1_Roles_RoleId| inline$$1_Roles_has_role$0$$t6@2))) (and (= inline$$1_Roles_has_role$0$$t9@1 (= inline$$1_Roles_has_role$0$$t8@1 5)) (= inline$$1_Roles_has_role$0$$t9@1 inline$$1_Roles_has_role$0$$t9@1))) (and (and (= $abort_flag@6 $abort_flag@5) (= inline$$1_Roles_has_role$0$$t2@1 inline$$1_Roles_has_role$0$$t9@1)) (and (= $abort_code@7 $abort_code@6) (= (ControlFlow 0 252779) 252733)))) inline$$1_Roles_has_role$0$L3_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@0)) (and (=> (= (ControlFlow 0 252849) 252797) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 252849) 252779) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= (ControlFlow 0 252847) 252849)) inline$$1_Roles_has_role$0$anon10_Then$1_correct)))
(let ((inline$$1_Roles_has_role$0$anon10_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0) (=> (and (and (= inline$$1_Roles_has_role$0$$t6@1 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= inline$$1_Roles_has_role$0$$t6@2 inline$$1_Roles_has_role$0$$t6@1))) (and (=> (= (ControlFlow 0 252751) 252797) inline$$1_Roles_has_role$0$anon11_Then_correct) (=> (= (ControlFlow 0 252751) 252779) inline$$1_Roles_has_role$0$anon11_Else_correct))))))
(let ((inline$$1_Roles_has_role$0$anon9_Then_correct  (=> inline$$1_Roles_has_role$0$$t5@1 (and (=> (= (ControlFlow 0 252737) 252847) inline$$1_Roles_has_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 252737) 252751) inline$$1_Roles_has_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_has_role$0$anon9_Else_correct  (=> (and (not inline$$1_Roles_has_role$0$$t5@1) (= false false)) (=> (and (and (= $abort_flag@6 $abort_flag@4) (= inline$$1_Roles_has_role$0$$t2@1 false)) (and (= $abort_code@7 $abort_code@5) (= (ControlFlow 0 252721) 252733))) inline$$1_Roles_has_role$0$L3_correct))))
(let ((inline$$1_Roles_has_role$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= 5 5)) (=> (and (and (|$IsValid'address'| inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t4@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_Roles_has_role$0$$t4@0 inline$$1_Roles_has_role$0$$t4@0) (= inline$$1_Roles_has_role$0$$t5@1 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_Roles_has_role$0$$t4@0)))) (and (=> (= (ControlFlow 0 252701) 252737) inline$$1_Roles_has_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 252701) 252721) inline$$1_Roles_has_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_has_parent_VASP_role$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (|$IsValid'u64'| 5) (= (ControlFlow 0 252855) 252701)) inline$$1_Roles_has_role$0$anon0_correct))))
(let ((inline$$1_Roles_can_hold_balance$0$anon0_correct  (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= (ControlFlow 0 252897) 252855)) inline$$1_Roles_has_parent_VASP_role$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|  (=> (and inline$$1_DiemAccount_exists_at$0$$t1@1 (= (ControlFlow 0 254405) 252897)) inline$$1_Roles_can_hold_balance$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|  (=> (not inline$$1_DiemAccount_exists_at$0$$t1@1) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 251893) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|  (=> (and (not $abort_flag@4) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| 5)) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t13@0|) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1))) (and (=> (= (ControlFlow 0 251877) 254405) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Then_correct|) (=> (= (ControlFlow 0 251877) 251893) |inline$$1_DiemAccount_add_currency'#0'$0$anon25_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|  (=> $abort_flag@4 (=> (and (and (= $abort_code@5 $abort_code@5) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| $abort_code@5)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 254922) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|))))
(let ((inline$$1_DiemAccount_exists_at$0$anon0_correct  (=> (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (=> (and (= inline$$1_DiemAccount_exists_at$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|)) (= inline$$1_DiemAccount_exists_at$0$$t1@1 inline$$1_DiemAccount_exists_at$0$$t1@1)) (and (=> (= (ControlFlow 0 251835) 254922) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Then_correct|) (=> (= (ControlFlow 0 251835) 251877) |inline$$1_DiemAccount_add_currency'#0'$0$anon24_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|  (=> (and (not |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|) (= (ControlFlow 0 251841) 251835)) inline$$1_DiemAccount_exists_at$0$anon0_correct)))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|  (=> |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0| (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)) (= 5 |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (=> (and (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t10@1| |inline$$1_DiemAccount_add_currency'#0'$0$$t10@0|)) (and (= |$1_DiemAccount_Balance'#0'_$memory@2| |$1_DiemAccount_Balance'#0'_$memory|) (= (ControlFlow 0 254948) 251899))) |inline$$1_DiemAccount_add_currency'#0'$0$L7_correct|)))))
(let ((|inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0| |inline$$1_DiemAccount_add_currency'#0'$0$$t8@0|) (= |inline$$1_DiemAccount_add_currency'#0'$0$$t9@0|  (not (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816))))) (and (=> (= (ControlFlow 0 251730) 254948) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Then_correct|) (=> (= (ControlFlow 0 251730) 251841) |inline$$1_DiemAccount_add_currency'#0'$0$anon23_Else_correct|))))))
(let ((|inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|  (=> (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t3@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= _$t3 _$t3)) (=> (and (and (|$IsValid'address'| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|) (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0| |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$$t4@0|) (= (ControlFlow 0 254952) 251730))) |inline$$1_DiemAccount_add_currency'#0'$0$anon0_correct|)))))
(let ((anon24_correct  (=> (= $t22@@0 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816)) (=> (and (and (= $t23@@0 (|$creation_events#$1_DiemAccount_AccountOperationsCapability| (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816))) (= $t24@@0 ($1_DiemAccount_CreateAccountEvent (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory@2) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) $t17@@0))) (=> (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory@2) $t17@@0) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory@2) $t17@@0)))) (= $t22@@0 ($1_DiemAccount_AccountOperationsCapability (|$limits_cap#$1_DiemAccount_AccountOperationsCapability| $t18@@1) (|$creation_events#$1_DiemAccount_AccountOperationsCapability| $t18@@1)))) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) $t17@@0)))) 0)) (= $t17@@0 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) $t17@@0))) 0))))) (and (and (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) $t17@@0)))) 0)) (= $t17@@0 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory@2) $t17@@0))) 0)))) (= $t25 $t24@@0)) (and (and (= $t26@@0 $t23@@0) (= $es@0 (let ((stream@@5 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $es) $t26@@0)))
(let ((stream_new@@2 (let ((len@@2 (|l#Multiset_102809| stream@@5)))
(let ((cnt@@2 (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t25))))
(Multiset_102809 (|Store__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@5) (|$ToEventRep'$1_DiemAccount_CreateAccountEvent'| $t25) (+ cnt@@2 1)) (+ len@@2 1))))))
($EventStore (+ (|counter#$EventStore| $es) 1) (|Store__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $es) $t26@@0 stream_new@@2)))))) (and (= $t27@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 262848) 254952))))) |inline$$1_DiemAccount_add_currencies_for_account'#0'$0$anon0_correct|)))))
(let ((anon37_Else_correct@@0  (=> (and (and (not |$temp_0'bool'@3|) (= $1_DiemAccount_AccountOperationsCapability_$memory@1 ($Memory_181217 (|Store__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 false) (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@1) (= (ControlFlow 0 250579) 262848))) anon24_correct)))
(let ((anon37_Then_correct@@0  (=> (and (and |$temp_0'bool'@3| (= $1_DiemAccount_AccountOperationsCapability_$memory@0 ($Memory_181217 (|Store__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 true) (|Store__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816 |$temp_0'$1_DiemAccount_AccountOperationsCapability'@0|)))) (and (= $1_DiemAccount_AccountOperationsCapability_$memory@2 $1_DiemAccount_AccountOperationsCapability_$memory@0) (= (ControlFlow 0 264012) 262848))) anon24_correct)))
(let ((anon36_Else_correct@@0  (=> (not |$temp_0'bool'@2|) (=> (and (= $1_AccountFreezing_FreezingBit_$memory@1 ($Memory_179374 (|Store__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $t17@@0 false) (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@1)) (and (=> (= (ControlFlow 0 250565) 264012) anon37_Then_correct@@0) (=> (= (ControlFlow 0 250565) 250579) anon37_Else_correct@@0))))))
(let ((anon36_Then_correct@@0  (=> |$temp_0'bool'@2| (=> (and (= $1_AccountFreezing_FreezingBit_$memory@0 ($Memory_179374 (|Store__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $t17@@0 true) (|Store__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $t17@@0 |$temp_0'$1_AccountFreezing_FreezingBit'@0|))) (= $1_AccountFreezing_FreezingBit_$memory@2 $1_AccountFreezing_FreezingBit_$memory@0)) (and (=> (= (ControlFlow 0 264024) 264012) anon37_Then_correct@@0) (=> (= (ControlFlow 0 264024) 250579) anon37_Else_correct@@0))))))
(let ((anon35_Else_correct@@0  (=> (and (not |$temp_0'bool'@1|) (= $1_Event_EventHandleGenerator_$memory@1 ($Memory_133774 (|Store__T@[Int]Bool_| (|domain#$Memory_133774| $1_Event_EventHandleGenerator_$memory) $t17@@0 false) (|contents#$Memory_133774| $1_Event_EventHandleGenerator_$memory)))) (and (=> (= (ControlFlow 0 250551) 264024) anon36_Then_correct@@0) (=> (= (ControlFlow 0 250551) 250565) anon36_Else_correct@@0)))))
(let ((anon35_Then_correct@@0  (=> (and |$temp_0'bool'@1| (= $1_Event_EventHandleGenerator_$memory@0 ($Memory_133774 (|Store__T@[Int]Bool_| (|domain#$Memory_133774| $1_Event_EventHandleGenerator_$memory) $t17@@0 true) (|Store__T@[Int]$1_Event_EventHandleGenerator_| (|contents#$Memory_133774| $1_Event_EventHandleGenerator_$memory) $t17@@0 |$temp_0'$1_Event_EventHandleGenerator'@0|)))) (and (=> (= (ControlFlow 0 264036) 264024) anon36_Then_correct@@0) (=> (= (ControlFlow 0 264036) 250565) anon36_Else_correct@@0)))))
(let ((anon34_Else_correct@@0  (=> (not |$temp_0'bool'@0|) (=> (and (= $1_DiemAccount_DiemAccount_$memory@1 ($Memory_180324 (|Store__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) $t17@@0 false) (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@1)) (and (=> (= (ControlFlow 0 250537) 264036) anon35_Then_correct@@0) (=> (= (ControlFlow 0 250537) 250551) anon35_Else_correct@@0))))))
(let ((anon34_Then_correct@@0  (=> |$temp_0'bool'@0| (=> (and (= $1_DiemAccount_DiemAccount_$memory@0 ($Memory_180324 (|Store__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) $t17@@0 true) (|Store__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) $t17@@0 |$temp_0'$1_DiemAccount_DiemAccount'@0|))) (= $1_DiemAccount_DiemAccount_$memory@2 $1_DiemAccount_DiemAccount_$memory@0)) (and (=> (= (ControlFlow 0 264048) 264036) anon35_Then_correct@@0) (=> (= (ControlFlow 0 264048) 250551) anon35_Else_correct@@0))))))
(let ((anon33_Else_correct@@0  (=> (not $t21) (and (=> (= (ControlFlow 0 250525) 264048) anon34_Then_correct@@0) (=> (= (ControlFlow 0 250525) 250537) anon34_Else_correct@@0)))))
(let ((anon32_Else_correct@@0  (=> (not $abort_flag@4) (=> (and (and (= $t17@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t18@@1 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816))) (and (= $t19@@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t20 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)))) (and (=> (= (ControlFlow 0 250519) (- 0 433914)) (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) $t17@@0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) $t17@@0) (=> (= $t21  (or (or (or (or (= $t17@@0 0) (= $t17@@0 1)) (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $t17@@0)) (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)))) (not (= (+ 16 (seq.len _$t2)) 32)))) (and (=> (= (ControlFlow 0 250519) 264154) anon33_Then_correct@@0) (=> (= (ControlFlow 0 250519) 250525) anon33_Else_correct@@0)))))))))
(let ((anon31_Else_correct@@0  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 250401) 264168) anon32_Then_correct@@0) (=> (= (ControlFlow 0 250401) 250519) anon32_Else_correct@@0)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct  (=> (not $abort_flag@3) (=> (and (and (= $abort_code@5 $abort_code@4) (= $1_VASP_ChildVASP_$memory@3 $1_VASP_ChildVASP_$memory@1@@0)) (and (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@0@@1) (= $abort_flag@4 $abort_flag@3))) (and (=> (= (ControlFlow 0 250114) 264182) anon31_Then_correct@@0) (=> (= (ControlFlow 0 250114) 250401) anon31_Else_correct@@0))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$L7_correct  (=> (and (and (= $abort_code@5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@1) (= $1_VASP_ChildVASP_$memory@3 $1_VASP_ChildVASP_$memory@2)) (and (= $1_VASP_ParentVASP_$memory@2 $1_VASP_ParentVASP_$memory@1@@0) (= $abort_flag@4 true))) (and (=> (= (ControlFlow 0 249627) 264182) anon31_Then_correct@@0) (=> (= (ControlFlow 0 249627) 250401) anon31_Else_correct@@0)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct  (=> (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@4) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory@1@@0)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory@0@@1) (= (ControlFlow 0 250128) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then$1_correct  (=> (= $1_VASP_ChildVASP_$memory@1@@0 $1_VASP_ChildVASP_$memory) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 250180) 250128) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct) (=> (= (ControlFlow 0 250180) 250114) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= (ControlFlow 0 250178) 250180)) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon35_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (=> (and (and (= $1_VASP_ChildVASP_$memory@0@@0 ($Memory_168125 (|Store__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) inline$$1_VASP_publish_child_vasp_credential$0$$t37@1))) (= $1_VASP_ChildVASP_$memory@1@@0 $1_VASP_ChildVASP_$memory@0@@0)) (and (= $abort_code@4 $abort_code@3@@0) (= $abort_flag@3 $abort_flag@2@@0))) (and (=> (= (ControlFlow 0 250104) 250128) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Then_correct) (=> (= (ControlFlow 0 250104) 250114) inline$$1_VASP_publish_child_vasp_credential$0$anon36_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct  (=> (not $abort_flag@2@@0) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t28@2 ($Mutation_16749 (|l#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1) (|p#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1) inline$$AddU64$0$dst@2@@0)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@3 ($Mutation_168591 (|l#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (|p#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) ($1_VASP_ParentVASP (|v#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@2))))) (and (= $1_VASP_ParentVASP_$memory@0@@1 ($Memory_168189 (|Store__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)) true) (|Store__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) (|a#$Global| (|l#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)) (|v#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@3)))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t37@1 ($1_VASP_ChildVASP inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)))) (and (=> (= (ControlFlow 0 250082) 250178) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Then_correct) (=> (= (ControlFlow 0 250082) 250104) inline$$1_VASP_publish_child_vasp_credential$0$anon35_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct  (=> (and $abort_flag@2@@0 (= $abort_code@3@@0 $abort_code@3@@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@3@@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 250194) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@2@@0 true) (=> (and (= $abort_code@3@@0 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 250030) 250194) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct) (=> (= (ControlFlow 0 250030) 250082) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1) $MAX_U64) (= (ControlFlow 0 250028) 250030)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 1)) (= $abort_flag@2@@0 $abort_flag@1@@0)) (and (= $abort_code@3@@0 $abort_code@2@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 249976) 250194) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Then_correct) (=> (= (ControlFlow 0 249976) 250082) inline$$1_VASP_publish_child_vasp_credential$0$anon34_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon33_Then_correct  (=> inline$$Lt$0$dst@1@@0 (=> (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t34@1 (|v#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 250036) 250028) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 250036) 249976) inline$$AddU64$0$anon3_Else_correct@@0))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon33_Else_correct  (=> (and (not inline$$Lt$0$dst@1@@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 249869) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else$1_correct  (=> (|$IsValid'u64'| 1) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 8)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t33@0 inline$$1_VASP_publish_child_vasp_credential$0$$t33@0) (= inline$$Lt$0$dst@1@@0 inline$$Lt$0$dst@1@@0))) (and (=> (= (ControlFlow 0 249853) 250036) inline$$1_VASP_publish_child_vasp_credential$0$anon33_Then_correct) (=> (= (ControlFlow 0 249853) 249869) inline$$1_VASP_publish_child_vasp_credential$0$anon33_Else_correct))))))
(let ((inline$$Lt$0$anon0_correct@@0  (=> (and (= inline$$Lt$0$dst@1@@0 (< inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 65536)) (= (ControlFlow 0 249817) 249853)) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct  (=> (not $abort_flag@1@@0) (=> (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t28@1 ($Mutation_16749 (|l#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (seq.++ (|p#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2) (seq.unit 0)) (|$num_children#$1_VASP_ParentVASP| (|v#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@2)))) (= |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| (|v#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1))) (=> (and (and (= |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1| |inline$$1_VASP_publish_child_vasp_credential$0$$temp_0'u64'@1|) (= inline$$1_VASP_publish_child_vasp_credential$0$$t29@1 (|v#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@1))) (and (|$IsValid'u64'| 65536) (= (ControlFlow 0 249823) 249817))) inline$$Lt$0$anon0_correct@@0)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct  (=> (and $abort_flag@1@@0 (= $abort_code@2@@0 $abort_code@2@@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 $abort_code@2@@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 250208) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then$1_correct  (=> (= $abort_code@2@@0 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1@@0 true) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 inline$$1_VASP_publish_child_vasp_credential$0$$t27@0)) (and (=> (= (ControlFlow 0 250260) 250208) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct) (=> (= (ControlFlow 0 250260) 249823) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (= (ControlFlow 0 250258) 250260)) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon31_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@1 ($Mutation_168591 ($Global inline$$1_VASP_publish_child_vasp_credential$0$$t23@0) (as seq.empty (Seq Int)) (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0))) (= $abort_code@2@@0 $abort_code@1@@1)) (and (= $abort_flag@1@@0 $abort_flag@0@@1) (= inline$$1_VASP_publish_child_vasp_credential$0$$t27@2 inline$$1_VASP_publish_child_vasp_credential$0$$t27@1))) (and (=> (= (ControlFlow 0 249735) 250208) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Then_correct) (=> (= (ControlFlow 0 249735) 249823) inline$$1_VASP_publish_child_vasp_credential$0$anon32_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon30_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 (and (=> (= (ControlFlow 0 249713) 250258) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Then_correct) (=> (= (ControlFlow 0 249713) 249735) inline$$1_VASP_publish_child_vasp_credential$0$anon31_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon30_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t24@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 249709) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon29_Then_correct  (=> (and inline$$Not$0$dst@1@@1 (|$IsValid'address'| inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (=> (and (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t23@0 inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t23@0)) (|$IsValid'u64'| 3))) (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 7)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t26@0 inline$$1_VASP_publish_child_vasp_credential$0$$t26@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t24@0 inline$$1_VASP_publish_child_vasp_credential$0$$t24@0)))) (and (=> (= (ControlFlow 0 249693) 249713) inline$$1_VASP_publish_child_vasp_credential$0$anon30_Then_correct) (=> (= (ControlFlow 0 249693) 249709) inline$$1_VASP_publish_child_vasp_credential$0$anon30_Else_correct))))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon29_Else_correct  (=> (and (not inline$$Not$0$dst@1@@1) (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 249621) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 6)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t22@0 inline$$1_VASP_publish_child_vasp_credential$0$$t22@0) (= inline$$Not$0$dst@1@@1 inline$$Not$0$dst@1@@1))) (and (=> (= (ControlFlow 0 249605) 249693) inline$$1_VASP_publish_child_vasp_credential$0$anon29_Then_correct) (=> (= (ControlFlow 0 249605) 249621) inline$$1_VASP_publish_child_vasp_credential$0$anon29_Else_correct))))))
(let ((inline$$Not$0$anon0_correct@@1  (=> (and (= inline$$Not$0$dst@1@@1  (not inline$$1_VASP_publish_child_vasp_credential$0$$t19@0)) (= (ControlFlow 0 249569) 249605)) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else$1_correct)))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t17@0) (|$IsValid'address'| inline$$1_VASP_publish_child_vasp_credential$0$$t18@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t18@0 inline$$1_VASP_publish_child_vasp_credential$0$$t18@0)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t19@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t18@0) (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) inline$$1_VASP_publish_child_vasp_credential$0$$t18@0))) (= (ControlFlow 0 249575) 249569))) inline$$Not$0$anon0_correct@@1))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon28_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t17@0 (=> (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (= 5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6)) (= 3 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 250316) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon27_Else_correct  (=> (and (not inline$$1_VASP_publish_child_vasp_credential$0$$t15@0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t17@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6))))) (and (=> (= (ControlFlow 0 249495) 250316) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Then_correct) (=> (= (ControlFlow 0 249495) 249575) inline$$1_VASP_publish_child_vasp_credential$0$anon28_Else_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon27_Then_correct  (=> inline$$1_VASP_publish_child_vasp_credential$0$$t15@0 (=> (and (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) (= 5 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) 5)) (= 3 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0))) (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@0 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0)) (=> (and (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t16@1 inline$$1_VASP_publish_child_vasp_credential$0$$t16@0) (= $1_VASP_ChildVASP_$memory@2 $1_VASP_ChildVASP_$memory)) (and (= $1_VASP_ParentVASP_$memory@1@@0 $1_VASP_ParentVASP_$memory) (= (ControlFlow 0 250368) 249627))) inline$$1_VASP_publish_child_vasp_credential$0$L7_correct)))))
(let ((inline$$1_VASP_publish_child_vasp_credential$0$anon0_correct  (=> (and (= (seq.len (|p#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t9@0)) 0) (= (seq.len (|p#$Mutation_168591| inline$$1_VASP_publish_child_vasp_credential$0$$t27@0)) 0)) (=> (and (and (and (= (seq.len (|p#$Mutation_16749| inline$$1_VASP_publish_child_vasp_credential$0$$t28@0)) 0) (= inline$$1_VASP_publish_child_vasp_credential$0$$t11@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t12@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t13@0 (|$addr#$signer| _$t0@@1)))) (and (and (= _$t0@@1 _$t0@@1) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_VASP_publish_child_vasp_credential$0$$t14@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_VASP_publish_child_vasp_credential$0$$t15@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@3) inline$$1_VASP_publish_child_vasp_credential$0$$t14@0)) 5))))))) (and (=> (= (ControlFlow 0 249455) 250368) inline$$1_VASP_publish_child_vasp_credential$0$anon27_Then_correct) (=> (= (ControlFlow 0 249455) 249495) inline$$1_VASP_publish_child_vasp_credential$0$anon27_Else_correct))))))
(let ((anon30_Else_correct@@0  (=> (not $abort_flag@0@@1) (=> (and (and (= $t14@@1 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= $t15@@1 (|$addr#$signer| _$t0@@1))) (and (= $t16@@0 (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 250372) 249455))) inline$$1_VASP_publish_child_vasp_credential$0$anon0_correct))))
(let ((inline$$1_Roles_new_child_vasp_role$0$L2_correct  (=> (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (=> (= (ControlFlow 0 248257) 264196) anon30_Then_correct@@0) (=> (= (ControlFlow 0 248257) 250372) anon30_Else_correct@@0))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon9_Then_correct  (=> inline$$1_Roles_new_child_vasp_role$0$$t9@0 (=> (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (= 6 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (= inline$$1_Roles_new_child_vasp_role$0$$t6@0 inline$$1_Roles_new_child_vasp_role$0$$t6@0) (= (ControlFlow 0 248251) 248257))) inline$$1_Roles_new_child_vasp_role$0$L2_correct))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon8_Then_correct  (=> (and (and inline$$1_Roles_new_child_vasp_role$0$$t5@0 (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) (= 5 inline$$1_Roles_new_child_vasp_role$0$$t6@0)) (and (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) 5)) (= 3 inline$$1_Roles_new_child_vasp_role$0$$t6@0)))) (and (= inline$$1_Roles_new_child_vasp_role$0$$t6@0 inline$$1_Roles_new_child_vasp_role$0$$t6@0) (= (ControlFlow 0 248309) 248257))) inline$$1_Roles_new_child_vasp_role$0$L2_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon7_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (and (and (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory@2) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))) 6) (= $1_Roles_RoleId_$memory@3 $1_Roles_RoleId_$memory@2)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 248209) 264196) anon30_Then_correct@@0) (=> (= (ControlFlow 0 248209) 250372) anon30_Else_correct@@0))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon10_Else_correct  (=> (and (and (not |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1|) (= $1_Roles_RoleId_$memory@1 ($Memory_141115 (|Store__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) false) (|contents#$Memory_141115| $1_Roles_RoleId_$memory)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@1) (= (ControlFlow 0 248183) 248209))) inline$$1_Roles_new_child_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon10_Then_correct  (=> (and (and |inline$$1_Roles_new_child_vasp_role$0$$temp_0'bool'@1| (= $1_Roles_RoleId_$memory@0 ($Memory_141115 (|Store__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) true) (|Store__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1) |inline$$1_Roles_new_child_vasp_role$0$$temp_0'$1_Roles_RoleId'@1|)))) (and (= $1_Roles_RoleId_$memory@2 $1_Roles_RoleId_$memory@0) (= (ControlFlow 0 248223) 248209))) inline$$1_Roles_new_child_vasp_role$0$anon7_correct)))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon9_Else_correct  (=> (not inline$$1_Roles_new_child_vasp_role$0$$t9@0) (and (=> (= (ControlFlow 0 248169) 248223) inline$$1_Roles_new_child_vasp_role$0$anon10_Then_correct) (=> (= (ControlFlow 0 248169) 248183) inline$$1_Roles_new_child_vasp_role$0$anon10_Else_correct)))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon8_Else_correct  (=> (and (not inline$$1_Roles_new_child_vasp_role$0$$t5@0) (|$IsValid'u64'| 6)) (=> (and (and (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1)) (=> (= 6 0) (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 173345816))) (and (=> (= 6 1) (= inline$$1_Roles_new_child_vasp_role$0$$t8@0 186537453)) (= inline$$1_Roles_new_child_vasp_role$0$$t9@0 (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) (|$addr#$signer| inline$$1_DiemAccount_create_signer$0$signer@1))))) (and (=> (= (ControlFlow 0 248163) 248251) inline$$1_Roles_new_child_vasp_role$0$anon9_Then_correct) (=> (= (ControlFlow 0 248163) 248169) inline$$1_Roles_new_child_vasp_role$0$anon9_Else_correct))))))
(let ((inline$$1_Roles_new_child_vasp_role$0$anon0_correct  (=> (and (= inline$$1_Roles_new_child_vasp_role$0$$t2@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_Roles_new_child_vasp_role$0$$t3@0 (|$addr#$signer| _$t0@@1))) (=> (and (and (= _$t0@@1 _$t0@@1) (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1)) (and (= inline$$1_Roles_new_child_vasp_role$0$$t4@0 (|$addr#$signer| _$t0@@1)) (= inline$$1_Roles_new_child_vasp_role$0$$t5@0  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) inline$$1_Roles_new_child_vasp_role$0$$t4@0)) 5)))))) (and (=> (= (ControlFlow 0 248097) 248309) inline$$1_Roles_new_child_vasp_role$0$anon8_Then_correct) (=> (= (ControlFlow 0 248097) 248163) inline$$1_Roles_new_child_vasp_role$0$anon8_Else_correct))))))
(let ((anon29_Else_correct@@0  (=> (not false) (=> (and (and (= inline$$1_DiemAccount_create_signer$0$signer@1 inline$$1_DiemAccount_create_signer$0$signer@1) (= $t12@@1 (|$addr#$signer| _$t0@@1))) (and (= $t13@@1 (|$addr#$signer| _$t0@@1)) (= (ControlFlow 0 248313) 248097))) inline$$1_Roles_new_child_vasp_role$0$anon0_correct))))
(let ((anon29_Then_correct@@0 true))
(let ((inline$$1_DiemAccount_create_signer$0$anon0_correct  (=> (= inline$$1_DiemAccount_create_signer$0$signer@1 ($signer _$t1@@1)) (and (=> (= (ControlFlow 0 247560) 264210) anon29_Then_correct@@0) (=> (= (ControlFlow 0 247560) 248313) anon29_Else_correct@@0)))))
(let ((anon28_Else_correct@@0  (=> (and (not $t9@@1) (= (ControlFlow 0 247566) 247560)) inline$$1_DiemAccount_create_signer$0$anon0_correct)))
(let ((anon0$1_correct@@1  (=> (and (forall ((addr@@4 Int) ) (!  (=> (|$IsValid'address'| addr@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143212| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@4) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@4) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@4)) 4))))
 :qid |RecoveryAddresscvc4bpl.15976:20|
 :skolemid |235|
)) (forall ((addr@@5 Int) ) (!  (=> (|$IsValid'address'| addr@@5) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144065| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@5) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@5) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@5)) 3))))
 :qid |RecoveryAddresscvc4bpl.15980:20|
 :skolemid |236|
))) (=> (and (and (and (and (and (and (forall ((addr@@6 Int) ) (!  (=> (|$IsValid'address'| addr@@6) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144065| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@6) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@6) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@6)) 3))))
 :qid |RecoveryAddresscvc4bpl.15984:20|
 :skolemid |237|
)) (forall ((addr@@7 Int) ) (!  (=> (|$IsValid'address'| addr@@7) (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_144065| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@7) (not (= (seq.len (|$vec#$1_Option_Option'$1_ValidatorConfig_Config'| (|$config#$1_ValidatorConfig_ValidatorConfig| (|Select__T@[Int]$1_ValidatorConfig_ValidatorConfig_| (|contents#$Memory_144065| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@7)))) 0))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@7) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@7)) 3))))
 :qid |RecoveryAddresscvc4bpl.15988:20|
 :skolemid |238|
))) (and (forall ((mint_cap_owner Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155433| |$1_Diem_MintCapability'$1_XUS_XUS'_$memory|) mint_cap_owner) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) mint_cap_owner) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) mint_cap_owner)) 1))))
 :qid |RecoveryAddresscvc4bpl.15992:21|
 :skolemid |239|
)) (forall ((mint_cap_owner@@0 Int) ) (!  (=> (|$IsValid'address'| mint_cap_owner@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155520| |$1_Diem_MintCapability'$1_XDX_XDX'_$memory|) mint_cap_owner@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) mint_cap_owner@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) mint_cap_owner@@0)) 1))))
 :qid |RecoveryAddresscvc4bpl.15992:268|
 :skolemid |240|
)))) (and (and (forall ((addr1 Int) ) (!  (=> (|$IsValid'address'| addr1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150713| |$1_Diem_BurnCapability'$1_XUS_XUS'_$memory|) addr1) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr1)) 1))))
 :qid |RecoveryAddresscvc4bpl.16000:21|
 :skolemid |241|
)) (forall ((addr1@@0 Int) ) (!  (=> (|$IsValid'address'| addr1@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_150800| |$1_Diem_BurnCapability'$1_XDX_XDX'_$memory|) addr1@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@0) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@0)) 1))))
 :qid |RecoveryAddresscvc4bpl.16000:231|
 :skolemid |242|
))) (and (forall ((addr1@@1 Int) ) (!  (=> (|$IsValid'address'| addr1@@1) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_156102| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr1@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_155693| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr1@@1)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@1) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@1)) 2))))
 :qid |RecoveryAddresscvc4bpl.16004:21|
 :skolemid |243|
)) (forall ((addr1@@2 Int) ) (!  (=> (|$IsValid'address'| addr1@@2) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_156201| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr1@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_155784| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr1@@2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@2) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@2)) 2))))
 :qid |RecoveryAddresscvc4bpl.16004:292|
 :skolemid |244|
))))) (and (and (and (forall ((addr@@8 Int) ) (!  (=> (|$IsValid'address'| addr@@8) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155693| |$1_Diem_Preburn'$1_XUS_XUS'_$memory|) addr@@8) (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc4bpl.16008:22|
 :skolemid |245|
)) (forall ((addr@@9 Int) ) (!  (=> (|$IsValid'address'| addr@@9) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155784| |$1_Diem_Preburn'$1_XDX_XDX'_$memory|) addr@@9) (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc4bpl.16008:222|
 :skolemid |246|
))) (forall ((addr@@10 Int) ) (!  (=> (|$IsValid'address'| addr@@10) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_155875| |$1_Diem_Preburn'#0'_$memory|) addr@@10) (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc4bpl.16008:423|
 :skolemid |247|
))) (and (and (forall ((addr@@11 Int) ) (!  (=> (|$IsValid'address'| addr@@11) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_156102| |$1_Diem_PreburnQueue'$1_XUS_XUS'_$memory|) addr@@11) (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc4bpl.16012:22|
 :skolemid |248|
)) (forall ((addr@@12 Int) ) (!  (=> (|$IsValid'address'| addr@@12) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_156201| |$1_Diem_PreburnQueue'$1_XDX_XDX'_$memory|) addr@@12) (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc4bpl.16012:227|
 :skolemid |249|
))) (forall ((addr@@13 Int) ) (!  (=> (|$IsValid'address'| addr@@13) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_156300| |$1_Diem_PreburnQueue'#0'_$memory|) addr@@13) (|Select__T@[Int]Bool_| (|domain#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) 173345816)))
 :qid |RecoveryAddresscvc4bpl.16012:433|
 :skolemid |250|
))))) (and (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) 173345816)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) 173345816))) (and (forall ((child_addr@@1 Int) ) (!  (=> (|$IsValid'address'| child_addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) child_addr@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) (|$parent_vasp_addr#$1_VASP_ChildVASP| (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) child_addr@@1)))))
 :qid |RecoveryAddresscvc4bpl.16028:20|
 :skolemid |251|
)) (forall ((addr1@@3 Int) ) (!  (=> (|$IsValid'address'| addr1@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_175640| $1_DualAttestation_Credential_$memory) addr1@@3) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@3)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@3) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr1@@3)) 2)))))
 :qid |RecoveryAddresscvc4bpl.16032:20|
 :skolemid |252|
)))) (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) 173345816) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) 173345816))))) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (and (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) 186537453) (not (|$is_frozen#$1_AccountFreezing_FreezingBit| (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) 186537453)))))) (and (forall ((addr@@14 Int) ) (!  (=> (|$IsValid'address'| addr@@14) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@14) (or (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@14)))) 0) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@14)))) 0)) (= addr@@14 (|$account_address#$1_DiemAccount_KeyRotationCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@14))) 0)))))))
 :qid |RecoveryAddresscvc4bpl.16044:20|
 :skolemid |253|
)) (forall ((addr@@15 Int) ) (!  (=> (|$IsValid'address'| addr@@15) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@15) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@15) (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@15)))) 0)) (and (not (= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@15)))) 0)) (= addr@@15 (|$account_address#$1_DiemAccount_WithdrawCapability| (seq.nth (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@15))) 0)))))))
 :qid |RecoveryAddresscvc4bpl.16048:20|
 :skolemid |254|
))))) (and (and (and (=> (|Select__T@[Int]Bool_| (|domain#$Memory_140621| $1_DiemTimestamp_CurrentTimeMicroseconds_$memory) 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) 173345816)) (forall ((addr@@16 Int) ) (!  (=> (|$IsValid'address'| addr@@16) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@16) (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@16)))
 :qid |RecoveryAddresscvc4bpl.16056:20|
 :skolemid |255|
))) (and (forall ((addr@@17 Int) ) (!  (=> (|$IsValid'address'| addr@@17) (=> (and (= addr@@17 173345816) (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@17)) (|Select__T@[Int]Bool_| (|domain#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) addr@@17)))
 :qid |RecoveryAddresscvc4bpl.16060:20|
 :skolemid |256|
)) (forall ((addr@@18 Int) ) (!  (=> (|$IsValid'address'| addr@@18) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_167272| $1_VASPDomain_VASPDomainManager_$memory) addr@@18) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@18) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@18)) 1))))
 :qid |RecoveryAddresscvc4bpl.16064:20|
 :skolemid |257|
)))) (and (and (forall ((addr@@19 Int) ) (!  (=> (|$IsValid'address'| addr@@19) (=> (or (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@19) (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@19)) (or (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@19)) 5)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@19)) 6))) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@19) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@19)) 2)))))
 :qid |RecoveryAddresscvc4bpl.16068:20|
 :skolemid |258|
)) (forall ((addr@@20 Int) ) (!  (=> (|$IsValid'address'| addr@@20) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_179126| $1_DesignatedDealer_Dealer_$memory) addr@@20) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@20) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@20)) 2))))
 :qid |RecoveryAddresscvc4bpl.16072:20|
 :skolemid |259|
))) (and (forall ((addr@@21 Int) ) (!  (=> (|$IsValid'address'| addr@@21) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_175640| $1_DualAttestation_Credential_$memory) addr@@21) (or (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@21)) 2)) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@21) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@21)) 5)))))
 :qid |RecoveryAddresscvc4bpl.16076:20|
 :skolemid |260|
)) (forall ((addr@@22 Int) ) (!  (=> (|$IsValid'address'| addr@@22) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@22) (|Select__T@[Int]Bool_| (|domain#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) addr@@22)))
 :qid |RecoveryAddresscvc4bpl.16080:20|
 :skolemid |261|
))))))) (and (and (and (and (and (forall ((addr@@23 Int) ) (!  (=> (|$IsValid'address'| addr@@23) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) addr@@23) (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@23)))
 :qid |RecoveryAddresscvc4bpl.16084:22|
 :skolemid |262|
)) (forall ((addr@@24 Int) ) (!  (=> (|$IsValid'address'| addr@@24) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) addr@@24) (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@24)))
 :qid |RecoveryAddresscvc4bpl.16084:218|
 :skolemid |263|
))) (forall ((addr@@25 Int) ) (!  (=> (|$IsValid'address'| addr@@25) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) addr@@25) (|Select__T@[Int]Bool_| (|domain#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) addr@@25)))
 :qid |RecoveryAddresscvc4bpl.16084:415|
 :skolemid |264|
))) (and (and (forall ((addr@@26 Int) ) (!  (=> (|$IsValid'address'| addr@@26) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_144065| $1_ValidatorConfig_ValidatorConfig_$memory) addr@@26) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@26) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@26)) 3))))
 :qid |RecoveryAddresscvc4bpl.16088:20|
 :skolemid |265|
)) (forall ((addr@@27 Int) ) (!  (=> (|$IsValid'address'| addr@@27) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_143212| $1_ValidatorOperatorConfig_ValidatorOperatorConfig_$memory) addr@@27) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@27) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@27)) 4))))
 :qid |RecoveryAddresscvc4bpl.16092:20|
 :skolemid |266|
))) (and (forall ((addr@@28 Int) ) (!  (=> (|$IsValid'address'| addr@@28) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168189| $1_VASP_ParentVASP_$memory) addr@@28) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@28) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@28)) 5))))
 :qid |RecoveryAddresscvc4bpl.16096:20|
 :skolemid |267|
)) (forall ((addr@@29 Int) ) (!  (=> (|$IsValid'address'| addr@@29) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_168125| $1_VASP_ChildVASP_$memory) addr@@29) (and (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) addr@@29) (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) addr@@29)) 6))))
 :qid |RecoveryAddresscvc4bpl.16100:20|
 :skolemid |268|
))))) (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0@@1)) (|$IsValid'address'| _$t1@@1)) (and (|$IsValid'vec'u8''| _$t2) (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $a_0@@6)))
(|$IsValid'$1_Roles_RoleId'| $rsc@@6))
 :qid |RecoveryAddresscvc4bpl.16115:20|
 :skolemid |269|
 :pattern ( (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $a_0@@6))
)))) (and (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@7)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XUS_XUS''| $rsc@@7) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@7)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XUS_XUS'| $rsc@@7) 10000000000))))
 :qid |RecoveryAddresscvc4bpl.16119:20|
 :skolemid |270|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XUS_XUS'_| (|contents#$Memory_150233| |$1_Diem_CurrencyInfo'$1_XUS_XUS'_$memory|) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@8)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'$1_XDX_XDX''| $rsc@@8) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@8)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'$1_XDX_XDX'| $rsc@@8) 10000000000))))
 :qid |RecoveryAddresscvc4bpl.16123:20|
 :skolemid |271|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'$1_XDX_XDX'_| (|contents#$Memory_150297| |$1_Diem_CurrencyInfo'$1_XDX_XDX'_$memory|) $a_0@@8))
))) (and (forall (($a_0@@9 Int) ) (! (let (($rsc@@9 (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@9)))
 (and (|$IsValid'$1_Diem_CurrencyInfo'#0''| $rsc@@9) (and (< 0 (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@9)) (<= (|$scaling_factor#$1_Diem_CurrencyInfo'#0'| $rsc@@9) 10000000000))))
 :qid |RecoveryAddresscvc4bpl.16127:20|
 :skolemid |272|
 :pattern ( (|Select__T@[Int]$1_Diem_CurrencyInfo'#0'_| (|contents#$Memory_150433| |$1_Diem_CurrencyInfo'#0'_$memory|) $a_0@@9))
)) (forall (($a_0@@10 Int) ) (! (let (($rsc@@10 (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) $a_0@@10)))
(|$IsValid'$1_VASP_ChildVASP'| $rsc@@10))
 :qid |RecoveryAddresscvc4bpl.16131:20|
 :skolemid |273|
 :pattern ( (|Select__T@[Int]$1_VASP_ChildVASP_| (|contents#$Memory_168125| $1_VASP_ChildVASP_$memory) $a_0@@10))
)))))) (and (and (and (and (forall (($a_0@@11 Int) ) (! (let (($rsc@@11 (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $a_0@@11)))
(|$IsValid'$1_VASP_ParentVASP'| $rsc@@11))
 :qid |RecoveryAddresscvc4bpl.16135:20|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]$1_VASP_ParentVASP_| (|contents#$Memory_168189| $1_VASP_ParentVASP_$memory) $a_0@@11))
)) (forall (($a_0@@12 Int) ) (! (let (($rsc@@12 (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $a_0@@12)))
(|$IsValid'$1_AccountFreezing_FreezingBit'| $rsc@@12))
 :qid |RecoveryAddresscvc4bpl.16139:20|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]$1_AccountFreezing_FreezingBit_| (|contents#$Memory_179374| $1_AccountFreezing_FreezingBit_$memory) $a_0@@12))
))) (and (forall (($a_0@@13 Int) ) (! (let (($rsc@@13 (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) $a_0@@13)))
 (and (|$IsValid'$1_DiemAccount_DiemAccount'| $rsc@@13) (and (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_WithdrawCapability'| (|$withdraw_capability#$1_DiemAccount_DiemAccount| $rsc@@13))) 1) (<= (seq.len (|$vec#$1_Option_Option'$1_DiemAccount_KeyRotationCapability'| (|$key_rotation_capability#$1_DiemAccount_DiemAccount| $rsc@@13))) 1))))
 :qid |RecoveryAddresscvc4bpl.16143:20|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_DiemAccount_| (|contents#$Memory_180324| $1_DiemAccount_DiemAccount_$memory) $a_0@@13))
)) (forall (($a_0@@14 Int) ) (! (let (($rsc@@14 (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@14)))
(|$IsValid'$1_DiemAccount_AccountOperationsCapability'| $rsc@@14))
 :qid |RecoveryAddresscvc4bpl.16147:20|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_AccountOperationsCapability_| (|contents#$Memory_181217| $1_DiemAccount_AccountOperationsCapability_$memory) $a_0@@14))
)))) (and (and (forall (($a_0@@15 Int) ) (! (let (($rsc@@15 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@15)))
(|$IsValid'$1_DiemAccount_Balance'$1_XUS_XUS''| $rsc@@15))
 :qid |RecoveryAddresscvc4bpl.16151:20|
 :skolemid |278|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XUS_XUS'_| (|contents#$Memory_181352| |$1_DiemAccount_Balance'$1_XUS_XUS'_$memory|) $a_0@@15))
)) (forall (($a_0@@16 Int) ) (! (let (($rsc@@16 (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@16)))
(|$IsValid'$1_DiemAccount_Balance'$1_XDX_XDX''| $rsc@@16))
 :qid |RecoveryAddresscvc4bpl.16155:20|
 :skolemid |279|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'$1_XDX_XDX'_| (|contents#$Memory_181443| |$1_DiemAccount_Balance'$1_XDX_XDX'_$memory|) $a_0@@16))
))) (and (forall (($a_0@@17 Int) ) (! (let (($rsc@@17 (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@17)))
(|$IsValid'$1_DiemAccount_Balance'#0''| $rsc@@17))
 :qid |RecoveryAddresscvc4bpl.16159:20|
 :skolemid |280|
 :pattern ( (|Select__T@[Int]$1_DiemAccount_Balance'#0'_| (|contents#$Memory_181534| |$1_DiemAccount_Balance'#0'_$memory|) $a_0@@17))
)) (= $t5@@0 (|$addr#$signer| _$t0@@1))))) (and (and (and (= $t6@@0 (|$addr#$signer| _$t0@@1)) (= $t7@@0 (|$addr#$signer| _$t0@@1))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@1 _$t1@@1))) (and (and (= _$t2 _$t2) (= _$t3 _$t3)) (and (= $t8@@0 (|$addr#$signer| _$t0@@1)) (= $t9@@1  (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_141115| $1_Roles_RoleId_$memory) $t8@@0)) (not (= (|$role_id#$1_Roles_RoleId| (|Select__T@[Int]$1_Roles_RoleId_| (|contents#$Memory_141115| $1_Roles_RoleId_$memory) $t8@@0)) 5)))))))))) (and (=> (= (ControlFlow 0 247522) 264262) anon28_Then_correct@@0) (=> (= (ControlFlow 0 247522) 247566) anon28_Else_correct@@0))))))
(let ((inline$$InitEventStore$0$anon0_correct@@1  (=> (and (and (= (|counter#$EventStore| $es) 0) (forall ((handle@@6 T@$1_Event_EventHandle) ) (! (let ((stream@@6 (|Select__T@[$1_Event_EventHandle]Multiset_102809_| (|streams#$EventStore| $es) handle@@6)))
 (and (= (|l#Multiset_102809| stream@@6) 0) (forall ((v@@52 T@$EventRep) ) (! (= (|Select__T@[$EventRep]Int_| (|v#Multiset_102809| stream@@6) v@@52) 0)
 :qid |RecoveryAddresscvc4bpl.129:13|
 :skolemid |2|
))))
 :qid |RecoveryAddresscvc4bpl.3263:13|
 :skolemid |89|
))) (= (ControlFlow 0 246098) 247522)) anon0$1_correct@@1)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 429646) 246098) inline$$InitEventStore$0$anon0_correct@@1)))
anon0_correct@@1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
